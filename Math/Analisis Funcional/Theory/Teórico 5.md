## Operadores Lineales

>[!Definition] Operador Acotado
>Sean $X$ e $Y$ ev normados, $T : X\rightarrow Y$ lineal. $T$ se dice acotada si existe un numero $k\in \mathbb{R}$ tal que $$\lVert Tx \rVert<k\lVert x \rVert\quad\forall {x}\in X$$

>[!Remark]
>- Continua y acotada son intercambiables por [[Teórico 4#^cae689]].
>- Acotada en transformaciones lineales no es el mismo concepto que acotada en funciones reales 
>- Llamamos $B(X,Y)$ al conjunto de todos los operadors $T : X\rightarrow Y$ acotados
>- Si $X$ e $Y$ ev son normados $B(X,Y)\subseteq L(X,Y)$

>[!example]
>Sean $a,b\in \mathbb{R}$, $k : [a,b]\times [a,b]\rightarrow \mathbb{C}$ continua y 
>$$M=\sup\{ \lvert k(s,t) \rvert:(s,t)\in [a,b]\times [a.b]  \}$$
>- Si $g\in C[a,b]$ entonces $f:[a,b]\rightarrow\mathbb{C}$ dada por $$f(s)=\int_{a}^{b}  k(s,t)g(t)dt$$ esta en $C[a,b]$
>- $K : C[a,b]\rightarrow C[a,b]$ lineal definida por $$(K(g))(s)=\int_{a}^{b} k(s,t)g(t)dt$$ entonces $K\in B(C[a,b],C[a,b])$ y $$\lVert K(g) \rVert_{\infty} \leq M(b-a)\lVert g \rVert_{\infty}$$

^33cdb2

>[!Theorem] En dim finita transformaciones lineales son continuas
>Sea $X$ espacio vectorial normado de dimension finita $Y$ espacio vectorial cualquiera y $T : X\rightarrow Y$ lineal. Entonces $T$ es continua
>>[!Proof]-
>>1. Definimos $\lVert x \rVert_{1}=\lVert x \rVert_{X}+\lVert Tx \rVert_{Y}$
>>2. Vemos que es norma
>>3. Como son todas equivalentes en dim finita $\lVert x \rVert_{X}+\lVert Tx \rVert_{Y}=\lVert x \rVert_{1}\leq K\lVert x \rVert_{X}$
>>4. Por def $\lVert Tx \rVert_{Y}\leq(K-1)\lVert x \rVert_{X}$

>[!Lemma]
>Si $X$ e $Y$ son normados $T : X\rightarrow Y$ lineal continua entonces $Nu(T)$ es cerrado
>>[!Proof]-
>>1. $Nu(T)=\{ x\in X:T(x)=0 \}$ y $\{ 0 \}$ es cerrado en $Y$ (por que es completo)
>>2. $T$ continua y preimagen de cerrado es cerrado

>[!Definition]
>$X$ e $Y$ normados $T : X\rightarrow Y$ lineal. Llamamos *grafico* de $T$ al subespacio $\mathcal{G}$ de $X\times Y$ definido por $$\mathcal{G}=\{ (x,Tx):x\in X \}$$

>[!Lemma] Grafico es cerrado
>$X$ e $Y$ normados $T : X\rightarrow Y$ lineal y continua entonces $\mathcal{G}$ es cerrado
>>[!Proof]
>>a

^5463d1

>[!Lemma] 
>$X$ e $Y$ normados. Sean $S,T \in B(X,Y)$ con $\lVert Sx \rVert\leq k_{1} \lVert x \rVert$ y $\lVert Tx \rVert\leq k_{2}\lVert x \rVert$ entonces $\forall x\in X$ y $\lambda\in \mathbb{F}$ vale
>1. $\lVert (S+T)x \rVert \leq(k_{1}+k_{2})\lVert x \rVert$
>2. $\lVert (\lambda S)x \rVert\leq\lvert \lambda \rvert k_{1}\lVert x \rVert$
>
>Asi podemos concluir que $B(X,Y)$ es un subespacio de $L(X,Y)$ por lo tanto un espacio vectorial

## La norma de los operadores Lineales Acotados 

>[!Lemma]
>Sean $X$ e $Y$ normados. Si $\lVert \cdot \rVert:B(X,Y)\rightarrow\mathbb{R}$ esta definida por $$\lVert T \rVert =\sup\{ \lVert Tx \rVert :\lVert x \rVert \leq 1\}$$
>Entonces $\lVert \cdot \rVert$ es una norma en $B(X,Y)$
>>[!Proof]-
>>1. Norma de 0
>>	2. $\lVert T \rVert=0 \iff \lVert Tx \rVert=0 \quad \forall x\in X\iff Tx=0\quad\forall x\in X\iff T \text{ es la transformacion lineal 0}$
>>3. Saca escalar
>>	4. $\lVert \lambda T \rVert=\sup \{ \lVert \lambda Tx \rVert:\lVert x \rVert\leq 1 \}=\lvert \lambda \rvert\sup \{ \lVert Tx \rVert \}=\lvert \lambda \rvert\lVert T \rVert$ 
>>5. Desigualdad Triangular:
>>	6. Notar que $\left\lVert  T\left( \frac{x}{\lVert x \rVert} \right)  \right\rVert\leq\lVert T \rVert$ (Porque $\lVert T \rVert$ es supremo). Luego $\lVert Tx \rVert\leq\lVert T \rVert\lVert x \rVert$
>>	7. $\lVert (S+T)(x) \rVert\leq\lVert Sx \rVert+\lVert Tx \rVert \leq\lVert S \rVert\lVert x \rVert+\lVert T \rVert\lVert x \rVert = (\lVert S+T \rVert)\lVert x \rVert$
>>	8. Usando supremo de ambos lados $\lVert S+T \rVert\leq\lVert S \rVert+\lVert T \rVert$

>[!Remark]
>$\lVert T \rVert=\sup\{ \lVert Tx \rVert:\lVert x \rVert\leq {1} \}=\sup\{ \lVert Tx \rVert :\lVert x \rVert=1\}$
>>[!Proof]-
>>Sea $\beta= \sup\{ \lVert Tx \rVert:\lVert x \rVert\leq {1} \}$ y $\alpha =\sup\{ \lVert Tx \rVert :\lVert x \rVert=1\}$ 
>>9. $(\beta \geq\alpha )$ Trivial
>>10. $(\leq)$ Supongamos $\alpha < \beta$
>>11. $\exists x_{j}$ con $\lVert x_{j} \rVert\leq 1$ tal que $\lVert Tx_{j} \rVert \rightarrow\beta$ (Por ser supremo)
>>12. Entonces $\exists x_{0}$ con $\lVert x_{0} \rVert\leq 1$ tal que $\lVert Tx_{0} \rVert>\alpha$
>>13. Entonces $\alpha\geq \lVert T(\frac{x_{0}}{\lVert x_{0} \rVert}) \rVert =\frac{\lVert Tx_{0} \rVert}{\lVert x_{0} \rVert}\geq\lVert Tx_{0} \rVert>\alpha$ (Por def de supremo y $\lVert x_{0} \rVert \leq 1$) Absurdo

>[!Remark]
>Notar que del [[Teórico 4#^cae689]] se desprende 
>$$\sup\{ \lVert Tx \rVert :\lVert x \rVert \leq 1  \}=\inf\{ k:\lVert Tx \rVert \leq k\lVert x \rVert\quad \forall x\in X  \}$$

>[!example]
>$T : C_{\mathbb{F}}[0,1]\rightarrow \mathbb{F}$ lineal definido como $$T(f)=0$$
>entonces $\lVert T \rVert=1$
>>[!Proof]-
>>14. Ya probamos en [[Teórico 4#^9798e1]] que $\lvert T(f) \rvert\leq 1\lVert f \rVert$ 
>>15. $\lVert T \rVert=\inf\{ k:\lVert T(f) \rVert \leq k\lVert f \rVert: \forall f\in C_{\mathbb{F}}[0,1]\}\leq 1$
>>16. Por otro lado sea $g:[0,1]\rightarrow\mathbb{C}$ esta definida como $g(x)=1$ entonces $g\in C_{\mathbb{C}}[0,1]$
>>17. $\lVert g \rVert=\sup\{ \lvert g(x) \rvert:x\in [0,1] \}$
>>18. $\lvert T(g) \rvert=\lvert g(0) \rvert=1$ (Todo por definicion de $T$)
>>19. $1=\lvert T(g) \rvert\leq\lVert T \rVert\lVert g \rVert=\lVert T \rVert$
>>20. Finalmente $\lVert T \rVert=1$

>[!Theorem]
>Sea $X$ un normado y sea $W$ un subespacio denso de $X$. Sea $Y$ un Banach y $S\in B(W,Y)$
>- (a) Sea $x\in X$ y $\{ x_{n} \},\{ y_{n} \}$ sucesiones en $W$ tales que $x_{n}\rightarrow x$ e $y_{n}\rightarrow x$ entonces $\{ S(x_{n}) \}$ y $\{ S(y_{n}) \}$ ambas convergen y $\lim_{ n \to \infty }S(x_{n})=\lim_{ n \to \infty }S(y_{n})$
>- (b)  Existe un $T\in B(X,Y)$ tal que $\lVert T \rVert=\lVert S \rVert$ y $Tx=Sx\quad\forall x\in W$

^33d528

>[!Definition] Isometria
>Sean $X$ e $Y$ normados $T\in L(X,Y)$. Decimos que $T$ es una isometria si $$\lVert Tx \rVert=\lVert x \rVert\quad\forall x\in X$$
>En todo espacio normado existe por lo menos una isometria

>[!Remark] Isormorfismo isometrico
>1. $T$ isometria $\Rightarrow$ $T$ continua (acotada) e inyectiva
>2. Si ademas $T$ sobreyectiva entonces es biyectiva lo nombramos isormofismo isometrico
>3. En dim finita toda isometria es biyectiva en dim infinita no necesariamente

>[!Example]- Isometria no biyectiva
> $T : \ell^{2}\rightarrow \ell^{2}$ dada por $$T(x_{1},x_{2},\ldots)=(0,x_{1},x_{2},\ldots)$$
> es una isometria (normalmente se la nombra "unilateral shift"). No es biyectiva

>[!Lemma]
>$X$ e $Y$ normados $T\in B(X,Y)$. Si $T$ es una isometria entonces $T$ acotada y $\lVert T \rVert=1$

>[!Theorem]
>Sea $\mathcal{H}$ Hilbert de dimension infinita sobre $\mathbb{F}$ con una base ortonormal de hilbert $\{ e_{n} \}$. Entonces existe un isomorfismo isometrico $T:\mathcal{H}\rightarrow\ell^{2}_{\mathbb{F}}$ tal que $T(e_{n})=\tilde{e_{n}}\quad\forall n\in \mathbb{N}$ (Aca $\{ \tilde{e_{n}} \}$ seria base de Hilbert de $\ell^{2}$)
>

>[!Corollary] 
>Todo $\mathcal{H}$ Hilbert sobre $\mathbb{F}$ de dimension infinita y separable es isometricamente isomorfo a $\ell^{2}_{\mathbb{F}}$

## El espacio $B(X,Y)$ y el espacio Dual

>[!Theorem] $Y$ Banach entonces $B(X,Y)$ Banach
>Si $X$ normado e $Y$ Banach entonces el espacio normado $B(X,Y)$ es Banach
>>[!Proof] DUDA
>> 1. Sea $\{ T_{n} \}$ sucesion de Cauchy en $B(X,Y)$. Entonces vale $\lVert T_{n} \rVert\leq M \quad\forall n\in \mathbb{N}\quad (1)$ Veamoslo
>> 	2. Esta acotada por que $T_{m}\in B(X,Y)$ entonces $\lVert T_{m} \rVert\leq K_{m}$
>> 	3. $\lVert T_{n} \rVert\leq \lVert T_{n}-T_{m} \rVert+\lVert T_{m} \rVert\leq \epsilon+K_{m}\quad\forall n\geq n_{0}$
>> 4. $\lVert T_{n}(x)-T_{m}(x) \rVert=\lVert (T_{n}-T_{m})(x)\rVert\leq \lVert T_{n}-T_{m} \rVert\lVert x \rVert$. 
>> 5. Entonces como $\{ T_{n} \}$ es Cauchy $\{ T_{n}(x) \}$ es Cauchy en $Y$
>> 6. Como $Y$ Banach entonces converge entonces definimos $$T(x)=\lim_{ n \to \infty } T_{n}(x)$$
>> 7. Veamos que es lineal $$T(x+y)=\lim_{ n \to \infty } T_{n}(x+y)=\lim_{ n \to \infty } T_{n}x+T_{n}y=\lim_{ n \to \infty } T_{n}x+\lim_{ n \to \infty } T_{n}y=Tx+Ty$$
>> Analogo para escalar
>> 8. Veamos que es acotada. $\lVert Tx \rVert=\lim_{ n \to \infty }\lVert T_{n}x \rVert$. Entonces 
>> $$\lVert Tx \rVert \leq \sup \{ \lVert T_{n}x \rVert :n\in \mathbb{N}  \}\leq \sup \{ \lVert T_{n} \rVert \lVert x \rVert :n\in \mathbb{N}  \}\leq M\lVert x \rVert $$ Usando $(1)$.
>> Y ahora viene parte que esta rara (Preguntar)

^7e0978

>[!Definition] 
>Sea $X$ normado sobre $\mathbb{F}$. El espacio $B(X,\mathbb{F})$ es llamado *espacio dual* de $X$ y se denota $X'$

>[!Corollary]
>Si $X$ es normado entonces $X'$ es Banach
>>[!Proof]-
>>$\mathbb{F}$ es completo entonces usamoss [[Teórico 5#^7e0978]]

>[!Example]
>Sea $\mathcal{H}$ Hilbert sobre $\mathbb{F}$, sea $y\in \mathcal{H}$. Si $f:\mathcal{H}\rightarrow\mathbb{F}$ es definida como $f(x)=(x,y)$ entonces $f$ es un elemento de $\mathcal{H}'$

>[!Theorem] (Riesz-Frechet)
>Si $\mathcal{H}$ es Hilbert y $f\in \mathcal{H}'$ entonces existe unico $y\in \mathcal{H}$ tal que $f(x)=(x,y)\quad\forall x\in \mathcal{H}$. 
>Ademas $\lVert f \rVert=\lVert y \rVert$
>>[!Proof]
>>pendiente

>[!Theorem]
>1. Si $c=\{ c_{n} \}\in \ell^{\infty}$ y $\{ x_{n} \}\in \ell^{1}$ entonces $\{ c_{n}x_{n} \}\in \ell^{1}$ y si $f_{c}:\ell^{1}\rightarrow\mathbb{F}$ esta definida como $f_{c}(x_{n})=\sum^{\infty}_{n=1}c_{n}x_{n}$ entonces $f_{c}\in (\ell^{1})'$ con $\lVert f_{c} \rVert\leq\lVert c \rVert_{\infty}$
>2. Si $f\in (\ell^{1})'$ entonces existe un $c\in \ell^{\infty}$ tal que $f=f_{c}$ y $\lVert c \rVert_{\infty}\leq\lVert f \rVert$
>3. El espacio $(\ell^{\infty})'$ es isometricamente isomorfo a $\ell^{\infty}$
>>[!Proof]
>>1. Se desprende de [[Teórico 4#^a511bc]]
>>2. 