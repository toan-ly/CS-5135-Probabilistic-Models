## Multivariable Gaussian using Maximum Likelihood
$$p(x_i|\mu, \Sigma)=\frac{e^{-\frac{1}{2} (x_i-\mu)^T \Sigma^{-1} (x_i-\mu)}}{\sqrt{det(2\pi\Sigma)}}$$

- $p(X|\mu, \Sigma)=p(x_1,...,x_n|\mu, \Sigma)=\prod_i p(x_i|\mu,\Sigma)$ (from i.i.d)
- $log \, p(X|\mu, \Sigma)=\sum_i log \, p(x_i|\mu, \Sigma)$
- $\ell(\mu, \Sigma) = \sum_i^n log \, p(x_i|\mu, \Sigma) = -\frac{1}{2}\sum_i^n (x_i-\mu)^T \Sigma^{-1}(x_i-\mu) - \frac{n}{2} log\, det(2\pi\Sigma)$
- Find **optimal** $\mu$:
$$\nabla_\mu \ell(\mu, \Sigma)=-\frac{1}{2}\sum_i^n (-2)\Sigma^{-1}(x_i-\mu)=\sum_i^n \Sigma^{-1}(x_i-\mu)=0$$
$$\mu=\frac{1}{n}\sum_i^n x_i$$
- Find **optimal** $\Sigma$:
    - Rewrite $\ell$:
        - $\sum_i x_i^TAx_i=trace\, A(\sum x_i^Tx_i)$
        - $trace(A)=\sum_ia_{ii}$
        $$\ell=-\frac{1}{2}trace(\Sigma^{-1}\underbrace{\sum_i^n(x_i-\mu)(x_i-\mu)^T}_\text{M})+\frac{n}{2}log \, det(2\pi\Sigma^{-1})$$

        $\ell=-\frac{1}{2}\text{trace}(\Sigma^{-1}M)+\frac{n}{2}log\, det(2\pi\Sigma^{-1})$
    - $\nabla_A tr(AB)=B^T; \, \nabla_Adet \, log|A|=$
    - $\nabla_{\Sigma^{-1}}\ell(\mu, \Sigma)=-\frac{1}{2}M+\frac{n}{2}\Sigma=0$
$$\Sigma=\frac{1}{n}\sum_i^n(x_i-\mu)(x_i-\mu)^T$$

## Logistic Regression
For a binary variable y and a continuous variable x,
$$p(y=1|x, \beta _0, \beta_1)=\sigma(\beta_0+\beta_1x)=\frac{1}{1+e^{-(\beta_0+\beta_1x)}}$$
- $\beta_0,\beta_1$ are parameters
- Nonlinear, sigmoid function $\sigma(z)=\frac{1}{1+e^{-z}}$

Alternatively,
$$log\frac{p}{1-p}=\beta_0+\beta_1x$$
- p/(1-p) is the odds of event y = 1 and x = x_i [0, $\infty$]
- log odds is called logit function $[-\infty, \infty]$

Logistic regression is a generalization of regression to predcit categorical variables

### Likelihood
$$L(\theta|x, y)=f(x, y|\theta)$$
$p(y|x, \beta)=\sigma(\beta_0+\beta_1x)$
$$\underbrace{f(y, x|\theta)}_{Joint}=\underbrace{f(y|x, \theta)}_{Conditional}\times \underbrace{f(x|\theta)}_{Marginal}$$

### Conditional likelihood
$$L(\theta;y|x)=p(y|x)=f(y|x;\theta)=\prod_i f(y_i|x_i;\theta)$$

#### Log Conditional Likelihood
$$\ell=\sum_i logf(y_i|x_i;\theta)=\sum_{i;y_i=1}log \, p_i+\sum_{i;y_i=0}log\, (1-p_i)$$

$$\frac{\partial\ell}{\partial\beta_j}=\sum_{i;y_i=1}\frac{\partial}{\partial\beta_j}log\ p_i+\sum_{i;y_i=0}\frac{\partial}{\partial\beta_j}log\ (1-p_i)$$

$\frac{\partial}{\partial\beta_j}log\ p=\frac{1}{p}\frac{\partial}{\partial\beta_j}$,\
$\frac{\partial}{\partial\beta_j}log\ (1-p)=-\frac{1}{1-p}\frac{\partial}{\partial\beta_j}$

After a bunch of transformations:

$\frac{\partial}{\partial\beta_j}p=p(1-p)x_j$

Therefore,

$\frac{\partial}{\partial\beta_j}log\ p=(1-p)x_j$,\
$\frac{\partial}{\partial\beta_j}log\ (1-p)=-px_j$

$$\frac{\partial\ell}{\partial\beta_j}=\sum_{i;y_i=1}(1-p_i)x_{ij}+\sum_{i;y_i=0}-p_ix_{ij}=\sum_i(y_i-p_i)x_{ij}$$

For every $\beta_j$, we get 1 equation. It's not possible to solve for $\beta_j$ by equating the above equation to 0 => Gradient Descent or Newton's method

## Newton's method
- Numerical optimization technique used to find parameter vector **w** that minimizes objective function $E(\mathbf{w})$
$$\mathbf{w}^*=argmin_\mathbf{w}E(\mathbf{w})$$
- Iterative approach:
    - Initial estimate $\mathbf{w_1}$ (often random vector)
    - Compute $\nabla E(w_1)$ and $\nabla^2E(w_1)$
    - $\mathbf{w_i}\leftarrow\mathbf{w_{i-1}}-\frac{\nabla E(w_{i-1})}{\nabla^2E(w_{i-1})}$
    - Stops after maxIter or $\mathbf{w} \, \text{or}\, \ell$ converges

### Taylor series
$$f(x)=f(a)+\frac{f'(a)}{1!}(x-a)+\frac{f''(a)}{2!}(x-a)^2+\frac{f'''(a)}{3!}(x-a)^3+...$$

Let $F(w)=\nabla E(w)$. We can take Taylor expansion at the optimum solution $\mathbf{w^*}$:
$$F(\mathbf{w^*})=F(\mathbf{w})+(\mathbf{w^*}-\mathbf{w})\nabla F(\mathbf{w})+\text{neligible terms}$$
Since $F(w^*)=\nabla E(w^*)=0$
$$0=F(w)+(w^*-w)\nabla F(w) \rightarrow  w^*=w-\frac{F(w)}{\nabla F(w)}=w-\frac{\nabla E(w)}{\nabla^2 E(w)}$$