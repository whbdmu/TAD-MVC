clear
clc
addpath(genpath('./'));
load("MSRC_v1.mat");
%% load data  0.9381    0.8799    0.9381    0.8789    0.8735    0.8844    0.8593    2.7988
Y = truth;
k = length(unique(Y));
n = length(Y);
X{1} = msr1';
X{2} = msr3';
X{3} = msr4';
X{4} = msr5';
for iv = 1:length(X)
    X1 = X{iv};
    X{iv} = NormalizeFea(X1',0);
end

m = 16;
h = 15;
max = 50;
[U, A, Z,obj,acc] = TAD(X, k, m,Y,max,h);
[res] = myNMIACCwithmean(U,Y,k); %[ACC nmi Purity Fscore Precision Recall AR Entropy];