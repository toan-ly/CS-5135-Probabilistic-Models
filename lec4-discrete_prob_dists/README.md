## Discrete Prob Distibutions
$$cdf(b)=p(x<=b)=\sum_{x=-\infty}^bp(x)$$

$E(x)=\sum_xxp(x)$\
$E(g(x))=\sum_xg(x)p(x)$

### Properties of Expectations
- 1: $E(aX)=aE(X)$
- 2: $E(\sum_ia_iX_i)=\sum_ia_iE(X_i)$
- 3: $E(\prod_iX_i)=\prod_iE(X_i)$

$\sigma^2=E[(x-\mu)^2]$

### 1. Bernoulli Distribution
$$X \sim Bernoulli(p)$$

$$p(x)=p^x(1-p)^{1-x}, x=0,1$$

$E(x)=p$  
$\sigma^2=p(1-p)$

### 2. Binomial Distribution
n Bernoulli trials
$$X \sim Binomial(n, p)$$
$$p(x)=\binom nxp^x(1-p)^{n-x}, x=0,1,2,...,n$$

$E(x)=np$\
$\sigma^2=np(1-p)$

### 3. Categorical Distribution
More than 2 possible outcomes
$$X \sim Categorical([p_i])$$
$$p(x=i)=p_i \, or \, p(x)=p_1^{[x=1]}...p_k^{[x=k]}$$

### 4. Multinomial Distribution
n Categorical trials
$$X \sim Multinomial(n, [p_i])$$
$$p(x_1, x_2, ..., x_k)=\frac{n!}{x_1!...x_n!}p_1^{x1}...p_k^{x_k}$$

$E(x_i)=np_i$\
$\sigma^2(x_i)=np_i(1-p_i)$
$cov(x, y)=E[(x-E(x))(y-E(y))]$

### 5. Geometric Distribution
Number of failures before first success
$$X \sim Geometric(p_{success})$$
$$p(x)=(1-p)^xp=q^xp$$
$E(x)=\frac{q}{p}$ \
$\sigma^2=\frac{q}{p^2}$

**Memoryless**: $p(x\ge j+k|x\ge j)=p(x\ge k)$

### 6. Negative Binomial Distribution
Number of failures before $r^{th}$ success
$$X \sim NegativeBinomial(r, p)$$
$$p(x)=\binom {x+r-1}{r-1}p^{r-1}(1-p)^xp=\binom {x+r-1}{r-1}p^rq^x$$

$E(x)=\frac{rq}{p}$ \
$\sigma^2=\frac{rq}{p^2}$

### 7. Poisson Distribution
Counts of rare events in given area or volume or time

Used when we're interested in the number of times a certain event occurs over a period
$$X \sim Poisson(p)$$
$$p(x)=lim_{n\rightarrow \infty}\binom nx\frac{\lambda^x}{n}(1-\frac{\lambda}{n})^{n-x}=\frac{\lambda^x}{x!}e^{-\lambda}, x=0,1,..., for \lambda > 0$$


