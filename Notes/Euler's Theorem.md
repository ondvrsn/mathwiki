---
mathLink: auto
---

<div class="topSpace"></div>

Date Created: 13/10/2022 12:18:15
Tags: #Theorem #Courses/MATH235

Proved by: [[Lagrange's Theorem]], [[Order divides power iff power gives identity]]
References: _Not Applicable_
Justifications: _Not Applicable_

Generalizations: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Theorem
title: Theorem (Euler$\textrm{'}$s Theorem).

_Let $n\in\N^+$ and let $\l[a\r]\in\l(\Z/n\Z\r)^\times$. Then $a^{\phi\l(n\r)}\mod{n}1$._

```

_Proof_. By Lagrange$\textrm{'}$s Theorem, we see that $\ord{\l[a\r]}$ divides $\ord{\l(\Z/n\Z\r)^\times}=\phi\l(n\r)$. Hence $\l[a\r]^{\phi\l(n\r)}=\l[1\r]$, and since
$$\begin{equation}
    \l[a^{\phi\l(n\r)}\r]=\l[a\r]^{\phi\l(n\r)}=\l[1\r],
\end{equation}$$
the result follows.<span style="float:right;">$\blacksquare$</span>