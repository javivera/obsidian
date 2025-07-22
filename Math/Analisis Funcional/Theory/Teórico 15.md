---
dateCreated: 2024-10-19,11:18
---
>[!Proposition]
>$\mathcal{H}$ Hilbert $T\in B(H)$ inversible entonces $T^{*}$ inversible y $(T^{*})^{-1}=(T^{-1})^{*}$
>>[!Proof]-
>>1. Tomamos adjunta en $TT^{-1}=T^{-1}T=Id$
>>2. $(TT^{-1})^{*}=(T^{-1}T)^{*}=Id^{*}$ entonces $(T^{-1})^{*}T^{*}=T^{*}(T^{-1})^{*}=Id$ por [[Teórico 14#^0f7d67]]
>>3. Entonces $T^{*}$ invertible y $(T^{*})^{-1}=(T^{-1})^{*}$  

^1adfa9
## Operadores normales autoadjuntos y unitarios

>[!Definition]
>$\mathcal{H}$ Hilbert, $T\in B(\mathcal{H})$ es normal si $TT^{*}=T^{*}T$
>

>[!Example]-
>1. Si $f\in C[0,1]$ con $T_{f}\in B(\ell^{2}[0,1])$ dada por $T_{f}(g)=f.g$ Ver que $T_{f}$ es normal 

>[!Example]-
>1. El operador $S\in B(\ell^{2})$ dado por $S(y_{1},y_{2},\ldots)=(0,y_{1},y_{2},\ldots)$ no es normal

>[!Example]-
>1. Si $T$ normal entonces $T-\lambda Id$ es normal

^81235c

>[!Lemma]
>$T\in B(\mathcal{H})$ normal $\alpha >0$ entonces
>- (a) $\lVert Tx \rVert=\lVert T^{*}x \rVert\quad\forall x\in \mathcal{H}$ 
>- (b) $\lVert Tx \rVert\geq\alpha \lVert x \rVert\quad\forall x\in \mathcal{H}$ entonces $\ker T^{*}=\{ 0 \}$ 
>>[!Proof]-
>>(a)
>>$$\lVert Tx \rVert ^{2} -\lVert T^{*} x \rVert ^{2} =(Tx,Tx)-(T^{*} x,T^{*}x )=(T^{*} Tx,x)-(TT^{*} x,x)=0$$ 
>>
>>(b) Sea $y\in \ker T^{*}$  entonces por (a) $0=\lVert T^{*}y \rVert=\lVert Ty \rVert\geq \alpha \lVert y \rVert$ entonces $y=0$

^6cb446

>[!Corollary]
>$T\in B(\mathcal{H})$ es normal entonces $T$ inversible $\iff \exists \alpha >0$ tal que $\lVert Tx \rVert\geq\alpha \lVert x \rVert\quad\forall x\in \mathcal{H}$
>>[!Proof]-
>>$(\Leftarrow)$ [[#^6cb446]] implica $\ker T^{*}=\{ 0 \}$ luego por [[Teórico 14#^5be0d2]]
>>$(\Rightarrow)$  Sale directo de [[Teórico 14#^5be0d2]]
>

^acb07f

>[!Definition]- Operador Autoadjunto
>$\mathcal{H}$ Hilbert, $T\in B(\mathcal{H})$ es autoadjunta si $T=T^{*}$
>

>[!Example]-
>1. $T_{f}$ es autoadjunta $\iff f$ es a valores reales

>[!Example]-
>1. El operador identidad es autoadjunto

>[!Lemma] DUDA
>$\mathcal{H}$ Hilbert $S=\{ T\in B(\mathcal{H}):T\text{ autoadjunta} \}$ entonces 
>- (a) $\alpha ,\beta\in \mathbb{R}$ y $T_{1},T_{2}\in S$ entonces $\alpha T_{1}+\beta T_{2}\in S$. 
>- (b) $S$ cerrado en $B(H)$
>- (c) $T\in S$ inversible entonces $T^{-1}\in S$ 
>Entonces (a) nos dice que $S$ es espacio vectorial y (b) que es completo (por que $B(\mathcal{H})$ es completo) entonces $S$ es Banach Real (Real??) 
>>[!Proof]-
>>(a) Ejercicio
>>
>>(b) 
>>1. Sea $T_{n}\subseteq S$ tal que $T_{n}\rightarrow T\in B(\mathcal{H})$ entonces $\{ T^{*}_{n} \}$ converge a $T^{*}$ por [[Teórico 14#^0589c9]] parte (c) 
>>2. Entonces $\{ T_{n} \}$ converge a $T^{*}$ por que $T_{n}=T_{n}^{*}\quad\forall n\in \mathbb{N}$
>>3. Finalmente $T=T^{*}$ entonces $T\in S$. Mostrando que $S$ es cerrado
>>
>>(c) 
>>1. $T^{-1}=(T^{*})^{-1}=(T^{-1})^{*}$

^2e9773

>[!Lemma]
>Sea $\mathcal{H}$ un Hilbert complejo y $T\in B(\mathcal{H})$ entonces
>- (a) $TT^*$ y $T^{*}T$ son autoadjuntos
>- (b) $T=R+iS$ con $R,S$ autoadjuntos
>>[!Proof]-
>>(a) 
>>1. $(T^{*}T)^{*}=T^{*}T^{**}=T^{*}T$ por [[Teórico 14#^0f7d67]]
>>2. Entonces $T^{*}T$ es auto adjunta. Similarmente $TT^{*}$ es autoadjunta
>>
>>(b) 
>>1. Sea $R=\frac{1}{2}(T+T^{*})$ y $S=\frac{1}{2i}(T-T^{*})$. Entonces $T=R+iS$ 
>>2. Ademas $R^{*}=\frac{1}{2}(T+T^{*})^{*}=\frac{1}{2}(T^{*}+T)=R$ entonces $R$ autoadjunta
>>3. $S^{*}=\frac{-1}{2i}(T-T^{*})^{*}=-\frac{1}{2i}(T^{*}-T^{**})=\frac{1}{2i}(T-T^{*})=S$ entonces $S$ es autoadjunta

>[!Definition]- Operador Unitario
>Si $\mathcal{H}$ es un Hilbert complejo y $T\in B(\mathcal{H})$ entonces $T$ es unitaria si $TT^{*}=T^{*}T=I$  

>[!Example]- Ejercicio
>$T_{f}\in B(L^{2}[0,1])$ dada por $T_{f}g=fg$ entonces:
>$$T_{f}\text{ es unitario}\iff \lvert f(t) \rvert =1\quad\forall t\in (0,1)$$      

>[!Lemma]
>$X$ evpi. Si $S,T\in B(X)$ son tal que $(Sz,z)=(Tz,z)\quad\forall z\in X$ entonces $S=T$  
>>[!Proof]-
>>Es $$4(Tx,y)=(T(x+y),x+y)-(T(x-y),x-y) + i(T(x+iy),x+iy)-i(T(x-iy),x-iy)=4(Sx,y)$$  
>>La 1era igualdad vale por Lema 3.14 Youngson con $u=Tx$ $v=Ty$ la ultima vale por hipotesis
>>

^654c1f

>[!Theorem]
>Sea $\mathcal{H}$ un Hilbert complejo y $T,U\in B(\mathcal{H})$ 
>- (a) $T^{*}T=I\iff T$ es isometria
>- (b) $U^{*}U=UU^{*}=I\iff U$ es isometria sobreyectiva
>>[!Proof]-
>>(a) 
>>1. Supongamos $T^{*}T=I$ entonces $\lVert Tx \rVert^{2}=(Tx,Tx)=(T^{*}Tx,x)=(x,x)=\lVert x \rVert^{2}$
>>2. Reciprocamente si $T$ es iso entonces $(T^{*}Tx,x)=(Tx,Tx)=\lVert Tx \rVert^{2}=\lVert x \rVert^{2}=(x,x)$ por [[Teórico 15#^654c1f]] listo
>>
>>(b)
>>1. Supognamos $U$ unitario entonces $U$ es isometria por (a) 
>>2. Si $y\in \mathcal{H}$ entonces $y=U(U^{*}y)$ osea $y\in Im(U)$ entones $U$ sobre
>>3. Reciprocamente $U$ es isometria sobreyectiva entonces $U^{*}U=I$ por parte (a)
>>4. Si $y\in \mathcal{H}$ entonces como $U$ es sobre existe $x \in \mathcal{H}$ tal que $Ux=y$
>>5. $$UU^*y=UU^*(Ux)=U(U^*U)x=UIx=Ux=y$$
>>6. Luego $UU^*=I$ y entonces $U$ unitaria  

>[!Lemma]
>$\mathcal{H}$ Hilbert y $\mathcal{U}=\{ U\in B(\mathcal{H}):U\text{ unitaria} \}$
>- (a) $U\in \mathcal{U}$ entonces $U^{*}\in \mathcal{U}$ y $\lVert U \rVert=\lVert U^{*} \rVert=1$
>- (b) $U_{1},U_{2}\in \mathcal{U}$ entonces $U_{1}U_{2},U^{-1}\in \mathcal{U}$
>- (c) $\mathcal{U}$ es cerrado en $B(H)$  
>>[!Proof]-
>>(a)
>>1. $U^{*}U^{**}=U^{*}U=I$ y analogo la otra. Osea $U^{*}\in \mathcal{U}$.
>>2. Por teo anterior $U$ y $U^{*}$ son isometrias entonces $\lVert U \rVert=\lVert U^{*} \rVert=1$ ($\lVert Ux \rVert=\lVert x \rVert$ luego uso supremo, vale para toda isometria)
>>
>>(b) $(U_{1}U_{2})(U_{1}U_{2})^{*}=(U_{1}U_{2})(U_{2}^{*}U_{1}^{*})=Id=(U_{2}^{*}U_{1}^{*})(U_{1}U_{2})=(U_{1}U_{2})^{*}(U_{1}U_{2})$  
>>
>>(c)
>>1. Sea $\{ U_{n} \}\subseteq \mathcal{U}$ tal que $U_{n}\rightarrow U$ en $B(H)$ entonces $U_{n}^{*}\rightarrow U^{*}$ (por continuidad de tomar adjunta) por lo tanto $U_{n}U_{n}^{*}\rightarrow UU^{*}$ 
>>(Notar que esto vale porque $A_{n}\rightarrow B \quad\land \quad B_{n}\rightarrow B$ entonces $A_{n}B_{n}\rightarrow AB$ ) 
>>2. Como $U_{n}U_{n}^{*}=Id$ entonces $UU^{*}=Id$
>>3. Dando vuelta los factores llegamos a $U^{*}U=Id$. Mostrando que $U\in \mathcal{U}$  
## El espectro de un operador

>[!Definition]- Espectro
>$\mathcal{H}$ Hilbert $T\in B(H)$ definimos el espectro de $T$ como 
>$$\sigma(T)=\{ \lambda\in \mathbb{C}:T-\lambda Id \text{ es no inversible} \}$$
>Notar que a priori no sabemos si $\sigma(T)\neq\emptyset$ pues $T$ puede no tener autovalores

>[!Proposition]
>$T\in B(H)$ si $\lambda$ es autovalor de $T$ entonces $\lambda\in \sigma(T)$
>>[!Proof]-
>>Si $Tx=\lambda x$ con $x\neq0$ entonces $x\in \ker (T-\lambda Id)$

^900583

>[!Remark]
>El unilateral shift $S\in B(\ell^{2})$ no tiene autovalores
>>[!Proof]-
>>1. Recordar $S(y_{1},y_{2},\ldots)=(0,y_{1},\ldots)$. 
>>2. Supongo $\lambda$ es aval de avec $y =(y_{1},y_{2},\ldots)\neq0$ entonces $(0,y_{1},\ldots)=S(y_{1},y_{2},\ldots)=\lambda(y_{1},y_{2},\ldots)=(\lambda y_{1},\lambda y_{2},\ldots)$ 
>>3. Por lo tato $\lambda=0$ por lo cual $y_{1}=y_{2}=\ldots=0$ o $\lambda \neq0$ entonces $y_{1}=0$ entonces $y_{2}=0$ etc.
>>4. Absurdo por que $\lambda$ aval y entonces su autovector tiene que ser distinto de 0
>>5.(Osea el $\ker(T-\lambda I)=\{ 0 \}\quad\forall \lambda\in \mathbb{F}$ pero esto en dim infinita no es lo mismo que ser no inversible) 

>[!Theorem]
>$\mathcal{H}$ Hilbert y $T\in B(\mathcal{H})$
>- (a) $\lvert \lambda \rvert > \lVert T \rVert$ entonces $\lambda\not\in \sigma(T)$
>- (b) $\sigma(T)$ es cerrado osea $\sigma(T)$ compacto (en $\mathbb{C}$  cerrado y acotado es compacto) 
>>[!Proof]-
>>(a) 
>>1. Si $\lvert \lambda \rvert>\lVert T \rVert$ entonces $\lVert \lambda^{-1}T \rVert <1$ 
>>2. Luego $I-\lambda^{-1}T$ es inversible por [[Teórico 6#^aa4e9d]]
>>3. Por lo tanto $\lambda I-T$ es inversible tambien (componiendo con $\lambda I$ que es inversible) , mostrando que $\lambda\not\in\sigma(T)$    
>>
>>(b)
>>1. Sea $F : \mathbb{C}\rightarrow B(H)$ dada por $F(\lambda)=\lambda I-T$ entonces $F$ es continua pues 
>>$$\lVert F(u)-F(\lambda) \rVert =\lVert uI-T-\lambda I+T \rVert=\lvert u-\lambda \rvert \lVert I \rVert =\lvert u-\lambda \rvert  $$
>>2. Luego como $G=\{ T\in B(\mathcal{H}): T\text{ no es inversible} \}$ es cerrado por que $G^{c}$ es abierto por [[Teórico 6#^efd74a]]
>>3. Y como $\sigma(T)=F^{-1}(G)$ entonces $\sigma(T)$ es cerrado 

^4949f7

>[!Proposition]
>$\mathcal{H}$ Hilbert, $T\in B(H)$ entonces 
>$$\sigma(T^{*} )=\{ \overline{\lambda}:\lambda\in \sigma(T)  \}$$
>>[!Proof]-
>>1. Si $\lambda\not\in\sigma(T)$ entonces $T-\lambda I$ es inversible  
>>2. Luego $(T-\lambda I)^{*}=T^{*}-\lambda I$ es inversible Por [[Teórico 15#^1adfa9]] entonces $\overline{\lambda}\not\in\sigma(T^{*})$  
>>3. Permutando los roles de $T$ y $T^{*}$ deducimos que $\overline{\lambda}\not\in\sigma(T^{*})$ entonces $\lambda \not\in\sigma(T)$ 

^6c5fc5

>[!Example]
>Sea $S$ el unilateral shift entonces 
>- (a) si $\lambda\in \mathbb{C}$ con $\lvert \lambda \rvert<1$ entonces $\lambda$ es aval de $S^{*}$
>- (b) $\sigma(S)=\{ \lambda\in \mathbb{C}:\lvert \lambda \rvert\leq 1 \}$
>>[!Proof]-
>>(a) 
>>1. Sea $\lambda\in \mathbb{C}$ con $\lvert \lambda \rvert=1$ queremos $\{ x_{n} \}\in \ell^{2}$ tal que $S^{*}(x_{1},x_{2},\ldots)=(\lambda x_{1},\lambda x_{2},\ldots)$
>>2. Sabemos que $S^{*}(x_{1},x_{2},\ldots)=(x_{2},x_{3},\ldots)$  
>>3. Podemos definir $x_{n}=(1,\lambda,\lambda^{2},\ldots)$ y se cumple la igualdad.
>>4. Como $\lvert \lambda \rvert<1$ entonces $\{ x_{n} \}\in \ell^{2}$ pues $\sum^{\infty}_{n=1}\lvert x_{n} \rvert^{2}=\sum^{\infty}_{n=1}\lvert \lambda^{n} \rvert^{2}=\sum^{\infty}_{n=1}\lvert \lambda \rvert^{2n}<\infty$ 
>>
>>(b)
>>1. Tenemos $\{ \lambda\in \mathbb{C}:\lvert \lambda \rvert<1 \}\subseteq \sigma(S^{*})$ por parte (a) y [[Teórico 15#^900583]] 
>>2. Entonces $\{ \overline{\lambda}\in \mathbb{C} :\lvert \lambda \rvert<1\}\subseteq \sigma(S)$ por [[Teórico 15#^6c5fc5]] 
>>3. Y es geometria elemental que $\{ \overline{\lambda}\in \mathbb{C}:\lvert \lambda \rvert<1 \}=\{ \lambda\in \mathbb{C}:\lvert \lambda \rvert<1 \}$  
>>4. Como $\sigma(S)$ es cerrado [[Teórico 15#^4949f7]] tenemos que $\{ \lambda\in \mathbb{C}:\lvert \lambda \rvert\leq 1 \}\subseteq \sigma(S)$ (Osea contiene a su clausura) 
>>5. Por otro lado si $\lvert \lambda \rvert>1$  entonces $\lambda\not\in\sigma(S)$ por [[Teórico 15#^4949f7]]  dado que $\lVert S \rVert=1$ (Unilateral shift es isometria)  
>>6. Entonces $\sigma(S)=\{ \lambda\in \mathbb{C} :\lvert \lambda \rvert\leq 1\}$

>[!Theorem] DUDA
>$\mathcal{H}$ Hilbert $T\in B(\mathcal{H})$
>- (a) Si $p$ es polinomio entonces $$\sigma(p(T))=\{ p(u):u\in \sigma(T) \}$$
>- (b) Si $T$ inversible entonces $$\sigma(T^{-1})=\{ u^{-1}:u\in \sigma(T) \}$$
>>[!Proof]-
>>(a)
>>1. Sea $\lambda\in \mathbb{C}$, $f(z)=\lambda-p(z)$
>>2. Entonces $f$ tambien es un polinomio por lo tanto tiene una factorizacion de la forma 
>>$$f(z)=c\prod_{j=1}^{n}(z-u_{j})\quad c\neq0\quad u_{j}\in \mathbb{C}$$
>>3. Ahora $$\begin{align}\lambda\not\in\sigma(p(T))&\iff\lambda I-p(T)\text{ inversible} \\
&\iff f(z)\text{ inversible} \\
&\iff c\prod(T-u_{j}I)\text{ inversible}  \\
(*)&\iff T-u_{j}I \text{ inversible}\quad\forall 1\leq j\leq n  \\
&\iff \text{ los ceros de }f\not\in\sigma(T)  \\
&\iff f(u)\neq 0\quad\forall u\in \sigma(T) \\
&\iff \lambda\neq p(u)\quad\forall u\in \sigma(T)\\
\end{align}$$
>>(*) ($T_{1}T_{2}$ inversible $\iff T_{1}$ y $T_{2}$ son inversibles) $\iff T_{1},T_{2}$ conmutan y en este caso conmutan por lo cual vale el sii
>>
>>(b)
>>1. $T$ inversible entonces $0\not\in\sigma(T)$
>>2. Entonces todo elemento de $\sigma(T^{-1})$ se puede escribir como $u^{-1}$ con $u\in \mathbb{C}$ (DUDA) 
>>Ademas $$u^{-1}I-T^{-1}=-T^{-1}u^{-1}(uI-T)\quad (-T^{-1}u^{-1} \text{ es invertible})$$
>>3. Entonces 
>>$$\begin{align} 
 u^{-1}\in \sigma(T^{-1})&\iff u^{-1}I-T^{-1} \text{ es no inversible}\\
&\iff -T^{-1}u^{-1}(uI-T) \text{ es no inversible} \\
&\iff uI-T \text{ es no inversible} \\
&\iff u\in \sigma(T)\\
\end{align}$$ 
>>4. Entonces $\sigma(T^{-1})=\{ u^{-1}:u\in \sigma(T) \}$  

^145b8c

>[!Definition]-
>$\mathcal{H}$ Hilbert $T\in B(\mathcal{H})$ $p$ polinomio escribimos $p(\sigma(T))=\{ p(u):u\in \sigma(T) \}$.
>Por lo tanto el teo anterior dice que $p(\sigma(T))=\sigma(p(T))$

>[!Corollary]
>Si $U\in B(\mathcal{H})$ es unitario $$\sigma(U)\subseteq \{ \lambda\in \mathbb{C}:\lvert \lambda \rvert =1 \}$$
>>[!Proof]-
>>1. Si $U$ unitario $\lVert U \rVert=1$ entonces $\sigma(U)\subseteq \{ \lambda\in \mathbb{C}:\lvert \lambda \rvert\leq 1 \}$ por [[Teórico 15#^4949f7]]
>>2. Tambien $\sigma(U^{*})\subseteq \{ \lambda\in \mathbb{C}:\lvert \lambda \rvert\leq 1 \}$ por que $U^{*}$ tambien es unitario
>>3. Pero $U^{*}=U^{-1}$ (def unitario) entonces $$\sigma(U)=\sigma((U^{-1})^{-1})=\sigma((U^{*} )^{-1})=\{ \lambda^{-1}:\lambda\in \sigma(U^{*} ) \}\subseteq \{ \lambda\in \mathbb{C}:\lvert \lambda \rvert \geq1 \}$$
>>Por [[Teórico 15#^145b8c]] la ultima igualdad, la inclusion por que $\lVert U^{*} \rVert=1$ entonces $\sigma(U^{*})\subseteq \{ \lambda\in \mathbb{C}:\lvert \lambda \rvert\leq 1 \}$  

>[!Definition] Radio Espectral 
>$\mathcal{H}$ Hilbert $T\in B(H)$ definimos
>$$r_{\sigma}=\sup\{ \lvert \lambda \rvert :\lambda\in \sigma(T) \} \quad \text{ Radio Espectral de }T$$
>
>$$V(T)=\{ (Tx,x):\lVert x \rVert =1 \}\quad\text{ Rango Numérico de } T$$

>[!Lemma]
>$\mathcal{H}$ Hilbert $T\in B(\mathcal{H})$ normal entonces $\sigma(T)\subseteq \overline{V(T)}$  
>>[!Proof]-
>>1. Sea $\lambda\in \sigma(T)$. Como $T$ Normal entonces $T-\lambda I$ es normal por ejemplo 6.18 libro 
>>2. Pero ademas no es inversible entonces existe $x_{n}$ en $\mathcal{H}$ con $\lVert x_{n} \rVert=1\quad\forall n\in \mathbb{N}$ y $\lim_{ n \to \infty }\lVert (T-\lambda I)x_{n} \rVert=0$ por [[Teórico 15#^acb07f]]
>>3. $\lim_{ n \to \infty }((T-\lambda I)x_{n},x_{n})\leq \lim_{ n \to \infty }\lVert (T-\lambda I) \rVert\lVert x_{n} \rVert=\lim_{ n \to \infty }\lVert (T-\lambda I)x_{n} \rVert=0$ por cauchy-schwarz luego $\lim_{ n \to \infty }(Tx_{n},x_{n})-\lambda(x_{n},x_{n})=0$
>>4. Pero $(x_{n},x_{n})=1\quad\forall n\in \mathbb{N}$ entonces $\lim_{ n \to \infty }(Tx_{n},x_{n})=\lambda$
>>5. Entonces $\lambda$ esta en la clausura de $V(T)$      

^e62686

>[!Theorem]
>Sean $\mathcal{H}$ Hilbert $S\in B(\mathcal{H})$ audoadjunto entonces
>- (a) $V(S)\subseteq \mathbb{R}$
>- (b) $\sigma(S)\subseteq \mathbb{R}$
>- (c) Al menos $\lVert S \rVert$ o $-\lVert S \rVert$ estan en $\sigma(S)$
>- (d) $r_{\sigma}(S)=\sup\{ \lvert \tau \rvert:\tau\in V(S) \}=\lVert S \rVert$
>- (e) $\alpha =\inf \{ \lambda:\lambda\in \sigma(S) \}\leq u\leq \sup \{ \lambda :\lambda\in \sigma(S) \}=\beta\quad\forall u\in V(S)$
>>[!Proof]-
>>(a) 
>>1. $S$ autoadjunto entonces $(S(x),x)=(x,S(x))=\overline{(S(x),x)}\quad\forall x\in \mathcal{H}$ 
>>2. Entonces $(S(s),x)\in \mathbb{R}$ entonces $\forall x\in \mathcal{H}$ sucede $V(S)\subseteq \mathbb{R}$
>>
>>(b)
>>1. $\sigma(S)$ esta en la clausura de $V(S)$ por [[Teórico 15#^e62686]] entonces es un subconjunto de $\mathbb{R}$ por parte (a)   
>>
>>(c)
>>1. Esto vale si $S=0$ 
>>2. Ahora entonces si miramos $\lVert S \rVert^{-1}S$ (Podemos asumir $\lVert S \rVert=1$ (ejercicio))
>>3. Por def de norma $\exists \{ x_{n} \}\subseteq \mathcal{H}$ con $\lVert x_{n} \rVert=1$ y $\lim_{ n \to \infty }\lVert S(x_{n}) \rVert=1$
>>4. Luego $\lVert (I-S^{2})x_{n} \rVert^{2}=((I-S^{2})(x_{n}),(I-S^{2})(x_{n}))=\lVert x_{n} \rVert^{2}+\lVert S^{2}(x_{n}) \rVert^{2}-2(S^{2}(x_{n}),x_{n})$ (por autoadjunta $(S^{2}x_{n},x_{n})\in \mathbb{R}$  ) 
>>5. Y como $S$ auto adjunta entonces $S^{2}$ auto adjunta entonces
>>6. $\lVert x_{n} \rVert^{2}+\lVert S^{2}(x_{n}) \rVert^{2}-2(S^{2}(x_{n}),x_{n})\leq 2-2\lVert S(x_{n}) \rVert^{2}$ 
>>7. (Esto vale por que $\lVert S(x_{n}) \rVert^{2}=(S(x_{n}),S(x_{n}))=(S^{2}(x_{n}),x_{n})$ por autoadjunta y por que $\lVert x_{n} \rVert=0$ y $\lVert S^{2}(x_{n}) \rVert\leq\lVert S \rVert\lVert S \rVert\lVert x_{n} \rVert=1$)
>>8. Entonces $\lim_{ n \to \infty }\lVert (I-S^{2})(x_{n}) \rVert^{2}=0$     
>>9. Como $S^{2}$ es normal (pues es autoadjunta) luego por [[#^acb07f]] $I-S^{2}$ es NO invertible
>>10. Entonces $1\in \sigma(S^{2})=\{ \lambda^{2}:\lambda\in \sigma(S) \}$ (Ultima igualdad por [[#^145b8c]]) 
>>11. Por lo tanto $\lVert S \rVert=1\in \sigma(S)$ o $-\lVert S \rVert=-1\in \sigma(S)$   
>>  
>>(d)
>>1. Tenemos que $\lVert S \rVert\leq r_{\sigma}(S)=\sup\{ \lvert \lambda \rvert:\lambda\in \sigma(S) \}\leq \sup\{ \lvert \tau \rvert:\tau\in V(S) \}\leq \sup\{ \lvert (S(x),x) \rvert:\lVert x \rVert=1 \}\leq \sup\{ \lVert S(x) \rVert\lVert x \rVert:\lVert x\rVert=1 \}=\lVert S \rVert$ 
>>
>>(e) Falta copiar 

^d51465

