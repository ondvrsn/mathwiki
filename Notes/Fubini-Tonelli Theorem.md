<div class="topSpace"></div>

Date Created: 07/11/2023 20:27:28
Tags: #Type/Theorem #Topic/Real_Analysis

Proved by: [[Monotone Class Lemma]], [[Basic properties of measures#^monotone-convergence-of-sets]], [[Pointwise-limits of measurable functions are measurable]], [[Monotone Convergence Theorem]], [[Dominated Convergence Theorem]], [[Measurable Function#^measurable-almost-borel]]
References: <i>Not Applicable</i>
Justifications: <i>Not Applicable</i>

Specializations: <i>Not Applicable</i>
Generalizations: <i>Not Applicable</i>

``` ad-Theorem
title: Theorem (Fubini-Tonelli).

Let $\tpl{X,\mc{M},\mu}$ and $\tpl{Y,\mc{N},\nu}$ be two $\sigma$-finite measure spaces and let $f:X\times Y\to\bar{\R}$ be $\l(\mu\times\nu\r)$-measurable. Then (i) the fibers $f_x$ and $f^y$ are respectively $\nu$ and $\mu$-measurable for $\mu$-a.e. $x\in X$ and $\nu$-a.e. $y\in Y$; (ii) if either $f\geq0$ or $f\in L^1$, then the a.e. defined functions $g:x\mapsto\int f_x\d\nu$ and $h:y\mapsto\int f^y\d\mu$ are respectively $\mu$ and $\nu$-measurable, and in the latter case, they are in fact integrable; and (iii) we have in either case that
$$\begin{equation}
    \iint f\d\nu\d\mu=\int f\d\!\l(\mu\times\nu\r)=\iint f\d\mu\d\nu.\cref{\ast}
\end{equation}$$

Moreover, if $f$ is $\l(\mc{M}\otimes\mc{N}\r)$-measurable, then in fact $f_x,g$ are $\mc{M}$-measurable for all $x\in X$ and $f^y,h$ are $\mc{N}$-measurable for all $y\in Y$.

```

<i>Proof.</i> Let $\mc{B}\coloneqq\mc{M}\otimes\mc{N}$ and $\rho\coloneqq\mu\times\nu$. We first prove the <i>Fubini-Tonelli theorem for sets</i>, which states that for all $R\in\mc{B}$, we have $R_x\in\mc{M}$ and $R^y\in\mc{N}$ for all $x\in X$ and $y\in Y$, that the functions $g:x\mapsto\nu\l(R_x\r)$ and $h:y\mapsto\mu\l(R^y\r)$ are respectively $\mc{M}$ and $\mc{N}$-measurable, and that $\int\nu\l(R_x\r)\d\mu=\rho\l(R\r)=\int\mu\l(R^y\r)\d\nu$. Indeed, let $\mc{S}$ be the collection of all $R\in\mc{B}$ for which the conclusion holds. Then $\mc{S}$ contains all rectangles $R=M\times N$, where $M\in\mc{M}$ and $N\in\mc{N}$, since the fibers are just $M$ and $N$, $g\l(x\r)=\nu\l(R_x\r)=\nu\l(N\r)\cchi_M\!\l(x\r)$ is an indicator function for all $x\in X$ and similarly for $h\l(y\r)$, and $\ref{\ast}$ holds by definition of $\rho$. It also contains complements and finite unions of <i>rectangles</i>, so it contains the algebra $\mc{A}$ generated by rectangles. Assuming that $\mu$ and $\nu$ are finite, we show that $\mc{S}$ is closed under increasing unions and decreasing intersections; the Monotone Class Lemma then shows that $\mc{S}=\gen{\mc{A}}_\sigma=\mc{B}$ in the finite case.
* (Union). Let $R_n\in\mc{S}$ be an increasing sequence and let $R\coloneqq\bigcup_nR_n$, so $R^y=\l(\bigcup_nR_n\r)^y=\bigcup_nR_n^y\in\mc{N}$ for all $y\in Y$ and similarly for all $x\in X$. Moreover, we have that $h\l(y\r)=\mu\l(R^y\r)=\mu\l(\bigcup_nR_n^y\r)=\lim_n\mu\l(R_n^y\r)=\lim_nh_n\!\l(y\r)$ for all $y$, so $h$ is $\mc{N}$-measurable. Similarly for $g$, and $\ref{\ast}$ holds by the MCT.
* (Intersection). Let $R_n\in\mc{S}$ be a decreasing sequence and let $R\coloneqq\bigcap_nR_n$, so $R^y=\l(\bigcap_nR_n\r)^y=\bigcap_nR_n^y\in\mc{N}$ for all $y\in Y$ and similarly for all $x\in X$. Moreover, we have $h\l(y\r)=\mu\l(R^y\r)=\mu\l(\bigcap_nR_n^y\r)=\lim_n\mu\l(R_n^y\r)=\lim_nh_n\!\l(y\r)$ for all $y$ by finiteness of $\mu$, so $h$ is $\mc{N}$-measurable. Similarly for $g$ (by finiteness of $\nu$), and $\ref{\ast}$ holds by the DCT.

For general $\sigma$-finite measures $\mu$ and $\nu$, let $X=\bigcup_nX_n$ and $Y=\bigcup_nY_n$ be increasing unions of finite measure sets. Then $X\times Y=\bigcup_n\l(X_n\times Y_n\r)$ is an increasing union, and for any $R\in\mc{M}\otimes\mc{N}$, the statements hold for every $R_n\coloneqq R\cap\l(X_n\times Y_n\r)$ and hence holds for $R$ too by monotonicity of $\rho$ and the MCT.

Next, we prove the theorem in the case when $f$ is $\mc{B}$-measurable. Indeed, for each $C\in\mc{B}\,(\bar{\R})$ and all $x\in X$, we have $f^{-1}_x\!\l(C\r)=\l(f^{-1}\!\l(C\r)\r)_x\in\mc{N}$ by Fubini-Tonelli for sets. The rest of the claims reduce to Fubini-Tonelli for sets in the case when $f$ is an indicator function, so by linearity they hold when $f$ is simple. But any $f\geq0$ can be approximated by simple functions and any $f\in L^1$ decomposes as $f^+-f^-$, so the results follow by the MCT and linearity.

Finally, we extend the result to $\rho$-measurable functions $f$. To do so, we fix a countable basis $\l\{C_n\r\}$ of $\bar{\R}$ and, for each $n$, write $f^{-1}\!\l(C_n\r)=B_n\cup Z_n$ for some $B_n\in\mc{B}$ and some $\rho$-null sets $Z_n$.
* <i>(i)</i>. We show that $f_x$ is $\nu$-measurable for $\mu$-a.e. $x\in X$. Fix $n$ and let $\hat{Z}_n\supseteq Z_n$ be a $\rho$-null set in $\mc{B}$. Note that $(\hat{Z}_n)_x\in\mc{N}$ for every $x\in X$, so we have by Fubini-Tonelli for sets that $\int\nu\,(\hat{Z}_n)_x\d\mu=\l(\mu\times\nu\r)\,(\hat{Z}_n)=\rho\,(\hat{Z}_n)=0$. Thus $\nu\,(\hat{Z}_n)_x=0$ for $\mu$-a.e. $x\in X$, say on $X\comp N_n$ where $\mu\l(N_n\r)=0$. Let $N\coloneqq\bigcup_nN_n$, which is still $\mu$-null by countable subadditivity. Fix $x\in X\comp N$ and let $\mc{S}_x\coloneqq\{B\in\mc{B}\,(\bar{\R}):f_x^{-1}\!\l(B\r)\in\Meas_\nu\}$. Note that $\mc{S}_x$ is a $\sigma$-algebra, so to show that $f_x$ is $\nu$-measurable, it suffices to show that $\mc{S}_x$ contains all open sets. To this end, let $U\subseteq\bar{\R}$ be open and write $U=\bigcup_mC_m$ (where $m$ ranges over a subset of $\N$). We have
$$\begin{equation}
    f_x^{-1}\!\l(U\r)=\bigcup_mf_x^{-1}\!\l(C_m\r)=\bigcup_m\l(f^{-1}\!\l(C_m\r)\r)_x=\bigcup_m\l(B_m\r)_x\cup\l(Z_m\r)_x=\bigcup_m\l(B_m\r)_x\cup\bigcup_m\l(Z_m\r)_x
\end{equation}$$
with $\bigcup_m\l(B_m\r)_x\in\mc{N}$ and $\bigcup_m\l(Z_m\r)_x\subseteq\bigcup_m\,(\hat{Z}_m)_x$ being $\nu$-null, so $f_x$ is $\nu$-measurable as desired.
* <i>(ii)</i>. First, we approximate $f$ by a $\mc{B}$-measurable function $f'$, so the functions $g':x\mapsto\int f'_x\d\nu$ and $h':y\mapsto\int f'^y\d\mu$ are respectively $\mc{M}$ and $\mc{N}$ measurable, and $\ref{\ast}$ holds with $f'$ in place of $f$. Since the fiber $f_x$ is $\nu$-measurable for all $x\in X\comp N$, we see that $g\l(x\r)=\int f_x\d\nu$ is defined $\mu$-a.e. Moreover, for each $x\in X\comp N$, the functions $f_x$ and $f_x'$ only differ on a null set, so $g\l(x\r)=g'\!\l(x\r)$. Thus $g=g'$ $\mu$-a.e., so, since $g'$ is in particular $\mu$-measurable, we see that $g$ is $\mu$-measurable too. Similarly, $h$ is $\nu$-measurable. Moreover, $\ref{\ast}$ holds for $f$ since since it holds for $f'$, which only differ from $f$ on a $\rho$-null set.
* <i>(iii)</i>. Write $f=f^+-f^-$ and observe that $f^+,f^-\geq0$ and $f_x=f^+_x-f^-_x$ for all $x\in X$. Then $g$ is $\mu$-integrable since both $\iint f^\pm\d\nu\d\mu=\int f^\pm\d\rho<\infty$, so
$$\begin{equation}
    \int\l|g\r|\d\mu=\int\l|\int f\d\nu\r|\d\mu\leq\iint\l|f^+-f^-\r|\d\nu\d\mu\leq\iint f^+\d\nu\d\mu+\iint f^-\d\nu\d\mu<\infty.
\end{equation}$$
Similarly, $h$ is $\nu$-integrable. Lastly, $\ref{\ast}$ holds by linearity with $f=f^+-f^-$.<span style="float:right;">$\blacksquare$</span>