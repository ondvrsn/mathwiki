<br />
<br />

Date Created: 10/02/2022 13:32:29
Tags: #Proposition #Closed 

Proved by: [[Criteria for fineness w.r.t bases]], [[Product topology (basis; component from bases)]], [[Discrete topology (basis)]]
Generalizations: _Not Applicable_

Examples: _Not Applicable_
Counterexamples: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $<_L$ be the lexicographical order on $\R^2$ and let_ $\mc{T}_\textrm{st}$_ be the standard topology on $\R$. Then the lexicographical order topology_ $\mc{T}_<$ _on $\R^2$ is the product topology on $\R^2$ w.r.t._ $\mc{T}_\textrm{discrete}$ _and_ $\mc{T}_\textrm{st}$_. That is,_ $\mc{T}_<=\mc{T}_\textrm{discrete}\times\mc{T}_\textrm{st}$_._

```

_Proof_. Recall that $\mc{T}_<$ and $\mc{T}_\textrm{discrete}\times\mc{T}_\textrm{st}$ can be generated by the bases
$$\begin{equation}
    \mc{B}_<\coloneqq\l\{B\in\mc{P}\l(\R^2\r)\mid\ex a,b,c,d\in\R:\l\langle a,b\r\rangle<_L\l\langle c,d\r\rangle\land B=\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r)\r\}
\end{equation}$$
and
$$\begin{equation}
    \mc{B}_\textrm{pr}\coloneqq\l\{B\in\mc{P}\l(\R^2\r)\mid\ex a,b,d\in\R:b<d\land B=\l\{a\r\}\times\l(b,d\r)\r\},
\end{equation}$$
respectively. We proceed by double containment. First, we need the following lemma:
$$\begin{equation}
    \begin{alignedat}{2}
        p\in\l(\l\langle a,b\r\rangle,\l\langle a,d\r\rangle\r)&\Leftrightarrow\ex y\in\R:b<y<d\land p=\l\langle a,y\r\rangle&&\textrm{Definition of open interval w.r.t. }<_L\\
        &\Leftrightarrow\ex y\in\R:y\in\l(b,d\r)\land p=\l\langle a,y\r\rangle&&\textrm{Definition of open interval w.r.t. }<\\
        &\Leftrightarrow\ex y\in\l(b,d\r):p=\l\langle a,y\r\rangle&&\l(b,d\r)\subseteq\R\\
        &\Leftrightarrow\ex x\in\l\{a\r\},\ex y\in\l(b,d\r):p=\l\langle x,y\r\rangle\ \ \ \ \ \ \ \ &&\textrm{Set }x=a\\
        &\Leftrightarrow p\in\l\{a\r\}\times\l(b,d\r).&&\textrm{Definition of Cartesian product}
    \end{alignedat}\tag{$\ast$}
\end{equation}$$
($\mc{T}_<\subseteq\mc{T}_\textrm{discrete}\times\mc{T}_\textrm{st}$): Take $\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r)\in\mc{B}_<$ containing $p\in\R^2$, so there exist $x,y\in\R$ such that $p=\l\langle x,y\r\rangle$. 
* If $a=c$, observe that $p\in\l\{a\r\}\times\l(b,d\r)=\l(\l\langle a,b\r\rangle,\l\langle a,d\r\rangle\r)=\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r)$.

* Otherwise, since $\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r)\neq\em$, we have $a<c$.
    * If $p=\l\langle a,y\r\rangle$ for any $y>b$, observe, for any $z>y$, that$$\begin{equation}
      \begin{alignedat}{2}
        p=\l\langle a,y\r\rangle&\in\l\{a\r\}\times\l(b,z\r)&&b<y<z\\
        &=\l(\l\langle a,b\r\rangle,\l\langle a,z\r\rangle\r)&&\textrm{Lemma (}\ast\textrm{)}\\
        &\subseteq\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r).\ \ \ \ \ \ \ \ &&\l(b<y\land a<c\r)\Rightarrow\l\langle a,b\r\rangle<_L\l\langle a,y\r\rangle<_L\l\langle c,d\r\rangle
      \end{alignedat}\tag{$\color{red}\ast$}
      \end{equation}$$
    * If $p=\l\langle c,y\r\rangle$ for any $y<d$, observe, for any $z<y$, that$$\begin{equation}
      \begin{alignedat}{2}
        p=\l\langle c,y\r\rangle&\in\l\{c\r\}\times\l(z,d\r)&&z<y<d\\
        &=\l(\l\langle c,z\r\rangle,\l\langle c,d\r\rangle\r)&&\textrm{Lemma (}\ast\textrm{)}\\
        &\subseteq\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r).\ \ \ \ \ \ \ \ &&\l(a<c\land y<d\r)\Rightarrow\l\langle a,b\r\rangle<_L\l\langle c,y\r\rangle<_L\l\langle c,d\r\rangle
      \end{alignedat}\tag{$\color{green}\ast$}
      \end{equation}$$
    * If $p=\l\langle x,y\r\rangle$ for any $a<x<c$, observe, for any $r\in\R^+$, that$$\begin{equation}
      \begin{alignedat}{2}
        p=\l\langle x,y\r\rangle&\in\l\{x\r\}\times\l(y-r,y+r\r)&&y-r<y<y+r\\
        &=\l(\l\langle x,y-r\r\rangle,\l\langle x,y+r\r\rangle\r)\ \ \ \ \ \ \ \ &&\textrm{Lemma (}\ast\textrm{)}\\
        &\subseteq\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r).&&a<x<c\Rightarrow\l\langle a,b\r\rangle<_L\l\langle x,y\r\rangle<_L\l\langle c,d\r\rangle
      \end{alignedat}\tag{$\color{blue}\ast$}
      \end{equation}$$  

<center><img src="https://raw.githubusercontent.com/zhaoshenzhai/MathWiki/master/Images/10-02-2022_154054/image.svg", width=25%></center>

In all cases, we see that there exists $B\in\mc{B}_\textrm{pr}$ such that $p\in B\subseteq\l(\l\langle a,b\r\rangle,\l\langle c,d\r\rangle\r)$, so $\mc{T}_<\subseteq\mc{T}_\textrm{discrete}\times\mc{T}_\textrm{st}$.

($\mc{T}_\textrm{discrete}\times\mc{T}_\textrm{st}\subseteq\mc{T}_<$): Conversely, take $\l\{a\r\}\times\l(b,d\r)\in\mc{B}_\textrm{pr}$ containing $p\in\R^2$, so $p=\l\langle a,y\r\rangle$ for some $b<y<d$. It follows from lemma ($\ast$) that $\l\{a\r\}\times\l(b,d\r)=\l(\l\langle a,b\r\rangle,\l\langle a,d\r\rangle\r)$, so
$$\begin{equation}
    p=\l\langle a,y\r\rangle\in\underbrace{\l(\l\langle a,b\r\rangle,\l\langle a,d\r\rangle\r)}_{\in\mc{B}_<}=\l\{a\r\}\times\l(b,d\r).
\end{equation}$$
Hence we see that $\mc{T}_\textrm{discrete}\times\mc{T}_\textrm{st}\subseteq\mc{T}_<$, so equality holds.<span style="float:right;">$\blacksquare$</span>