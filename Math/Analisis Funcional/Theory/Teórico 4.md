---
dateCreated: 2024-09-23,17:12
tags:
  - Fourier
  - FunctionalAnalysis
---


>[!Theorem] Stone-Weierstrauss
>Sea $M\subseteq \mathbb{R}$ entonces los polinomios con coeficientes reales son densos en $C_{\mathbb{R}}(M)$

>[!Theorem] 1.61 Youngson
>El conjunto $C[a,b]$ es denso en $L^{p}[a,b]$ con $1\leq p<\infty$
## Series de Fourier
>[!Theorem]
>$$C=\left\{  c_{0}(x)=\left( \frac{1}{\pi} \right),c_{n}(x)=\left( \frac{2}{\pi} \right)^{\frac{1}{2}}\cos nx : n\in\mathbb{N} \right\}$$
>es una base ortonormal de $L^{2}[0,\pi]$
>>[!Proof]

>[!Corollary]
>$L^{2}[0,\pi]$ es separable.

>[!Theorem]
> $$S=\left\{  s_{n}(x)=\left( \frac{2}{\pi } \right)^{\frac{1}{2}} \sin nx:n\in \mathbb{N} \right\}$$
>is una base ortonormal en $L^{2}[0,\pi]$
>>[!Proof]

>[!Theorem] (Bases de Fourier)
>$$E=\left\{  e_{n}(x)=(2\pi )^{-\frac{1}{2}} e^{inx}  :n\in \mathbb{N} \right\}$$
>$$F=\left\{  2^{-\frac{1}{2}}c_{0},2^{-\frac{1}{2}} c_{n},2^{-\frac{1}{2}} s_{n}:n\in \mathbb{N}    \right\}$$
>son bases ortonormales de $L^{2}_{\mathbb{C}}[-\pi,\pi]$. Ademas $F$ es base ortonormal de $L^{2}_{\mathbb{R}}[-\pi,\pi]$
>>[!Proof]

## Operadores lineales continuos

>[!Definition] Operador Lineal
>Sea $X,Y$ normados (sobre el mismo $\mathbb{F}$). Decimos que $T:X\rightarrow Y$ es lineal si 
>$$T(\alpha x+\beta y)= \alpha Ty + \beta Ty\quad\forall {x,y}\in X\quad\alpha ,\beta \in \mathbb{F}$$

>[!Remark]
>Decimos que $T$ continua en $x_0\in X$ si $\forall \epsilon>0,\quad\exists\delta$ tal que $\lVert x-x_{0} \rVert\Rightarrow\lVert Tx-Tx_{0} \rVert<\epsilon$

>[!Lemma] Equivalencia de continuidad para operadores lineales
>Sean $X$ e $Y$ ev normados y $T:X\rightarrow Y$ una transformacion lineal. Son equivalentes:
>1. $T$ es uniforme continua
>2. $T$ es continua
>3. $T$ es continua en 0
>4. Existe un numero real positivo $k$ tal que $\lVert Tx \rVert\leq k\quad\forall x\in X$ y $\lVert x \rVert\leq_{1}$
>5. Existe un numero real positivo $k$ tal que $\lVert Tx \rVert\leq k\lVert x \rVert\quad\forall x\in X$ 

^cae689

>[!example]
>$T:C_{\mathbb{F}}[0,1]:\rightarrow \mathbb{F}$ definida por $$T(f)=f(0)$$ es continua
>>[!Proof]

^9798e1

>[!Lemma]
> Si $\{ c_{n} \}\in \ell^{\infty}$ y $\{ x_{n} \}\in \ell^{p}$ con $1\leq p<\infty$ entonces $\{ c_{n}x_{n} \}\in \ell^{p}$ y $$\sum^{\infty}_{n=1} \lvert c_{n}x_{n} \rvert ^{p} \leq\lVert \{ c_{n} \} \rVert_{\infty}^{p} \sum^{\infty}_{n=1} \lvert x_{n} \rvert ^{p} $$
> >[!Proof]

>[!example] Operador lineal continuo
>Si $\{ c_{n} \}\in \ell^{\infty}$ luego $T : \ell^{1}\rightarrow \mathbb{F}$ definida por $$T(\{ x_{n} \})=\sum^{\infty}_{n=1}  c_{n}x_{n}$$
>es continua

^a511bc

>[!example] Operador lineal continuo
>Si $\{ c_{n} \}\in \ell_{\infty}$ luego $T : \ell^{2}\rightarrow \ell^{2}$ definida por $$T(\{ x_{n} \})=\{ c_{n}x_{n} \}$$
>es continua

>[!example] Operador lineal no continuo
>$C_{\mathbb{C}}[0,1]$. $P$ subespacio de polinomios. $T :P\rightarrow P$ dada por $Tp=p'$
>Uso $x^{n}\in P$ con $n>1$ y se rompe $(e)$ [[Teórico 4#^cae689]]
>$$\lVert T(x^{n} ) \rVert =\lVert nx^{n-1}  \rVert =n\lVert x^{n-1}\rVert=n>1=\lVert x^{n} \rVert =1$$