---
mathLink-blocks:
    completely-metrizable: $2^\N$ is completely-metrizable
    separable: $2^\N$ is separable
    compact-iff-finite: $A^\N$ is compact $\Leftrightarrow$ $A$ is finite
---

<div class="topSpace"></div>

Date Created: 04/09/2023 15:32:18
Tags: #Type/Example #Topic/Real_Analysis

Types: <i>Not Applicable</i>
Examples: <i>Not Applicable</i>
Constructions: [[Bernoulli p-measure]]
Generalizations: <i>Not Applicable</i>

Properties: <i>Not Applicable</i>
Sufficiencies: <i>Not Applicable</i>
Equivalences: <i>Not Applicable</i>
Justifications: <i>Not Applicable</i>

``` ad-Example
title: Example.

The <b>Cantor space</b> is the product space $2^\N$ with $2\coloneqq\l\{0,1\r\}$ equipped with the discrete topology.
* It is completely-metrizable with metric $d\l(x,y\r)\coloneqq1/2^{\delta\l(x,y\r)}$, where $\delta\l(x,y\r)$ is the first index for which $x_n\neq y_n$.
* It is separable with a countably dense subset $Q\coloneqq\l\{w0^\infty\st w\in 2^{<\N}\r\}$, where $0^\infty\coloneqq\tpl{0,0,\dots}$, hence Polish.
* It is compact. This is essentially the Bolzano-Weierstrass Theorem.
* For all $p\in\l(0,1\r)$, it admits the <b>Bernoulli $p$-measure</b> defined by extending $\mu_p\!\l[w\r]\coloneqq p^{\#1\l(w\r)}\l(1-p\r)^{\#0\l(w\r)}$ on the algebra $\mc{A}$ of clopen sets in $2^\N$.

```

<b>Remark.</b> More generally, let $A$ be a countable set of <i>alphabets</i>. With $A^\N$ defined similarly as all infinite words in $A$, the same proof shows that it is completely-metrizable and separable, hence Polish. Also, $A^\N$ is compact iff $A$ is finite.<span style="float:right;">$\blacklozenge$</span>

---

<i>Proof (metrizable).</i> That $d$ is positive-definite and symmetric are clear. For the triangle inequality, let $x,y,z\in 2^\N$ be distinct (for otherwise it is trivial). Set $i_0\coloneqq\min\l\{\delta\l(x,y\r),\delta\l(y,z\r)\r\}$ and observe that $x_i=y_i=z_i$ for all $i<i_0$, so $\delta\l(x,z\r)\geq i_0$. We obtain the desired result as
$$\begin{equation}
    d\l(x,z\r)=1/2^{\delta\l(x,z\r)}\leq1/2^{i_0}=\max\l\{d\l(x,y\r),d\l(y,z\r)\r\}.
\end{equation}$$
^completely-metrizable
* The basic open sets of the product space $2^\N$ are <i>cylinders</i> $\l[w\r]\coloneqq\l\{x\in 2^\N\st\l.x\r|_n=w\r\}$ where $\l.x\r|_n$ denotes the first $n$ components of $x$ and $w\in2^n$ is a finite word. These are precisely the open balls generated by $d$, so $2^\N$ is metrizable.
* To show that $d$ is complete, let $\tpl{x^n}_{n\in\N}$ be a Cauchy sequence in $2^\N$. For all $i\in\N$, there are large enough $n,m\in\N$ such that $d\l(x^n,x^m\r)<1/2^i$, so $\delta\l(x^n,x^m\r)>i$. This holds for all large enough $n\in\N$, so consider the sequence $x\in2^\N$ defined by $x_i\coloneqq x^n_i$ for any such sequence $x^n$. Take $\epsilon>0$ and choose $i\in\N$ large enough so $1/2^i<\epsilon$, so for some large enough $n\in\N$, we have $x_j=x^n_j$ for all $j\leq i$. Thus $\delta\l(x^n,x\r)>i$, so $d\l(x^n,x\r)=1/2^{\delta\l(x^n,x\r)}<1/2^i<\epsilon$ and hence $x^n\to x$, as desired.<span style="float:right;">$\blacksquare$</span>

---

<i>Proof (separable).</i> The subset $Q\coloneqq\l\{w0^\infty\in2^\N\st w\in2^{<\N}\r\}$ is dense in $2^\N$ since for any cylinder $\l[w\r]$, the intersection $\l[w\r]\cap Q=\l\{w00\dots\r\}$ is not empty.<span style="float:right;">$\blacksquare$</span>
^separable

---

<i>Proof (compact).</i> Note that if $A$ is not finite, then the open cover $\l\{\l[a\r]\r\}_{a\in A}$ of $A^\N$, where $\l[a\r]$ is the cylinder whose base is the word with a single alphabet $a$, has no finite subcover. This contradicts compactness of $A^\N$.
^compact-iff-finite

Conversely, suppose for sake of contradiction that there is an open cover $\mc{U}$ of $A^\N$ with no finite subcover. For any word $w\in A^{<\N}$, let $P\l(w\r)$ be the proposition that the cylinder $\l[w\r]$ is covered by a finite subcover of $\mc{U}$. We claim that if $\lnot P\l(w\r)$, then $\lnot P\l(wa\r)$ for some $a\in A$.
* Indeed, suppose that $P\l(wa\r)$ for every $a\in A$, so $\l[wa\r]\subseteq\bigcup_{i<n_a}U_i$ for some $n_a\in\N$ depending on $a$. Letting $n\coloneqq\max_{a\in A}n_a$ shows us that $\l[w\r]\subseteq\bigcup_{i<n}U_i$, so $P\l(w\r)$ as desired. This depends crucially on $\l|A\r|<\infty$.

Since $A^\N$ does not admit a finite subcover of $\mc{U}$, we see that $\lnot P\l(\em\r)$. Extending the base word indefinitely like $\em\to a_0\to a_0a_1\to\cdots$ gives us an element $x\in A^\N$ where each $\l.x\r|_n$ is not covered by any finite subcover of $\mc{U}$. Then $x\not\in U$ for any $U\in\mc{U}$ (lest $x\in\l[w\r]\subseteq U$ for some $w\in A^{<\N}$), so $\mc{U}$ is not an open cover of $A^\N$.<span style="float:right;">$\blacksquare$</span>