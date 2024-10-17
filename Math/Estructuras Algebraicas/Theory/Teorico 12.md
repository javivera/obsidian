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
>Sea $G\times X\longrightarrow X$ una accion de un grupo $G$ en 
>