---
mathLink: Abelian $G$ is simple $\Leftrightarrow$ $G=\gen{g}$ for $\ord{g}$ prime
---

<div class="topSpace"></div>

Date Created: 09/05/2023 18:07:48
Tags: #Type/Proposition #Topic/Group_Theory

Proved by: [[Classification of Cyclic Groups]], [[Basic properties of cyclic groups]], [[Lagrange's Theorem]]
References: _Not Applicable_
Justifications: _Not Applicable_

Specializations: _Not Applicable_
Generalizations: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $G$ be an abelian group. Then $G$ is simple iff $G=\gen{g}$ for some $g\in G$ with $\ord{g}$ prime._

```

_Proof_. Suppose that $G$ is simple and take any non-trivial $g\in G$. Then $\gen{g}\nsubgrpeq G$ since $G$ is abelian, so $G=\gen{g}$ by simplicity of $G$. We now show that $\ord{g}<\infty$ is prime.
* If $\ord{g}=\infty$, then $G\iso\Z$ which is not simple. If $\ord{g}$ is not prime, write $\ord{g}=pq$ for some $1<p,q<\ord{g}$. Then $p$ is not coprime with $\ord{g}$, so $\gen{g^p}$ generates a proper subgroup of $G$. This contradicts the simplicity of $G$.

Conversely, every subgroup of $G$ is cyclic. But $\l|G\r|$ is prime, so $G=\gen{x}$ for every non-trivial $x\in G$ and hence $G$ has no non-trivial subgroups.<span style="float:right;">$\blacksquare$</span>