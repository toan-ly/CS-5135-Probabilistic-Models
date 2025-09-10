## Gamma Distribution
- In case of electronic components
    - few have very short life length
    - many have something close to an avg life length
    - very few have extraordinarily long life length

$$f(x)=\frac{1}{\Gamma(\alpha)\beta^\alpha}x^{\alpha-1}e^{-x/\beta}, x\ge 0$$
where $\Gamma(\alpha)=\int_0^\infty x^{\alpha-1}e^{-x}dx$
- Denominator is normalizing factor

=> Exponential dist is a special case of Gamma dist (alpha = 1)

$E(x)=\int_0^\infty x\frac{1}{\Gamma(\alpha)\beta^\alpha}x^{\alpha-1}e^{-x/\beta}dx=\alpha\beta$

$\sigma^2=\alpha(\alpha+1)\beta^2-\alpha^2\beta^2=\alpha\beta^2$

## Inverse Gamma Distribution
- If 1/x follows Gamma dist with para alpha and beta, x has inverse gamma dist
- Generally used in Bayesian analysis

$$f(x)=\frac{1}{\Gamma(\alpha)\beta^\alpha}x^{-(\alpha-1)}e^{-1/x\beta}, x\ge 0$$

![alt text](image.png)

## Chi Square Distribution
Special case of Gamma Distribution
- $\alpha=k/2, \, \beta=2$
- $X_k^2\sim \Gamma(\frac{k}{2}, 2)$

$$f(x)=\frac{1}{\Gamma(\frac{k}{2})2^{\frac{k}{2}}}x^{\frac{k}{2}-1}e^{-\frac{x}{2}}, x\ge 0$$

### **Additive property**:
If $x1\sim X_{k_1}^2$ and $x2\sim X_{k_2}^2$ are independent $X^2$ variables, then $x_1+x_2\sim X_{k_1+k_2}^2$

## Inverse Chi Square Distribution
Special case of Inverse Gamma Distribution
- $\alpha=\frac{k}{2}, \, \beta=2$

$$f(x)=\frac{1}{\Gamma(\frac{k}{2})2^\frac{k}{2}}x^{-(\frac{k}{2}-1)}e^{-1/2x}, x\ge 0$$

### Julia Codes:
Gamma:
```julia
# params \alpha and \beta
d = Gamma(1, 2)
```

InverseGamma:
```julia
# params \alpha and \beta^-1
d = InverseGamma(1, 0.5)
```

Chi Square:
```julia
# param k
d = Chisq(1)
```

## Gaussian/Normal Distribution
$$f(x)=\frac{1}{\sigma\sqrt{2\pi}}e^{-(x-\mu)^2/2\sigma^2}, -\infty<x<\infty$$

$E(x)=\mu$ \
$E[(x-\mu)^2]=\sigma^2$

## Beta Distribution
Other distributions are positive over infinite interval \
Beta is constrained to (0, 1)

$$f(x)=\frac{\Gamma(\alpha+\beta)}{\Gamma(\alpha)\Gamma(\beta)}x^{\alpha-1}(1-x)^{\beta-1}, 0<x<1$$
$\alpha$ and $\beta$ are positive constants \
Left fraction is normalizing factor

$E(x)=\frac{\alpha}{\alpha+\beta}$ \
$\sigma^2=\frac{\alpha\beta}{(\alpha+\beta)^2(\alpha+\beta+1)}$

## Weibull Distribution
Gamma dist used to model life lengths of components
- failure rate func for Gamma dist has an upper bound
- limits real systems applicability

Weibull dist provides a better dist for life length data

$$f(x)=\frac{\gamma}{\theta}x^{\gamma-1}e^{-x^{\gamma/\theta}},x>0$$
$\theta \, and \, \gamma$ are positive parameters

- $\gamma=1$ => exponential dist
- $\gamma>1$, this func looks like gamma functions, with different math props

$$cdf(x)=-e^{-x^{\gamma/\theta}}|_0^x=1-e^{-x^{\gamma/\theta}}, x\ge 0$$

$E(x)=\int_0^\infty x\frac{\gamma}{\theta}x^{\gamma-1}e^{-x^{\gamma/\theta}}dx$\
Let $y=x^\gamma$ or $x=y^{1/\gamma}$

$E(x)=E(y^{1/\gamma})=\int_0^\infty y^{1/\gamma}\frac{1}{\theta}e^{-y/\theta}dy=\theta^{1/\gamma}\Gamma(1+\frac{1}{\gamma})$