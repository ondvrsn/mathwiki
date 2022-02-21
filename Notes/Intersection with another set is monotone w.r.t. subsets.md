<br />
<br />

Date Created: 17/01/2022 18:06:33
Tags: #Proposition #Closed 

Proved by: _Not Applicable_
Generalizations: [[Intersection of subsets is a subset of intersection]]

Examples: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $A$ and $B$ be sets. If $A\subseteq B$, then $A\cap C\subseteq B\cap C$ for any set $C$._

```

_Proof_. Take $x\in A\cap B$. The result follows from the following chain of logical implications:
$$\begin{alignat}{2}
    x\in A\cap C&\Leftrightarrow\fa a\l(x\in a\Rightarrow a\in\l\{A,C\r\}\r)&&\textrm{Definition of intersection}\\
    &\Leftrightarrow\fa a\l[x\in a\Rightarrow\l(a\in A\lor a\in C\r)\r]\ \ \ \ \ \ \ \ &&\textrm{Definition of pair set}\\
    &\Rightarrow\fa a\l[x\in a\Rightarrow\l(a\in B\lor a\in C\r)\r]&&A\subseteq B\\
    &\Leftrightarrow\fa a(x\in a\Rightarrow a\in\l\{B,C\r\})&&\textrm{Definition of pair set}\\
    &\Leftrightarrow x\in B\cap C.&&\textrm{Definition of intersection}\qedin
\end{alignat}$$