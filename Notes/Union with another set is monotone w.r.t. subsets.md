<br />
<br />

Date Created: 17/01/2022 17:25:18
Tags: #Proposition #Closed 

Proved by: _Not Applicable_
Generalizations: [[Union of subsets is a subset of union]]

Examples: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $A$ and $B$ be sets. If $A\subseteq B$, then $A\cup C\subseteq B\cup C$ for any set $C$._

```

_Proof_. Take $x\in A\cup B$. The result follows from the following chain of logical implications:
$$\begin{alignat}{2}
    x\in A\cup C&\Leftrightarrow\ex a\l(x\in a\land a\in\l\{A,C\r\}\r)&&\textrm{Definition of union}\\
    &\Leftrightarrow\ex a\l[x\in a\land\l(a\in A\lor a\in C\r)\r]\ \ \ \ \ \ \ \ &&\textrm{Definition of pair set}\\
    &\Rightarrow\ex a\l[x\in a\land\l(a\in B\lor a\in C\r)\r]&&A\subseteq B\\
    &\Leftrightarrow\ex a\l(x\in a\land a\in\l\{B,C\r\}\r)&&\textrm{Definition of pair set}\\
    &\Leftrightarrow x\in B\cup C.&&\textrm{Definition of union}\qedin
\end{alignat}$$