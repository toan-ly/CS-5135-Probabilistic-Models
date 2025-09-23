# Gradient Descent
$$w^*=argmin_wE(w)$$

- Starts with initial estimate $w_1$
- Follows negative gradient $-\nabla E$
$$\nabla E=[\frac{\partial E}{\partial w_1}\frac{\partial E}{\partial w_2}...\frac{\partial E}{\partial w_n}]$$
- Estimates $w_2 \leftarrow w_1 - \lambda \nabla E|w_1$
- $w_i \leftarrow w_{i-1} - \lambda \nabla E|w_{i-1}$
- Stops after maxIter or when estimate w converges

## Univariate Gaussian
$$p(x|\mu, \sigma^2)=\mathcal{N}(x|\mu, \sigma^2)=\frac{e^{-(x_i-\mu)^2/2\sigma^2}}{\sqrt{2\pi\sigma^2}} $$

## Multivariate Gaussin
$$p(\bm{x}|\bm{\mu}, \bm{\Sigma^2})=\mathcal{N}(\bm{x}|\bm{\mu}, \bm{\Sigma^2})=\frac{e^{\frac{-1}{2}(\bm{x}-\bm{\mu})^T\Sigma^{-1}(\bm{x-\mu})}}{\sqrt{det(2\pi\bm{\Sigma})}} $$

### Geometric view
- $(\bm{x}-\bm{\mu})^T\Sigma^{-1}(\bm{x-\mu})=(\bm{x}-\bm{\mu})^T\bm{E \Lambda^{-1}E^T}(\bm{x-\mu})=\bm{y^Ty}$

This means Mahalanobis distance equals Euclidean distance after transforming
