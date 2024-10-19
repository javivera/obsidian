>[!Remark]
>Si tenemos $\lvert G \rvert=p$ con $p$ primo y tomamos $e\neq x\in G$ como ${} \lvert x \rvert\ \big| \ p {}$ y $p$ primo entonces $\lvert x \rvert=p$ luego $G=<X>$ y $G\cong \mathbb{Z}_{p}$           
>Por otro lado consideremos $\mathbb{Z}_{p}\bigoplus \mathbb{Z}_{p}$ con $p(x,y)=(px,py)=0$ entonces $\lvert (x,y) \rvert \ \big |\ p$ por lo tanto $\lvert (x,y) \rvert\neq p^{2}$ entonces $\mathbb{Z}_{p}\bigoplus \mathbb{Z}_{p}$ no es ciclico           

>[!Proposition]
>Sea $p$ primo y $\lvert G \rvert=p^{2}$ entonces $G$ abeliano
>>[!Proof]
>> Copiar

>[!Remark]
>Grupos abelianos de orden $p^{2}$ son $\mathbb{Z}_{p^{2}}$ y $Z_{p}\bigoplus Z_{p}$ unicamente      

>[!Definition] p-grupo
>Un grupo $G$ se dice *p-grupo* , con $p$ primo si $\forall n\in G\quad\exists n\in \mathbb{N}$ tal que $x^{p^{n}}=e$ es decir todo elemento de $G$ tiene orden una potencia de $p$ 

>[!Remark]
>Todo *p-grupo* tiene orden potencia de $p$ 
>>[!Proof]-
>>1. Sea $\lvert G \rvert =p_{1}^{n_{1}}\ldots p_{k}^{n_{k}}$ con $p_{i}$ primos.
>>2. Entonces $p_{i}\big|\lvert G \rvert$ por lo tanto $\exists x\in G\quad \lvert x \rvert = p_{i}$ [[Teorico 12#^7cc5a4]]
>>3. Luego $p_{i}=\lvert x \rvert =p^j$ (Esto ultimo por ser *p-grupo*) 
>>4. Entonces $j=1$ y $p_{i}=p\quad \forall 1\leq i\leq k$ 
>>5. Por lo tanto $\lvert G \rvert =p^j$ con $j>k$  
>

>[!Remark]
>Si $\lvert G \rvert=p^{3}$, $G$ no abeliano entonces $G\times \mathbb{Z}_{p}\times \ldots\times \mathbb{Z}_{p}$ es no abeliano   

>[!Proposition]
>Sea $G$ un *p-grupo* finito no trivial entonces $Z(G)\neq \{ e \}$ (no trivial)    

>[!Definition] Normalizador
> Sea $H\leq G$ el normalizador de $H$ en $G$ es el subgrupo $$N_{G}(H) =\{ g\in G\ |\ gHg^{-1} =H \}$$
> 

>[!Remark]
>$N_{G}(H)$ es el estabilizador de $H$ con respecto a la accion de $G$ por conjugacion
>

>[!Remark]
>$H\trianglelefteq N_{G}(H)$. Y $N_{G}(H)$ es el mayor subgrupo de $G$ que contiene a $H$ como subgrupo normal. En particular $$H\trianglelefteq G \iff N_{G }(H) =G$$
>

>[!Lemma]
>Sea $p$ primo y $G$ un p-grupo finito si $H<G$ entonces $H<N_{G}(H)$
>Si $H=N_{G}(H)$ entonces $H=G$      

>[!Definition]
>Un grupo se llama simple si no contiene subgrupos normales distintos de $G$ y $\{ e \}$ 

>[!Corollary]
>Si $\lvert G \rvert=p^{n}$ y $H\leq G$ con $[G:H]=p$ entonces $H\trianglelefteq G$. En particular, el unico p-grupo finito simple es $\mathbb{Z}_{p}$           