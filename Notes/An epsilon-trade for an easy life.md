---
mathLink: An $\epsilon$-trade for an easy life
mathLink-blocks:
    99-boundedness: $99\%$ boundedness of $f\in L^1$
    Egorov: Egorov’s Theorem
---

<div class="topSpace"></div>

Date Created: 25/10/2023 17:20:28
Tags: #Type/Theorem #Topic/Real_Analysis

Proved by: [[Measure Space#^monotone-convergence-of-sets]], [[Chebyshev's Inequality]]
References: <i>Not Applicable</i>
Justifications: <i>Not Applicable</i>

Specializations: <i>Not Applicable</i>
Generalizations: <i>Not Applicable</i>
^Egorov

``` ad-Theorem
title: Theorem (An $\epsilon$-trade for an easy life).

For a finite measure space $\tpl{X,\mu}$ and an increasing sequence $P_n$ of $\mu$-measurable sets, if $\fa_\mu^\textrm{a.e.}x\in X,\ex n\in\N:P_n\!\l(x\r)$, then $\ex n\in\N,\fa_\mu^{99\%}x\in X:P_n\!\l(x\r)$.
* (99\% boundedness). Let $\tpl{X,\mu}$ be a measure space and let $f:X\to\bar{\R}$ be $\mu$-integrable. For each $\epsilon>0$, there is a $\mu$-measurable $X'\subseteq X$ with $\mu\l(X\comp X'\r)\leq\epsilon$ and $\mu_{\l|f\r|}\!\l(X\comp X'\r)\leq\epsilon$ such that $\l.f\r|_{X'}$ is bounded.
* (99\% uniform convergence/Egorov). Let $\tpl{X,\mu}$ be a finite measure space and let $f_n,f:X\to\R$ be $\mu$-measurable. If $f_n\to f$ a.e., then for each $\epsilon>0$, there is a $\mu$-measurable $X'\subseteq X$ with $\mu\l(X\comp X'\r)\leq\epsilon$ on which $f_n\to f$ uniformly.

```
^99-boundedness

<b>Remark.</b> The $\ex n\in\N,\fa_\mu^{99\%}x\in X$ is of course a joke. More precisely, we mean that for every $\epsilon>0$, there is some $n\in\N$ such that $\mu\l(X\comp P_n\r)\leq\epsilon$.<span style="float:right;">$\blacklozenge$</span>

---

<i>Proof.</i> Observe that $X'\coloneqq\bigcup_nP_n$ is $\mu$-conull, so $\mu\l(P_n\r)\to\mu\l(X'\r)=\mu\l(X\r)<\infty$ and hence $\mu\l(X\comp P_n\r)\to0$. Thus, for every $\epsilon>0$, there is some $n\in\N$ such that $X\comp P_n$ has measure $\leq\epsilon$, as desired.
* (99\% boundedness). Let $f:X\to\bar{\R}$ be $\mu$-integrable. Since $\l|f\r|<\infty$ on a $\mu$-conull set, we may assume that $\l|f\r|<\infty$. Thus $\fa x\in X,\ex n\in\N:P_n\!\l(x\r)$, where $P_n\!\l(x\r)$ iff $\l|f\l(x\r)\r|<n$, so, in the finite measure space $\tpl{X,\mu_{\l|f\r|}}$, we sacrifice an $\epsilon$ to obtain a uniform $n\in\N$ such that $\fa_\mu^{99\%}x\in X:P_n\!\l(x\r)$. Then $X'\coloneqq P_n$ is as desired. Note that $\mu\l(X\comp X'\r)\leq\|f\|_1/n$ by Chebyshev’s Inequality, so, making $n$ larger if necessary, we see that $\mu\l(X\comp X'\r)\leq\epsilon$ too.
* (99\% uniform convergence). Let $f_n,f:X\to\R$ be $\mu$-measurable such that $f_n\to f$ a.e., and take $\delta>0$. Set $P_N\coloneqq\l\{x\in X\st\fa n\geq N:\l|f_n\!\l(x\r)-f\l(x\r)\r|\leq\delta\r\}$, so since $\fa_{\mu}^\textrm{a.e.}x\in X,\ex N\in\N:P_N\!\l(x\r)$, we sacrifice $\delta$ to obtain a uniform $N_\delta\in\N$ such that $\fa_{\mu}^{99\%}x\in X:P_{N_\delta}\!\l(x\r)$. Applying this to a sequence $\delta_k\to0$, say $\delta_k\coloneqq1/k$, we obtain uniform bounds $N_k\in\N$ such that $\mu\l(X\comp P_{N_k}\r)\leq\epsilon/2^{k+1}$. Then $X'\coloneqq\bigcap_nP_{N_k}$ is as desired since $\mu\l(X\comp X'\r)\leq\sum_k\mu\l(X\comp P_{N_k}\r)\leq\sum_k\epsilon/2^{k+1}=\epsilon$, and for all $x\in X'$, we have $\l|f_n\!\l(x\r)-f\l(x\r)\r|\leq\delta_k\to0$ for all $n\geq N_k$.<span style="float:right;">$\blacksquare$</span>