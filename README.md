# ACM MM-2025-Scalable Multi-view Clustering based on Tight Anchor Distribution
#If you have any questions please contact (huibing.wang@dlmu.edu.cn) and (cyw@dlmu.edu.cn).
## Introduction
In this paper, a new approach to Scalable Multi-view Clustering based on Tight Anchor Distribution (TAD-MVC) is proposed. Unlike existing algorithms, TAD-MVC takes into account that real-world data are often in nonlinear epidemics, so it is reasonable for anchors of the same category to be spatially consistently associated. Therefore, TAD-MVC digs deeper into the spatial structure of anchors in nonlinear epidemics with the aim of tightly associating anchors of the same category, while ensuring that anchors can be uniformly generated in data clusters to improve the representativeness and discriminative properties of anchors. In addition, TAD-MVC is not affected by any hyperparameters and can solve problems in real applications under linear complexity, which has
been proved by a large number of experiments.
<img width="614" height="413" alt="image" src="https://github.com/user-attachments/assets/3368d1fb-3779-45f7-a879-99d75f8d9bf0" />
## Dependencies
* OS: Windows 10
* Matlab2020b
* Related measure can be obtained in `.\tools`.
##  Citation
If any part of our paper and repository is helpful to your work, please generously cite with:

```
@misc{chen2024anchorlearningpotentialcluster,
      title={Anchor Learning with Potential Cluster Constraints for Multi-view Clustering}, 
      author={Yawei Chen and Huibing Wang and Jinjia Peng and Yang Wang},
      year={2024},
      eprint={2412.16519},
      archivePrefix={arXiv},
      primaryClass={cs.CV},
      url={https://arxiv.org/abs/2412.16519}, 
}
