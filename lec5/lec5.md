## Probability Density Function
- $f(x) \ge 0, \forall x$
- $\int_{-\infty}^\infty f(x)dx=1$
- $p(a \le x \le b)=\int_a^b f(x)dx$
- $p(a \le x \le b)= p(a <x\le b)=p(a\le x <b)=p(a<x<b)$
- $cdf(b)=\int_{-\infty}^b f(x)dx$

### properties:
- $lim_{x\to -\infty}cdf(x)=0$
- $lim_{x\to \infty}cdf(x)=1$
- cdf(x) is non-decreasing function
- $lim_{h\to0+}cdf(x+h)=cdf(x)$
- $lim_{h\to0-}cdf(x+h)=cdf(x)$
- $f(x)=\frac{d}{dx}cdf(x)$

$E(x)=\int_{-\infty}^{\infty}xf(x)dx$
$\sigma^2=E[(x-\mu)^2]=\int_{-\infty}^{\infty}(x-\mu)^2f(x)dx=E(x^2)-\mu^2$

## Uniform Distribution
$$X \sim Uniform(a,b)$$
$$f(x)=\frac{1}{b-a}, a\le x \le b$$
$$cdf(x)=
    \begin{cases}
        0 & x<a\\
        \int_a^x\frac{1}{b-a}dt=\frac{x-a}{b-a} & a \le x \le b\\
        1 & x >b\\
    \end{cases}
$$

$E(x)=\frac{a+b}{2}$\
$\sigma^2=\frac{1}{12}(b-a)^2$

#### Relationship between Uniform and Poisson
- \# events in (0, t) has Poisson distribution
- actual time of occurence for event is uniform over (a, b)

## Exponential Distribution
$$X \sim Exponential(\theta)$$

$$f(x)=
    \begin{cases}
        \frac{1}{\theta}e^\frac{-x}{\theta} & x \ge 0 \\
        0 & elsewhere
    \end{cases}
$$
$$cdf(x)=
    \begin{cases}
        0 & x <0 \\
        \int_0^x\frac{1}{\theta}e^\frac{-x}{\theta}dx=-e^{-x/\theta}|_0^x=1-e^{-x/\theta} & x \ge 0
    \end{cases}
$$

### Gamma function
$$\Gamma(\alpha)=\int_0^\infty x^{\alpha-1}e^{-x}dx$$
- $\Gamma(\alpha+1)=\alpha\Gamma(\alpha)$
- $\Gamma(n)=(n-1)!$

Introducing $\beta$
$$\Gamma(\alpha)=\int_0^\infty x^{\alpha-1}e^{-x/\beta}dx$$
$y=x/\beta$ or $x=\beta y$, $dx=\beta dy$ \
$\int _0^\infty (\beta y)^{\alpha - 1}e^{-y}(\beta dy)=\beta^\alpha\Gamma(\alpha)$

$E(x)=\theta$\
$\sigma^2=\theta^2$

**Memoryless**: $p(x > a+b|x>a)=p(x>b)$

#### Connection with Poisson
If \# events x in specified area has **Poisson** dist, distance between any event and next event has **Exp** dist

- Poisson $\lambda$ events/hour
- y: \# events in t hours, with mean $\lambda t$
- x: length of time until first event
$$p(x>t)=p(y=0 \text{ on the interval (0, t)})=e^{-\lambda t}$$
$$p(x \le t)=1-p(x>t)=1-e^{-\lambda t}$$
