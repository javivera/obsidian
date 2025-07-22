---
dateCreated: 2024-10-11,20:30
---
>[!Corollary]
>Los espacios $c_{0}$ y $\ell^{\infty}$ no son reflexivos
>>[!Proof]-
>>1. Vimos en [[Teórico 12#^0a50d4]] que $( ^{\circ}Z ) ^{\circ} =c_{0}'\neq Z$ 
>>2. Luego $c_{0}$ no puede ser reflexivo por [[Teórico 12#^774fbc]] $2.$ 
>>3. Ademas como $c_{0}$ cerrado en $\ell^{\infty}$ que no es reflexivo, tampoco puede serlo $\ell^{\infty}$ por [[Teórico 12#^c591f7]]

^8dcf06

>[!Theorem]
>$X,Y$ normados , $T \in B( X,Y )$ entonces $\exists !T'\in B( Y',X' )$ tal que 
>$$ T'( f ) ( x ) =f( Tx ) \quad\forall f\in Y'\quad\forall x\in X$$ 
>>[!Proof]-
>>1. Para $f\in Y'$ definimos $T'(f)=f\circ T$. 
>>2. Como $T,f$ son lineales y continuas $T'(f)$ lo es entonces  $T'( f)\in X'$ 
>>3. Ademas $T':Y'\longrightarrow X$ cumple que $$T'( f)( x)=f( Tx)\quad\forall x\in X \quad\forall f\in Y'$$
>>4. Si hubiera otra $S\in B( Y',X' )$ tal que $S( f)( x)=f( Tx) \quad\forall x\in X \quad\forall y\in Y'$ entonces $S( f)=T'( f)\quad\forall f\in Y'$ osea $S=T'$ 
>>5. Veamos que es lineal y continua. Sean $f,g_{i} Y',\alpha, \beta\in\mathbb{F}$ entonces $$T'(\alpha f+\beta g)=  ( \alpha f+\beta g)\circ T=\alpha ( f\circ T)+\gamma( g\circ T)$$
>>Osea $T'( \alpha f+\beta g)=\alpha T'( f)+\beta( T')g$ 
>>6. Ademas $\lVert T'( f) \rVert =\lVert f\circ T \rVert =\lVert f \rVert \lVert T \rVert$. Por lo tanto $T'$ es continua (mas aun $\lVert T' \rVert \leq \lVert T \rVert$)

^e98c72

>[!Proposition]
>$X,Y$ normados $T\in B( X,Y )$ entonces
>1. $\lVert T' \rVert =\lVert T \rVert$ 
>2. $Ker( T')=( Im T)^{\circ}$
>3. $Ker( T)=^{\circ}( Im T')$
>>[!Proof]-
>>(1)
>>1. Por [[Teórico 10#^d1e653]] $\exists f\in Y'$ tal que $f( Tx)=\lVert Tx \rVert$ y $\lVert f \rVert =1$ 
>>2. Entonces $\lVert Tx \rVert =f( Tx)=T'( f)( x)\leq \lVert T' \rVert \lVert f \rVert \lVert x \rVert$ y sabemos $\lVert f \rVert =1$. Por lo tanto $\lVert T \rVert \leq \lVert T' \rVert$ 
>>3. Y por [[Teórico 13#^e98c72]] paso 6. $\lVert T' \rVert\leq \lVert T \rVert$      
>>
>>(2)
>>1. $( \subseteq )$  Sea $f\in Ker T'$ y $z\in Im T$ entonces $\exists x\in X$ tal que $z=Tx$
>>2. Luego $f( z)=f( Tx)=T'( f)( x) =0$
>>3. $( \supseteq)$ Sea $f\in ( ImT)^{\circ}$ entonces $\forall x\in X$ sucede $T( f)( x)=f( Tx)=0$ pues $Tx\in ImT$ 
>>4. Osea $T( f)=0$ por lo tanto $f\in KerT'$ 
>>
>>(3)
>>1. (Ejercicio) 

>[!Theorem]
>$X,Y$ normados $T\in B( X,Y )$ 
>1. Si $T$ es isomorfismo entonces $T'$ es isomorfismo con $( T')^{-1} =( T^{-1} )'$.
>(En particular si son isomorfos $X$ e $Y$ tambien lo son $X'$ e $Y'$) 
>2. Si $T$ isomorfismo isometrico entonces $T'$ isomorfismo isometrico
>>[!Proof]-
>>(1) 
>>1. Sea $S=T^{-1}$ entonces $S\in B( Y,X )$ y ademas esta bien definida $S'\in B( X',Y')$ por [[Teórico 13#^e98c72]]
>>1. Ahora $\forall x\in X ,f\in X'$ tenemos $$T'( S'(f))(x)=S'( f)( Tx)=f( S( Tx))=f( x)$$
>>Osea $T( S'( f))=f$ por lo tanto $T'\circ S'=Id_{X'}$  
>>2. Analogamente vemos $S'\circ T'=Id$
>>3. Entonces $(T^{-1})'=S=(T')^{-1}$ , como $T'$ tiene inversa , es isomorfismo  
>>
>>(2) 
>>1. Por $(1.)$ basta ver que $T'$ es isometria. 
>>2. Por una parte $\lVert T'(f)(x) \rVert =\lVert f(Tx) \rVert \leq \lVert f \rVert \lVert T \rVert \lVert x \rVert$ (Con $\lVert T \rVert =1$ por ser isometria)
>>3. Entonces $\lVert T'(f) \rVert \leq \lVert f \rVert$ 
>>4. Por otro lado $\forall \epsilon>0\ \exists y\in Y$ con $\lVert y \rVert =1$ tal que $\lvert f(y) \rvert \geq \lVert f \rVert -\epsilon$ (Por def de supremo)
>>5. Sea $x=T^{-1} y$ entonces $\lVert x \rVert =1$ (Pues $1= \lVert y \rVert =\lVert T(T^{-1} y) \rVert =\lVert T x \rVert =\lVert x \rVert$ ) 
>>6. Por lo tanto $\lVert T'(f) \rVert \geq \lvert T'(f)(x) \rvert =\lvert f(Tx) \rvert= \lvert f(y) \rvert \geq \lVert f \rVert -\epsilon$ (Por def de norma $\lVert T'(f) \rVert$ dado que $\lVert x \rVert=1$) 
>>7. Mostrando que $\lVert T'(f) \rVert =\lVert f \rVert$ 

^fbf5b7

>[!Remark]
Recordar que si $1\leq p<\infty, \ x\in \ell^p, \ a\in \ell^{q}$ con $\frac{1}{p}+\frac{1}{q}=1$. 
Tomando $f_{a}(x)=\sum_{n=1}^{\infty} a_{n} x_{n}$ entonces $T_{p}:\ell^{q} \longrightarrow (\ell^{p} )'$ dada por $T_{p}(a)=f_{a}$  es isomorfismo isometrico       

>[!Corollary]
>$\ell^{p}$ con $\ 1<p<\infty$ es reflexivo 
>>[!Proof]
>>1. Sean $x\in\ell^{p} \quad y\in \ell^{q}$  $1<q< \infty$ y $\frac{1}{q}+\frac{1}{p}=1$ 
>>2. Entonces $$T_{p}'(J_{\ell^{p}}(x))(y)=(J_{\ell^{p} }(x))T_{p}(y)=T_{p}(y)(x)=\sum_{n=1}^{\infty} x_{n} y_{n} =T_{q}(x)(y)$$ 
>>3. Osea $T_{p}'(J_{\ell^{p} }(x))=T_{q}(x)$
>>4. Y $T_{p}'$ es iso por [[Teórico 13#^fbf5b7]] (por que $T_{p}$ lo es)  
>>5. Luego $J_{\ell^{p} }=( T_{p}' )^{-1} \circ T_{q}$ (despejando en la ec de arriba)  y como $T_{q}$ y $T_{p}'$ son iso entonces la compisicion es iso. 
>>6. Como $J_{\ell^{p} }$ es isomorfismo entonces $\ell^{p}$ es reflexivo 

^63408e

>[!Theorem]
>$X,Y$ normados, $T\in B(X,Y)$. Entonces 
$$J_{Y}\circ T=T'' \circ J_{X}$$
>>[!Proof]-
>>1. $$X\xrightarrow[]{T}Y\xrightarrow[]{J_{Y}}Y''\quad X\xrightarrow[]{J_{Y}}X''\xrightarrow[]{T''}Y''$$ 
>>2. Ahora tenemos $T'':X''\longrightarrow Y''$ dada por $\psi\longrightarrow T''(\psi)$ con $T''(\psi)(g)=\psi(T'(g))$ con $g\in Y'$
>>3. Luego dado $x\in X\quad q\in Y'$ tenemos $$J_{Y}(Tx)(g)=g(Tx)=T'(g)(x)=(J_{x}x)(T'(g))=T''(J_{x}x)(g)$$  
>>4. Luego $$J_{Y}(Tx)=T''(J_{X}x)\quad \forall x\in X $$  

^7f9edb

>[!Corollary]
>Si $X,Y$ son isomorfos entonces $X$ reflexivo sii $Y$ reflexivo 
>>[!Proof]
>>1. Como $X,Y$ son isomorfos existe $T:X\longrightarrow Y$ isomorfismo. Entonces por [[Teórico 13#^fbf5b7]]  aplicado dos veces $T''$ es isomorfos. 
>>2. Luego usando la igualdad en [[Teórico 13#^7f9edb]] y considerando que composición de isomorfismos es isomorfismo queda probado

^9a9641

>[!Corollary]
>$\ell^{1}$ no es reflexivo
>>[!Proof]
>>1. Sabemos que $c_{0}$ no es reflexivo [[#^8dcf06]] entonces por [[Teórico 12#^ba33bb]] (considerando $c_{0}$ es Banach ) $c_{0}'$  no es reflexivo
>>2. $\ell^{1}$ es isomorfo a $c_{0}'$ entonces por [[#^9a9641]] 

## Proyeciones y subespacios complementarios

>[!Remark]
>En esta seccion $X$ es espacio vectorial 

>[!Definition]
>$U,V \subseteq X$ subespacios, se dicen complementarios si $X=U\bigoplus V$
>Osea $\forall x\in X \quad \exists !u_{X}\in U\quad v_{X}\in V$ tal que $X=u_{x}+v_{x}$ 
>Si $X$ normado y $x\mapsto u_{x}\quad x\mapsto v_{x}$ son continuas decimos que son complementarios topologicos 

>[!Definition]
>$p:X\longrightarrow X$ lineal se dice proyeccion si $p^{2}=p$ 

>[!Lemma]
>Sea $p$ proyeccion en $X$. Entonces $x\in Im(p)\iff p(x)=x$. Ademas $I-p$ es proyeccion y $Im(p)=Ker(I-p)\quad Ker(p)=Im(I-p)$   
>>[!Proof]
>>ejericio

>[!Lemma]
>1. $U,V\subseteq X$ y sean $p_{U}:X\longrightarrow U \quad p_{V}:X\longrightarrow V$ dadas por $x\mapsto u_{x}$ $x\mapsto v_{x}$
>2. Entonces $p_{U},p_{V}$ son proyecciones en $X$ y $p_{U}+p_{V}=Id$. ($p_{U}$ se dice proyeccion sobre $U$ de $V$, analogo para $p_{V}$ )
>3. Si $p$ es proyeccion en $X$ entonces los subespacios $Im(p),Im(I-p)$ son complementarios
>>[!Proof]
>> ejercicio

>[!Proposition]
>$U,V\subseteq X$ son complementarios entonces:
>1. $U$ y $V$ complementarios topologicos sii $P_{U}$ y $P_{V}$ son continuas
>2. Si $U,V$ son complementarios topologicos entonces $U,V$ son cerrados
>3. $X$ es Banach. Si $U$ y $V$ son cerrados y complementarios entonces son complementarios topologicos 
>>[!Proof]
>>1. $U=Im(P_{U})=Ker(I-P_{U})$
>>2. a
>>	1. Como $P_{U}+P_{V}=Id$ basta ver que $P_{U}$ es continua. Por [[Teórico 7#^c58dff]] basta ver que $gr(P_{U})$ es cerrado. 
>>	2. Sea $\{( x_{n},P_{U}x_{n} ) \} \subseteq gr(P_{U})$ tal que $(x_{n} ,P_{U}x_{n} )\longrightarrow (x,y)\in X\times X$ queremos $y=P_{U}x$ 
>>	3. Como $\{P_{U}x_{n} \}\subseteq U$ con $U$ cerrado e entonces $y\in U$. 
>>	4. Analogamente $\{(I-P_{U})x_{n} \}\subseteq V$ entonces $x-y=\lim x_{n} -P_{U}x_{n} \in V$ 
>>	5. Como $P_{U}(x)=x\quad \forall x\in U$ y $P_{U}x=0\quad \forall x\in V$ tenemos $0=P_{U}(x-y)=P_{U}x-P_{U}y=P_{U}(x)-y$   
>>3. ejericio

>[!Remark]
>Dado $U\subseteq X$ sub espacio cerrado $\exists V\subseteq X$ tal que $U$ y $V$ son complementos topologicos?.
>Por resultados anteriores esto es equivalente a que exista proyeccion continua $P$ tal que $U=Im P$. Pues en tal caso tomamos $V=Im(I-P)$ (ejercicio)
>Si $\dim V<\infty$ es cierto (ej). En general esto no es cierto pero si vale en espacios de Hilbert (Lo vemos mas adelante)

>[!Lemma] DUDA
>Sea $S= \{s_{\alpha }: \alpha \in A\}$  tal que $\overline{Sp}S=X$. Si $\{f_{n} \}$ es una sucesion acotada en $X'$ y $\{f_{n} (s_{\alpha })\}$ converge $\forall \alpha \in A$ entonces $\exists f\in X'$ tal que $f_{n} (x)\longrightarrow f(x)\quad \forall x\in X$  
>>[!Proof]
>>1. Sea $x\in X$ como $\{f_{n} \}$ es acotada $\exists c>0$ tal que $\lVert f_{n}  \rVert \leq c \quad \forall n\in \mathbb{N}$.
>>2. Ahora dado $\epsilon >0$ existe $s\in Sp(S)$ con $\lVert x-s \rVert \leq \frac{\epsilon }{3c}$. Entonces $\forall n$ $\lvert f_{n} (x)-f_{n} (s) \rvert \leq \lVert f_{n}  \rVert \lVert x-s \rVert \leq \frac{\epsilon }{3}$
>>3. Luego $$\lvert f_{n} (x)-f_{m}(x) \rvert \leq \lvert f_{n} (x)-f_{n} (s) \rvert +\lvert f_{n} (s)-f_{m}(s) \rvert +\lvert f_{m}(s)-f_{m}(x) \rvert \leq \frac{2}{3}\epsilon +\lvert f_{n} (s)-f_{m}(s) \rvert $$
>>4. Pero $\lvert f_{n}(s)-f_{m}(s) \rvert \leq \frac{\epsilon }{3}$ si $n,m\geq n_{0}$ por que $\{f_{n}(s_{\alpha })\}$ converge (entonces es de Cauchy) $\forall \alpha \in A$ y $s$ es combinacion lineal finita de elementos de $S$
>>5. Entonces $\{f_{n}(x)\}$ es de Cauchy entonces converge. Luego podemos definir $f(x)=\lim_{n}f_{n}(x)$
>>6. Luego $f_{n}(x)\longrightarrow f(x)\quad \forall x\in X$ y entonces dado $x\in X$ tenemos $$\lvert f(x) \rvert\leq \lvert f(x)-f_{n}(x) \rvert +\lvert f_{n}(x) \rvert \leq \epsilon  $$      
>>7. Como esto vale para cualquier $x\in X$ por [[Teórico 7#^cd74fc]] $\lVert f \rVert\leq k$ es acotada osea $f\in X'$ (ESTA BIEN ESTO QUE AGREAGUE?) 

^99815e
