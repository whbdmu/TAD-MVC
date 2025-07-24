function [UU, A, Z,obj1,acc] = TAD(X, k, m,Y,max,l)
lambda1 = 1e-2;
lambda2 = 1e2;
num_view = length(X);
n = size(X{1},1);
Z = zeros(m, n);
ob = 0;
for i = 1:num_view
    d(i) = size(X{i}, 1);
    alpha(i) = 1;
    X{i} = X{i}';
    W{i} = zeros(d(i), l);
    ob = norm(X{i},'fro')^2 + ob;
end
A = zeros(l, m);
Z(:, 1 : m) = eye(m);
S = zeros(m, m);
for iter = 1 : max
    %----updata W---------%
    parfor i = 1 : num_view
        [U, ~, V] = svd(X{i} * Z' * A', 'econ');
        W{i} = U * V';
    end
    clear U V
    %-----updata Z---------%
    WW = (abs(S)+abs(S'))/2;
    L_S = diag(sum(WW))-WW;
    H = 2 * (sum(alpha)^2.* eye(m) + lambda2*L_S );
    %     H = (H + H') / 2;
    options = optimset( 'Algorithm','interior-point-convex','Display','off'); % Algorithm é»è®€äž? interior-point-convex
    for j = 1 : n
        ff = 0;
        for i = 1 : num_view
            ff =  ff - 2 * X{i}(:, j)' * W{i} * A;
        end
        Z(:, j) = quadprog(H, ff',[],[],ones(1, m),1,zeros(m, 1),ones(m, 1),[], options);
    end
    % A step
    temp = zeros(l, m);
    for i = 1 : num_view
        temp = temp + W{i}' * X{i} * Z';
    end
    [U, ~, V] = svd(temp + A*L_S, 'econ');
    A = U * V';
    clear U V temp
    % S step
    sum_A = sum(A.^2, 1);
    Da = bsxfun(@plus, sum_A, bsxfun(@plus, sum_A', -2 * (A' * A)));
    Da = Da - diag(diag(Da));
    sum_Z = sum(Z.^2,2);
    Dz = bsxfun(@plus,sum_Z,bsxfun(@plus,sum_Z',-2 * (Z*Z')));
    Dz = Dz - diag(diag(Dz));
    S = (lambda1*Da + lambda2*Dz)./(2*lambda1);
    S = S - diag(diag(S));
    r(num_view) = 0;
    for i = 1:num_view
        r(i) = norm(X{i} - W{i}*A*Z,'fro');
    end
    for i = 1:num_view
        alpha(i) = 1;
    end
    [UU, ~, ~]=svd(Z', 'econ');
    res = myNMIACCwithmean(UU,Y,k);
%     iter
        % -------- obj ------------ %
        obj(iter) = norm(UU,'fro')^2;
        acc(iter) = res(1);
        if iter>2
           obj1(iter-1) = (abs(obj(iter)-obj(iter-1)))/obj(iter-1);
        end
        if iter > 40 && (abs(obj(iter)-obj(iter-1)))/obj(iter-1)<1e-5
            iter
        end
end
end


