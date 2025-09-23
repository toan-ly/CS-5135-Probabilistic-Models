## Lec 3 - Intro to Prob

#### Kolmogorov axioms
- First Axiom: $0 <= p(x=s) <= 1$
- Second Axiom: $\sum_{x\in dom(x)}p(x=x)=1$ or $\sum_xp(x)=1$
- Third Axiom: $p(x=s1 \cup x=s2)=p(x=s1) + p(x=s2)$

#### Bayes' Rule
$$p(x|y)=\frac{p(x,y)}{p(y)}=\frac{p(y|x)p(x)}{p(y)}$$

#### Independence
$p(x, y)=p(x)p(y)$

#### Conditional Independence
$p(X, Y|Z)=p(X|Z)p(Y|Z)$ and \
$p(X|Y, Z)=p(X|Z)$

#### Prior, Likelihood, Posterior
$$p(\theta|D) = \frac{p(D|\theta)p(\theta)}{p(D)}$$
- Posterior: $p(\theta|D)$
- Likelihood: $p(D|\theta)$
- Prior: $p(\theta)$
- Evidence: $p(D)$

$$p(\theta|D, M) = \frac{p(D|\theta, M)p(\theta|M)}{p(D|M)}$$

