---
dateCreated: 2024-09-29,23:50
---
>[!Corollary]
>$X$ normado tal que $(X,\lVert \cdot \rVert_{1})$ y $(X,\lVert \cdot \rVert_{2})$. Supongamos que $\lVert x \rVert_{1}<c\lVert x \rVert_{2}\quad\forall x\in X$ entonces $\lVert \cdot \rVert_{1}$ y $\lVert \cdot\rVert_{2}$ son equivalentes
>>[!Proof]-
>>Tomamos $I:(X,\lVert \cdot \rVert_{2})\rightarrow(X.\lVert \cdot \rVert_{1})$ que es lineal continua y biyectiva luego por teorema de aplicacion abierta sale, por que $I^{-1}$ seria continua (acotada)

>[!Corollary] (Teorema del grafico cerrado)
>Sean $X$ e $Y$ Banach y $T : X\rightarrow Y$ entonces
>$$\text{Grafico cerrado }\Rightarrow T \text{ continua}$$
>>[!Proof]-
>>1.$X$ e $Y$ Banach entonces grafico es cerrado es [[Teórico 5#^5463d1]] (no entiendo esto)
>>2. Sea $R:Gr(f)\rightarrow X$ dada por $R(x,Tx)=x$ entonces $R$ es biyectiva y lineal
>>3. $\lVert R(x,Tx) \rVert=\lVert x \rVert\leq \lVert x \rVert+\lVert Tx \rVert=\lVert (x,Tx) \rVert$ (Esto ultimo por definicion de norma)
>>4. Luego $R$ es continua
>>5. $R^{-1} : X\rightarrow Gr(f)$ es continua ([[Teórico 6#^c7bd75]])
>>6. Ahora $\forall x\in X$ $$\lVert Tx \rVert \leq \lVert X \rVert +\lVert Tx \rVert =\lVert (x,Tx) \rVert =\lVert R^{-1} x \rVert \leq \lVert R^{-1}  \rVert \lVert x \rVert $$
>>7. Entonces $T$ continua

^c58dff

>[!Lemma]
>$X$ e $Y$ normados $T\in B(X,Y)$ inversible entonces
>$$\lVert Tx \rVert \geq \lVert T^{-1}  \rVert^{-1} \lVert x \rVert \quad\forall x\in X$$
>>[!Proof]-
>>$x=T^{-1}(Tx)\Rightarrow \lVert x \rVert\leq \lVert T^{-1} \rVert\lVert Tx \rVert$

>[!Theorem]
>$X$ Banach, $Y$ normado $T\in B(X,Y)$ si $\exists \alpha>0$ tal que $\lVert Tx \rVert\geq\alpha\lVert x \rVert\quad\forall x\in X$ entonces $Im(T)$ es cerrado
>>[!Proof]-
>>1. Sea $\{ y_{n} \}\subseteq Im(T)$ tal que $y_{n}\rightarrow y$ en $Y$ entonces $\exists x_{n}\in X$ tal que $Tx_{n}=y_{n}$ 
>>2. $\{ y_{n} \}$ coverge entonces es de Cauchy $\lVert y_{n}-y_{m} \rVert=\lVert T(x_{n}-x_{m}) \rVert\geq\alpha\lVert x_{n}-x_{m} \rVert$
>>3. Entonces $\{ x_{n} \}$ es de Cauchy luego converge $x_{n}\rightarrow x\in X$ ($X$ Banach) entonces $Tx\in Im(T)$
>>4. $y_{n}=Tx_{n}\rightarrow Tx$ ($T$ continua)
>>5. $y=Tx\in Im(T)$ (Unicidad limite)

^6e0039

>[!Theorem]
>$X,Y$ Banach $T\in B(X,Y)$ entonces son equivalentes:
>1. $T$ es inversible
>2. $Im(T)$ es denso en $Y$ y $\exists \alpha>0$ tal que $\lVert Tx \rVert\geq\alpha\lVert x \rVert$
>>[!Proof]
>>a

> [!corollary]
>Sean $X,Y$ Banach $T\in B(X,Y)$
>$$T \text{ no es inversible }\iff \overline{Im(T)}\neq Y \quad \land\quad\exists \{ x_{n} \}\subseteq X \text{ con } \lVert x_{n} \rVert =1\quad\forall n\in \mathbb{N} \ / \ Tx_{n}\rightarrow0$$
>

^e2cb3f

>[!Remark]
>Aplicacion del corolario
>$f \in C[0,1]$. Sea $$T_{f} : L^{p}[0,1]\rightarrow L^{p}[0,1]\quad 1\leq p<\infty$$ 
>dada por $$T_{f}(u)=f.u$$
>Si $f(t)=t$ entonces $T_{f}$ es no inversible. 
>>[!Proof]-
>>1. $u_{n}=n^{\frac{1}{p}}\chi_{\left[ 0,\frac{1}{n} \right]}\in L^{p}[0,1]$
>>2. $\lVert u_{n} \rVert_{p}^{p}=\int_{0}^{1}\left( n^{\frac{1}{p}} \chi_{[ 0, \frac{1}{n} ]}\right)^{p}=1\quad\forall n\in \mathbb{N}$
>>3. Ademas $$\lVert T_{f}(u_{n}) \rVert_{p}^{p}=\int \left(f.n^{ \frac{1}{p}}\chi_{\left[ 0, \frac{1}{n} \right]}\right)^{p}dt = n\int_{0}^{ \frac{1}{n}}f^{p}=\frac{n}{(p+1)n^{p+1}}\longrightarrow 0\quad(n\rightarrow \infty)$$
>>4. No se bien por que $\overline{Im(T)}\neq Y$ entonces por [[Teórico 7#^e2cb3f]]  $T$ es no inversible

>[!Lemma]
>$S\neq \emptyset$, $X$ normado sobre $\mathbb{F}$ defino
>$$F(S,X)=\{ f:S\rightarrow X \} \text{ (espacios vectorial sobre } \mathbb{F})$$
>$$F_{b}(S,X)=\{ f : S\rightarrow X \ / \ \lVert f(S) \rVert \text{ es acotada} \}$$
>Entonces $\lVert f \rVert_{b}=\sup\{ \lVert f(s) \rVert:s\in S \}$ es norma y si $X$ es Banach entonces $F_{b}(S,X)$ es Banach 
>>[!Proof]
>>a

>[!Theorem] Acotado uniforme de Banach-Steinhaus
>Sean $U,X$ Banach. Sea $S\neq \emptyset$ y para cada $s\in S$ sea $T_{s}\in B(U,X)$ entonces si para cada $u\in U$ el conjunto $\{ T_{s}(u):s\in S \}$ es acotado ($\lVert T_{s}(u) \rVert_{X}\leq M \quad \forall s\in S$) entonces $\{ \lVert T_{s} \rVert:s\in S \}$ es acotado

^cd74fc

## Espacio Dual
>[!Theorem] Representacion de Riesz
>Sea $\mathcal{H}$ Hilbert $f\in H'$ entonces $\exists !y\in H$ tal que $f(x)=(x,y)\quad\forall x\in \mathcal{H}$. Mas aun $\lVert f \rVert_{\mathcal{H}'}=\lVert y \rVert_{\mathcal{H}}$
>>[!Proof]
>>

^a49476

>[!Theorem]
>$\mathcal{H}$ Hilbert sea $T_{H}:\mathcal{H}\rightarrow\mathcal{H'}$ dado por $T_{H}(y)=f_{y}$ donde $f_{y}(x):=(x,y)\quad\forall x\in \mathcal{H}$. Entonces $T_{H}$ es biyectivo. Ademas $\forall y\in \mathcal{H}\quad\alpha,\beta\in \mathbb{F}$
>1. $T_{H}(\alpha y + \beta z)=\overline{\alpha}T_{H}(y)+\overline{\beta}T_{H}(z)$
>2. $\lVert T_{H}(y) \rVert_{\mathcal{H}'}=\lVert y \rVert_{H}$
>Ademas se puede definir un producto interno en $\mathcal{H}'$ como 
>$$(T_{H}(z),T_{H}(y))_{\mathcal{H}'}=(y,z)_{\mathcal{H}}\quad \forall y,z\in \mathcal{H}$$
>Con este producto $\mathcal{H}'$ es Hilbert y la norma asociada a cada $f_{y}$ coincide con la norma de $f_{y}$ como elemento $B(\mathcal{H},\mathbb{F})$
>>[!Proof]
>>a

^6296e5

