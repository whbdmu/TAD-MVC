# ACM MM-2025-Scalable Multi-view Clustering based on Tight Anchor Distribution
#If you have any questions please contact (huibing.wang@dlmu.edu.cn) and (cyw@dlmu.edu.cn).
## Introduction
In this paper, a new approach to Scalable Multi-view Clustering based on Tight Anchor Distribution (TAD-MVC) is proposed. Unlike existing algorithms, TAD-MVC takes into account that real-world data are often in nonlinear epidemics, so it is reasonable for anchors of the same category to be spatially consistently associated. Therefore, TAD-MVC digs deeper into the spatial structure of anchors in nonlinear epidemics with the aim of tightly associating anchors of the same category, while ensuring that anchors can be uniformly generated in data clusters to improve the representativeness and discriminative properties of anchors. In addition, TAD-MVC is not affected by any hyperparameters and can solve problems in real applications under linear complexity, which has been proved by a large number of experiments.

<img width="614" height="413" alt="image" src="https://github.com/user-attachments/assets/3368d1fb-3779-45f7-a879-99d75f8d9bf0" />

## Dependencies
* OS: Windows 10
* Matlab2020b
* Related measure can be obtained in `.\tools`.
##  Citation
If any part of our paper and repository is helpful to your work, please generously cite with:

```
@inproceedings{10.1145/3746027.3755071,
author = {Chen, Yawei and Wang, Huibing and Yao, Mingze and Peng, Jinjia and Jiang, Guangqi and Zhang, Jiqing},
title = {Scalable Multi-view Clustering based on Tight Anchor Distribution},
year = {2025},
isbn = {9798400720352},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3746027.3755071},
doi = {10.1145/3746027.3755071},
abstract = {Multi-view clustering based on anchor graph has gained a lot of attention because of its ability to handle large-scale datasets in linear time. However, the existing methods learn anchors from linear space, ignore the nonlinear manifold characteristics of the original data, and fail to fully consider the geometric topological relationship of anchors in the space, which limits the representability of the anchor graph and makes these algorithms unable to deal with the complex data distribution in real scenarios. In addition, most methods involve the control of multiple hyper-parameters, which often require a significant amount of time for tuning, resulting in algorithms that are not as flexible and scalable as they could be. To address the above problems, this paper proposes Scalable multi-view clustering based on tight anchor distribution (TAD-MVC), where TAD-MVC closely associates neighboring anchors together and learns the degree of closeness between all anchors. In particular, TAD-MVC adaptively evaluates the tightness between anchors and spreads this tight structure with the aim of constraining anchors with a high degree of similarity to the same cluster, while anchors in different clusters will exclude each other as much as possible in order to learn anchors that are sufficiently representative. Experimental results on numerous datasets significantly outperforms the state-of-the-art methods. The code is available at https://github.com/whbdmu/TAD-MVC.},
booktitle = {Proceedings of the 33rd ACM International Conference on Multimedia},
pages = {7739–7747},
numpages = {9},
keywords = {multi-scale anchor graph learning, multi-view clustering, nonlinear manifold features},
location = {Dublin, Ireland},
series = {MM '25}
}
