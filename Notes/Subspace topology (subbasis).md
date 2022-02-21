<br />
<br />

Date Created: 11/02/2022 17:57:27
Tags: #Proposition #Closed 

Proved by: [[Criteria for subbasis to generate existing basis]], [[Subspace topology (basis)]]
Generalizations: _Not Applicable_

Examples: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $\l\langle X,\mc{T}\r\rangle$ be a topological space and let $\mc{S}$ be a subbasis for $\mc{T}$. Fix a subset $Y\subseteq X$. Then the subspace topology $\l.\mc{T}\r|_Y$ on $Y$ can be generated by the subbasis_
$$\begin{equation}
    \l.\mc{S}\r|_Y\coloneqq\l\{T\in\mc{P}\l(Y\r)\mid\ex S\in\mc{S}:T=S\cap Y\r\}.
\end{equation}$$

```

_Proof_. Since $\mc{S}\subseteq\mc{T}$, we see that $\l.\mc{S}\r|_Y\subseteq\l.\mc{T}\r|_Y$ too. Recall that the set
$$\begin{equation}
    \l.\mc{B}\r|_Y\coloneqq\l\{C\in\mc{P}\l(Y\r)\mid\ex B\in\mc{B}:C=B\cap Y\r\},
\end{equation}$$
where $\mc{B}$ is a basis for $\mc{T}$, is a basis for $\l.\mc{T}\r|_Y$. It suffices to show that
$$\begin{equation}
    \fa C\in\l.\mc{B}\r|_Y,\ex\mc{W}\subseteq\l.\mc{S}\r|_Y:0<\l|\mc{W}\r|<\infty\land C=\bigcap\mc{W}.
\end{equation}$$
To this end, take $C\in\l.\mc{B}\r|_Y$, so there exists $B\in\mc{B}$ such that $C=B\cap Y$. Since $B\in\mc{B}$, there exists $\mc{R}\subseteq\mc{S}$ with $0<\l|\mc{R}\r|<\infty$ such that $B=\bigcap\mc{R}$. It follows that
$$\begin{equation}
    C=\l(\bigcap\mc{R}\r)\cap Y=\l(\bigcap\limits_{R\in\mc{R}}R\r)\cap Y=\bigcap\limits_{R\in\mc{R}}\l(R\cap Y\r),
\end{equation}$$
so set $\mc{W}\coloneqq\l\{R\cap Y\mid R\in\mc{R}\r\}$. Observe then that $0<\l|\mc{W}\r|=\l|\mc{R}\r|<\infty$ and that $C=\bigcap\mc{W}$.<span style="float:right;">$\blacksquare$</span>