---
dateCreated: 2024-09-30,16:01
tags:
  - topologicalVectorSpaces
  - FunctionalAnalysis
---


>[!Corollary]
>$U,X$ Banach $T_{n}\in B(U,X)$ si $\lim_{ n \to \infty }T_{n}u$ existe para cada $u\in U$ y $\lim_{ n \to \infty }T_{n}u = Tu$ con $T\in B(U,X)$
>>[!Proof]
>>a

>[!Lemma]
>Sea $s_{k}=\{ (x_{1},\ldots,x_{k},0,\ldots) :x_{j}\in \mathbb{F}\}$ y $S=\bigcup^{\infty}s_{k}$ entonces $S$ es denso en $\ell^{p}$. Si $p$ finito y no es denso en $\ell^{\infty}$. Ademas $\ell^{p}$ es separable si $1\leq p<\infty$ y no lo es si $p=\infty$
>>[!Proof]
>>a

>[!Theorem]
>Sea $p \in [1,\infty)$ y $q\in (1,\infty]$ tales que $\frac{1}{p}+\frac{1}{q}=1$ entonces:
>1. Si $a=\{ a_{n} \}\in \ell^{q}$ entonces $\forall \{ x_{n} \}=x\in \ell^{p}$ la sucesion $\{ a_{n}x_{n} \}\in \ell^{1}$ y $f_{a}:\ell^{p}\rightarrow \mathbb{F}$ dada por $f_{a}(x):=\sum^{\infty}_{n=1}a_{n}x_{n}$ esta en $(\ell^{p})'$ y $\lVert f_{a} \rVert=\lVert a \rVert_{q}$
>2. $\forall f\in (\ell^{p})'$, $\exists !a\in \ell^{q}$ tal que $f=f_{a}$
>3. $T_{p}:\ell^{q}\rightarrow(\ell^{p})'$ dada por $T_{p}(a)=f_{a}$ es isomorfismo isometrico
>>[!Proof]
>>a

## Espacios Vectoriales Topologicos

>[!Definition]
> $X$ espacio vectorial $(X,\tau)$ es topologia tal que 
> 1. $\forall x\in X$ sucede $\{ x \}$ es cerrado ($\tau$ es $T_{1}$)
> 2. $$(x,y)\mapsto x+y$$ continua respecto a $\tau$. Digamos $\forall (x_{1},x_{2})\in X\times X$ y $V$ entorno de $x_{1}+x_{2}$ existe $U_{1},U_{2}$ entornos de $x_{1}$ y $x_{2}$ respectivamente tales que $U_{1}+U_{2}\subseteq V$
> 3. $$(\alpha,x)\mapsto \alpha x$$ continua respecto a $\tau$. Digamos $\forall x\in X$, $\forall \alpha\in \mathbb{F}$ y $V$ entorno de $\alpha x$ tenemos que $\exists r>0$ y $W$ entorno tal que $\lvert \beta-\alpha \rvert<r \Rightarrow \beta W\subseteq V$

>[!Remark]
>Podemos ver que entonces $\tau$ es Hausdorff (Lo probamos mas adelante)
>$T_{a},M_{\alpha}:X\rightarrow X$ dads por 
>$$T_{a}x=x+a\quad M_{\alpha }x=\alpha x \quad  0 \neq\alpha \in \mathbb{F}$$
>Son continuas con inversa continua (*Homeomorfismo*). Digamos $\tau$ es invariante concluyendo que $$E\subseteq X \text{ abierto }\iff a+E \text{ abierto}\quad\forall a\in X$$
>Por lo tanto $\tau$ queda determinada por cualquier *local* en 0
>Analogamente una base local de un espacio vectorial topologico $X$ es una familia $\mathcal{B}$ de entornos de 0 tales que dado un entorno cualquiera de $0$ contiene un elemento de $\mathcal{B}$

>[!Lemma]
>1. Para $a\in X$ espacio vectorial topologico $\alpha\in \mathbb{C}\setminus\{ 0 \}$ $$T_{a}:X\rightarrow X \quad x\mapsto x+a$$ $$M_{\alpha }:X\rightarrow X \quad x\mapsto\lambda a$$ Son homeomorfismos
>2. Si $x_{0}\in X$ y $V$ entorno del 0 $x_{1}+U$ es entorno de $x_{0}$
>3. $U$ entorno de $0$ y $F\subseteq X$ entonces $F+V$ es abierto y contiene a $F$
>4. Si $U,V$ entorno de 0 entonces 
>	1. $U\cap V$, $U\cup V$, $-U$ son entornos del 0
>	2. $U\cap(-U)$ es entorno de 0 (llamado entorno simetrico) $(A \text{ simetrico} \iff A=-A)$
>	3. Si $U$ entorno simetrico entonces $U+U$ es entorno simetrico
>5. $W$ espacio vectorial normado de 0 entonces $\exists V$ espacio vectorial normado de 0, simetrico, tal que $V+V+V+V\subseteq W$

>[!Theorem] 1.10
>$X$ espacio vectorial topologico $K\subseteq X$ compacto y $C\subseteq X$ cerrado tal que $K\cap C= \emptyset$ entonces $\exists V$ entorno de 0 tal que $(K+V)\cap (C+V)=\emptyset$

>[!Corollary]
>Todo espacio vectorial topologicos $T_{2}$

>[!Remark]-
>Como $K+V$ y $C+V$ son abiertos disjuntos entonces tambien $\overline{K+V}\cap(C+V)=\emptyset$
>>[!Proof]
>>1. Si $x\in C+V$ entonces $\exists U$ entorno de $x$ tal que $U\subseteq C+V$. 
>>2. Si $x\in \overline{K+V}$ entonces todo entorno de $x$ interseca a $K+V$ en particular $\exists y\in  U\cap(K+V)$. absurdo

>[!Corollary] 1.11
>$\mathcal{B}$ conjunto de bolas de $X$ espacio vectorial topologico entonces todo miembro de $\mathcal{B}$ contiene la clausura de algun otro miembro de $\mathcal{B}$ digamos $$\forall U\in \mathcal{B} \quad \exists W\in \mathcal{B} \quad\text{ tal que }\quad \overline{W}\subseteq U$$

>[!Definition] Entorno Balanceado
>$S\subseteq X$ espacio vectorial topologico se dice balanceado $\iff$ $\alpha s\in S\quad\forall x\in S\quad\forall \lvert \alpha  \rvert\leq 1$  