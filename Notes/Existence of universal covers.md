<div class="topSpace"></div>

Date Created: 23/05/2023 21:55:54
Tags: #Type/Proposition #Topic/Topology

Proved by: [[Covering Homotopy Theorem]], [[Basic properties of covering spaces]]
References: _Not Applicable_
Justifications: _Not Applicable_

Specializations: _Not Applicable_
Generalizations: _Not Applicable_

``` ad-Proposition
title: Proposition.

_Let $X$ be a path-connected and locally path-connected space. Then $X$ admits a universal cover $p:\widetilde{X}\to X$ iff $X$ is semilocally simply-connected._

```

_Proof_. The forward direction is easy since for every $x\in X$, there exists a neighborhood $U$ of $x$ lifting to a sheet $\widetilde{U}$ that projects homeomorphically only $U$. Every loop $\gamma$ in $U$ then lifts to a loop in $\widetilde{U}$, which is null-homotopic in $\widetilde{X}$ since $\widetilde{X}$ is simply-connected. Projecting the homotopy shows that $\gamma$ is null-homotopic in $X$, so the map $\iota_\ast$ induced by $\iota$ is trivial in $\pi_1\l(X,x_0\r)$.

Conversely, let $X$ be a semilocally simply-connected space and fix $x_0\in X$. Define the set $\widetilde{X}\coloneqq\l\{\l[\gamma\r]\mid\gamma:I\to X\textrm{\ and\ }\gamma\l(0\r)=x_0\r\}$, where $\l[\gamma\r]$ denotes the path-homotopy class of $\gamma$ in $X$, and consider the map $p:\widetilde{X}\to X:\l[\gamma\r]\mapsto\gamma\l(1\r)$ which is well-defined since path-homotopies fix endpoints. We topologize $\widetilde{X}$, that makes $p$ continuous and a covering map, as follows.
1. Let $\mc{B}$ be the collection of all path-connected subsets $U\subseteq X$ such that $\iota_\ast:\pi_1\l(U\r)\into\pi_1\l(X\r)$ is trivial, which we claim is a basis for the topology on $X$. Indeed, every $x\in X$ has a path-connected neighborhood $U$ such that $\iota_\ast:\pi_1\l(U\r)\into\pi_1\l(X\r)$ is trivial, so $\mc{B}$ covers $X$. Furthermore, if $U_1,U_2\in\mc{B}$ and $x\in U_1\cap U_2$, then, since $U_1\cap U_2$ is open, there is an path-connected neighborhood $V\subseteq U_1\cap U_2$ of $x$. Furthermore, the inclusion $V\into X$ factors as $V\into U_i\into X$ which induces inclusions $\pi_1\l(V\r)\into\pi_1\l(U_i\r)\into\pi_1\l(X\r)$, the latter being trivial. Thus the inclusion $\iota_\ast:\pi_1\l(V\r)\into\pi_1\l(X\r)$ is trivial.
2. Now, for any $U\in\mc{B}$ and any path $\gamma:I\to X$ starting at $x_0$ and ending in $U$, let $\widetilde{U}_\gamma\subseteq\tilde{X}$ consist of all classes $\l[\gamma\ast\delta\r]$ for paths $\delta:I\to U$ compatible with $\gamma$. Then, since $U$ is path-connected, every $x\in U$ admits a path $\delta:\gamma\l(1\r)\rightsquigarrow x$ in $U$, so $\l.p\r|_{\widetilde{U}_\gamma}\!:\widetilde{U}_\gamma\to U$ is surjective. For injectivity, note that if $\delta_1,\delta_2:\gamma\l(1\r)\rightsquigarrow x$ are two paths in $U$ with the same-endpoint $x$, then $\delta_1\ast\delta_2^-$ is a loop in $U$ that null-homotopes in $X$ to the constant path at $\gamma\l(1\r)$. Thus $\l[\delta_1\r]=\l[\delta_2\r]$, so $\l[\gamma\ast\delta_1\r]=\l[\gamma\ast\delta_2\r]$.
3. For all $U\in\mc{B}$ and all paths $\gamma,\gamma':I\to X$ starting at $x_0$ and ending in $U$, we claim that $\l[\gamma'\r]\in\widetilde{U}_\gamma$ implies that $\widetilde{U}_\gamma=\widetilde{U}_{\gamma'}$. Indeed, $\l[\gamma'\r]\in\widetilde{U}_\gamma$ implies $\gamma'=\gamma\ast\delta$ for some path $\delta:I\to U$ compatible with $\gamma$. Thus elements in $\widetilde{U}_{\gamma'}$ are of the form $\gamma\ast\delta\ast\delta'$ for some path $\delta':I\to U$ compatible with $\delta$ and hence lies in $\widetilde{U}_\gamma$. Also, elements in $\widetilde{U}_\gamma$ have the form $\gamma\ast\delta'$ for some path $\delta':I\to U$ compatible with $\gamma$, and since $\l[\gamma\ast\delta'\r]=\l[\gamma\ast\delta\ast\delta^-\ast\delta'\r]=\l[\gamma'\ast\delta^-\ast\delta'\r]$, they lie in $\widetilde{U}_{\gamma'}$.
4. We claim that the collection $\widetilde{\mc{B}}$ of all sets $\widetilde{U}_\gamma$ is a basis for a topology on $\widetilde{X}$. It is clear that $\widetilde{\mc{B}}$ covers $\widetilde{X}$ since if $\l[\gamma\r]\in\widetilde{X}$, then $\gamma\l(1\r)\in U$ for some $U\in\mc{B}$ and is thus contained in the subset $\widetilde{U}_\gamma\subseteq\widetilde{X}$ defined by $\gamma$ and with $\delta:I\to U$ being the constant path at $\gamma\l(1\r)$. Furthermore, for all $\widetilde{V}_\eta,\widetilde{W}_\sigma\in\widetilde{\mc{B}}$ and $\l[\gamma\r]\in\widetilde{V}_\eta\cap\widetilde{W}_\sigma$, let $U\subseteq V\cap W$ contain $p\l[\gamma\r]$. Then $\widetilde{V}_\gamma=\widetilde{V}_\eta$ and $\widetilde{W}_\gamma=\widetilde{W}_\sigma$, so $\widetilde{U}_\gamma$ contains $\l[\gamma\r]$ and is a subset of $\widetilde{V}_\gamma\cap\widetilde{W}_\gamma=\widetilde{V}_\eta\cap\widetilde{W}_\sigma$, as desired.
5. Equipping $\widetilde{X}$ with the topology generated by $\widetilde{\mc{B}}$ makes $p$ continuous. Furthermore, for each $x\in X$ there exists some $U\in\mc{B}$ such that $p^{-1}\!\l(U\r)$ is partitioned by the sets $\widetilde{U}_\gamma$ for varying $\gamma:I\to X$ starting at $x_0$ and ending in $U$. Indeed, if $\l[\gamma\r]\in\widetilde{U}_\eta\cap\widetilde{U}_\sigma$, then $\widetilde{U}_\gamma=\widetilde{U}_\eta=\widetilde{U}_\sigma$. Lastly, each $\l.p\r|_{\widetilde{U}_\gamma}\!:\widetilde{U}_\gamma\to U$ is open since for all open subsets $\widetilde{V}_\eta\subseteq\widetilde{U}_\gamma$, the image $p\,(\widetilde{V}_\eta)=V$ is open.

It remains to show that $\widetilde{X}$ is simply-connected. Take $\l[\gamma\r]\in\widetilde{X}$ and consider the paths $\gamma_t:I\to X$ that coincides with $\gamma$ on $\l[0,t\r]$ and is constant at $\gamma\l(t\r)$ on $\l[t,1\r]$. Letting $\widetilde{x}_0\in\widetilde{X}$ denote the homotopy class of the constant path at $x_0$, we see that $\widetilde{\gamma}:t\mapsto\l[\gamma_t\r]$ is a path in $\widetilde{X}$ starting at $\widetilde{x}_0$ and ending at $\l[\gamma\r]$, which shows that $\widetilde{X}$ is path-connected. Furthermore, $\l(p\circ\widetilde{\gamma}\r)\l(t\r)=p\l[\gamma_t\r]=\gamma_t\!\l(t\r)=\gamma\l(t\r)$, so $\widetilde{\gamma}$ is the lift of $\gamma$ to $\widetilde{X}$. To show that $\pi_1\,(\widetilde{X},\widetilde{x}_0)$ vanishes, since $p_\ast$ is injective it suffices to show that $p_\ast\pi_1\,(\widetilde{X},\widetilde{x}_0)$ is trivial. But $p_\ast\pi_1\,(\widetilde{X},\widetilde{x}_0)$ consist of loops in $X$ at $x_0$ whose lifts are loops at $\widetilde{x}_0$, so if $\l[\gamma\r]\in p_\ast\pi_1\,(\widetilde{X},\widetilde{x}_0)$, then the lift $\widetilde{\gamma}$ constructed above ends at $\widetilde{x}_0$. Hence $\l[\gamma\r]=\widetilde{x}_0$, as desired.<span style="float:right;">$\blacksquare$</span>