---
dateCreated: 2024-10-08,20:33
---
>[!definition]
>Sean $G$ grupo y $X\neq\emptyset$ conjunto. Una accion de $G$ en $X$ es una funcion 
>$$\begin{align} & G\times X\longrightarrow X \\
 &(g,x)\longmapsto g.x\end{align}$$
 > Que cumple:
 > - (A1) $gh.x=g.(h.x)$
 > - (A2) $e.x=x\quad\forall x\in X$
> En este caso se dice que $G$ actua (opera) en $X$ mediante $G\times X\longrightarrow X$

^64fcc2

>[!Example]
>1. $G,X\neq\emptyset$ cualesquiera la accion trivial de $G$ en $X$ es aquella tal que $g.x=x\quad\forall x\in X\quad\forall g\in G$ 
>2. $\mathbb{S}(x)$ actua en $X$ en la forma $\mathbb{S}\times X\longrightarrow X$ $\sigma.x=\sigma(x)\quad\forall \sigma\in \mathbb{S}(x)\quad\forall x\in X$. En particular $\mathbb{S}$ actua en $I_{n}=\{ 1,\ldots n \}$
>3. Sea $G$ grupo actua en si mismo de distintas formas, en este caso mediante el producto $G\times G \longrightarrow G$ es decir $g.x=gx$ esto se llama *accion regular*
>4. $H\trianglelefteq G$ entonces $G$ actua por conjugacion $G\times H \longrightarrow H$ dada por $g.x=gxg^{-1}\quad\forall g\in G\quad x\in H$
>5.  $\mathcal{S}(G)=\{ \text{subgrupos de } G \}$. entonces $G$ actua en $\mathcal{S}$ por conjugacion $g.H=gHg^{-1}\quad\forall g\in G\quad H\trianglelefteq G$
>6. $H\leq G$ entonces $G$ actua en las coclases $G\diagup H$  
> Ejercicio probar que satisfacen (A1) y (A2)

>[!Proposition]
>Sea $G$ grupo $X\neq\emptyset$ conjunto. Son equivalentes:
>1. Una accion $G\times X \longrightarrow X$
>2. Un homomorfismo $\alpha : G\rightarrow \mathcal{S} (x)$
>>[!Proof]
>>pendiente

>[!Example]
>1. La accion trivial $G\times X\rightarrow X$ corresponde a 
>$$\begin{align} &G\longrightarrow \mathcal{S} (x)\\
>&g\longmapsto Id_{x}
>\end{align}$$
>2. La accion regular $G\times G\longrightarrow G$ corresponde al homomorfismo de Cayley $G$

>[!Definition]
>Sea $G\times X\longrightarrow X$ una accion de un grupo $G$ en $X\neq\emptyset$. Dos elementos $x,y\in X$ se dicen *G-conjugados* mediante esta accion si $\exists g\in G$ tal que $g.x=y$ notaion $x\sim y$ 
>Esto define una relacion de equivalencia en $X$ (Ejercicio). Asi tal relacion particiona a $X$ en clases de equivalencia. 
>Sea $x\in X$ entonces $G.x$ (o $\mathcal{O}_{G}(x)$) es la clase de equivalencia de $x$ que se llama G-Orbita de $x$ 
>$$X=\bigcup_{x\in X}G.x$$
>

>[!Remark]
>Si $G\times X \longrightarrow X$ es accion entonces cualquier subgrupo de $G$ actua en $X$ por restriccion. De este modo $G=\mathbb{S}_{n}$ actua naturalmente en $I_{n}$ $$<\sigma>.j=\mathcal{O}_{\sigma}=\{\sigma^{k}:k\geq 0\}\quad \forall\sigma \in\mathbb{S}_{n} $$ 

>[!Definition] Accion Transitiva
>Una accion se dice transitiva si posee una unica orbita es decir si $\exists x\in X$ tal que $X=G.x$

>[!Definition] G-Estabilizador
>Sea $G\times X\longrightarrow X$ accion. Dado $x\in X$ el $G$-estabilizador de $x$ es $$G_{x}=\{g\in G: g.x=x\}$$$G_{x}$ es un subgrupo de $G$ , $\forall x\in X\quad\forall g,h\in G_{x}$ (No necesariamente normal).
>Si $\alpha :G\longrightarrow \mathbb{S}$ homomorfismo correspondiente a la accion dada entonces: $$Ker(\alpha)=\bigcap_{x_{i} X}G_{x}$$

>[!Example]
>1. $G\times X\longrightarrow G$ accion trivial $g.x=\{x\}$ entonces $G_{x}=G$
>2. $G\times G \longrightarrow G$ accion regular $g.x=gx$
>	1. $G.x=G$ pues $y=(yx^{-1} )x=yx^{-1}.x$ ( Entonces es transitiva )
>	2. $G_{x}=\{e\}$ pues $gx=x\iff g=e$
>3. $H\trianglelefteq G$, $G\times H \longrightarrow H$ por conjugacion $g.x=gxg^{-1}$
 $$G.x=\{gxg^{-1} : g\in G \}=Cl(X) \quad \text{(Clase de conjugacion de} X)$$	
 $$G_{x}=\{g\in G: gxg^{-1} =x\}=C_{G}(x)\quad \text{(Centralizador de } x \text{ en } G)$$
>(ejercicios calcular estabilizador y centralizador de traslaciones para alfguna coclase)
>6. Sea $H\leq G$ con $$G\times _{H}\setminus ^{G}\longrightarrow _{H}\setminus ^{G}$$ 
dada por $g.aH=ga.H$ con $_{H}\setminus ^{G}=\{aH: a\in G \}$. 
Es accion transitiva porque $_{H}\setminus ^{G}=G.\{ H \}$
$G_{H}=\{g\in G : g.eH=ge.H=H\}=H$ ( DUDA )

>[!Proposition]
>Sea $G\times X\longrightarrow X$ una accion de $G$ en $X$, se tienen:
>1. $\forall x\in X,G_{g.x}=gG_{x}g^{-1} \quad\forall g\in G$
>2. $\lvert G.x\rvert =[G:G_{x}]$ 
>>[!Proof]
>>pendiente

>[!Theorem] Ecuacion de Clases
>Sean $G$ grupo y $G\times X\longrightarrow X$ una accion de $G$ en $X\neq \emptyset$ existe famlia $\{G_{i}\}_{i\in I }$ de sugrupos propios de $G$ tales que:
>$$\lvert X \rvert =\lvert X^{G} \rvert + \sum_{n=1}^{\mathbb{N}} $$
>donde $X^{G} = \{x\in X: g.x=x\quad\forall g\in G \}$ ($B$ G-invariante)
>>[!Proof]
>>asd

>[!Theorem] Teorema de Cauchy
>Sea $G$ grupo de orden $n$ y sea $p>0$ primo tal que $p|n$ entonces $G$ tiene un elemento de orden $p$
>>[!Proof]
>>pendientr

^7cc5a4

