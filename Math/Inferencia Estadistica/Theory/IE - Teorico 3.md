---
dateCreated: 2025-03-20,08:33
tags:
  - statistics
dg-publish: true
---

>[!Lemma]
>Si $X_{n}\rightarrow^{\mathcal{P}}X$ (converge en *Probabilidad*) entonces $X_{n}\rightarrow^{\mathcal{D}}X$ (converge en *Distribucion*)      
>>[!Proof]-
>>1. Tenemos $\{ X_{n} \}_{n\in \mathbb{N}}$ suc de v.a tal que $X_{n}\rightarrow^{\mathcal{P}} X$. 
>>2. Luego $\forall \epsilon>0$
>>$$\lim_{ n \to \infty } P(|X_{n}-X|>\epsilon)=0\quad \land \quad \lim_{ n \to \infty } P(|X_{n}-X|\leq\epsilon)=1$$  
>>3. Sea $x$ punto de continuidad entonces 
>>$$\{ X_{n}\leq x \}\subseteq \{ |X_{n}-X|>\epsilon \}\cup\{ X\leq x+\epsilon \}$$
>>4. Veamoslo. Si $w\in \{ X_{n}\leq x \}$ entonces vale $|X_{n}(w)-X(w)|\geq\epsilon$ o vale $|X_{n}(w)-X(w)|<\epsilon$
>>5.  Sea $|X_{n}(w)-X(w)|\leq \epsilon$. Supongo ademas $X(w)>x+\epsilon$ entonces $|X_{n}(w)-X(w)|>\epsilon$ que es absurdo. 
>>6.  Luego vale $X(w)\leq x+\epsilon$. Entonces $w\in \{ X\leq x+\epsilon \}$  
>>7.  Si en cambio $|X_{n}(w)-X(w)|\geq\epsilon$ obviamente $w\in \{ |X_{n}-X|\geq\epsilon \}$    
>>Queda probada la inclusion
>>8. Entonces $$P(X_{n}\leq x)\leq P(|X_{n}-X|>\epsilon) + P(X\leq x+\epsilon)$$   
>>9. Por lo tanto $$\limsup P(X_{n}\leq x)\leq \limsup P(|X_{n}-X|>\epsilon)+\limsup P(X\leq x+\epsilon)=P(X\leq x+\epsilon)\quad\forall \epsilon>0$$ (Donde usamos $\limsup P(|X_{n}-X|>\epsilon) = 0$ y que el $\liminf$ afecta a $n\in \mathbb{N}$)
>>10. Ademas $\limsup P(X_{n}\leq x)\leq P(X\leq x+\epsilon)\quad\forall \epsilon>0$
>>11. Entonces $\limsup P(X_{n}\leq x)\leq P(X\leq x)$  (Usando que 5. es $\forall\epsilon>0$ y que $x$ es pto de continuidad)
>>12. Ahora usamos $$\{ X\leq x-\epsilon \}\subseteq \{ |X_{n}-X|\geq\epsilon \}\cup \{ X_{n}\leq x\}$$
>>13. Se prueba igual que 2.
>>14. Entonces $$P(X\leq x-\epsilon)\leq P(|X_{n}-X|\geq\epsilon)+P(X_{n}\leq x)$$
>>15. Luego $$P(X\leq x)\leq \liminf P(X_{n}\leq x)$$ (usando nuevamente hipotesis como en 6.)     
>>16. Ahora juntamos todo $$P(X\leq x)\leq\liminf P(X_{n}\leq x)\leq\limsup P(X_{n}\leq x)\leq P(X<x)$$
>>17. Por lo tanto $\lim_{ n \to \infty }P(X_{n}\leq x)=P(X<x)$ para $x$ pto de continuidad. Osea converge en distribucion

^86a4c5

>[!Remark]
>En general no vale la reciproca. Salvo en el siguiente caso

>[!Lemma]
>Si $X_{n}\rightarrow^{\mathcal{D}}X$ y $P(X=c)=1$ con $c\in \mathbb{R}$ entonces $X_{n}\rightarrow^{\mathcal{P}}X$
>>[!Proof]-
>>1. Notar que como $P(X=c)=1$ entonces $$F_{X}(x)=P(X\leq x) = \begin{cases} 0 & \text{if } x < c\\ 1  & \text{if } x\geq c\end{cases}$$
>>2. Como $X_{n}\rightarrow^{\mathcal{D}}X$ entonces $$F_{X_{n}}(x)=P(X_{n}\leq x)\longrightarrow \begin{cases} 0 & \text{if } x < c\\ 1  & \text{if } x \geq c \end{cases}$$
>>3. $P(|X_{n}-c|>\epsilon) = P(X_{n}-c>\epsilon)+P(X_{n}-c<-\epsilon)=1-P(X_{n}\leq c+\epsilon)+P(X_{n}<c-\epsilon)\longrightarrow 1- 1=0$
>>4. Por lo tanto $X_{n}\rightarrow^{\mathcal{P}}X$ 


>[!Remark]
>En general no vale que $X_{n}\rightarrow^{\mathcal{D}}X$ implica $X_{n}\rightarrow^{\mathcal{P}}X$   (digamos si le sacas que $X$ sea cte )
>>[!Proof]
>>1. Sea $(\{ 0,1 \},\mathcal{A},\mathcal{P})$ espacio probabilistico. 
>>2. Definimos $X_{n}(0)=0 \land X_{n}(1)=1$ ademas $X(0)=1\land X(1)=1$. 
>>3. Todas con probabilidad $\frac{1}{2}$  osae si $F_{n}$ y $F$ son las distribuciones de $X_{n}$  y $X$ respectivamente entonces $F(1)=\frac{1}{2}=F_{n}(1) = F_{n}(0)=F(0)$ (esto me asegura que $\mathcal{P}$ es una medida creo) 
>>4. Por lo tanto $X_{n}\rightarrow^{\mathcal{D}}X$  por que tienen la misma distribucion $F=F_{n}$  
>>5. Pero $|X_{n}(w)-X(w)|=1\quad\forall w\in \{0,1\}$ con lo cual imposible que $X_{n}\rightarrow^{\mathcal{P}}X$ 

>[!Remark]
>Una funcion de densidad acumulada siempre es monotona creciente pero no siempre tiene inversa. Existe una forma de definir una "inversa general" que coincide con la inversa cuando $F$ es estrictamente creciente.
>La forma es la siguiente

>[!Definition]
>$\forall F$  funcion de desnsidad acumulada se define la funcion cuantil $F:\mathbb{R}\rightarrow[0,1]$ como $F^{-1}(t)=\inf\{ x\in \mathbb{R} :F(x)\geq t\}$ si $t\in (0,1)$ 
>

>[!Remark] Propiedades de la inversa
>(a)  $F^{-1}:(0,1)\rightarrow\mathbb{R}$ es monotona creciente y continua por izquierda
>(b)  $F\circ F^{-1}(t)\geq t$ con $t\in (0,1)$ (Notar que $F\circ F^{-1}=t \iff t\in Im(F)$ )
>(c)  $F^{-1}\circ F(x)\leq x\quad x\in \mathbb{R}$ (Notar $F^{-1}\circ F(x)<x\iff x \text{ es punto interior de una meseta}$  ) 
>(d)  $F$ funcion densidad acumulada continua y $U\sim \mathcal{U}[0,1]$ entonces si $X\sim F$ sucede $F_{X}(x)$ es v.a (porque $F$ es continua)
>(e)  Si $X\sim F$ con $F$ f.d.a cualquiera entonces $P(F(x)\leq t)\leq t\quad\forall t>0$
>(f)  $F^{-1}(\cdot)$ es continua en $t\in (0,1)$ sii $t\in Im(F)$ o $\exists !z/F(z)=t$        
>(g)  $U\sim\mathcal{U}(0,1)$ , $F$ f.d.a y sea $F^{-1}(U)$ v.a  entonces $F^{-1}(U)\sim F$

^15dce0

>[!Theorem] Teorema de representacion de Skorokhod
>$(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico $\{X_{n}\}$ sucesion de v.a def en $\Omega$ talque $X_{n}\rightarrow^{\mathcal{D}}X_{0}$ entonces $\exists \{ X_{n}^{*} \}$ v.a definidas en $([0,1],\mathcal{B},\lambda_{lebesgue})$ con $\mathcal{B}$ borelianos del $[0,1]$ tal que $X_{n}^{*}\longrightarrow X_{0}^{*}$ (puntualmente osea salvo medida 0) y $X_{n}^{*}\sim X_{n}\quad\forall n\in \mathbb{N}_{0}$
>>[!Proof]
>>1. $X_{n}\sim F_{n}$ entonces por  [[#^15dce0]] parte (g) definimos $X_{n}^{*}=F_{n}^{-1}(U)$ con $U\sim \mathcal{U}(0,1)$ 
>>2. Por lo tanto $X_{n}^{*}\sim X_{n}\quad\forall n\in \mathbb{N}_{0}$  
>>3. Veamos $F_{n}^{-1}(t)\longrightarrow_{n\rightarrow \infty} F^{-1}_{0}(t)$  (digamos ctp salvo medida 0) 
>>4. Notar que el conjunto de puntos de continuidad de $F^{-1}_{0}$ tiene medida lebesgue 1 (por que las discontinuidades son a lo sumo numerables por que $F^{-1}_{0}$ es monotona creciente)
>>5. Dicho conjunto,usando [[#^15dce0]] (f) se puede describir como $$T=\{ t\in (0,1): \exists \text{ a lo sumo un }z\in \mathbb{R} \text{ tal que }F_{0}(z)=t \}$$
>>6. Sea $t\in T$ y llamamos $F_{0}^{-1}(t)=z$ y tomemos $x<z$ que sea pto de continuidad de $F_{0}$ entonces $F_{0}(x)<t$ (por que $F_{0}$ es creciente)
>>7. Como $\lim_{ n \to \infty }F_{n}(x)=F_{0}(x)$ entonces $F_{n}(x)<t\quad\forall n\geq N(x)$ (hipotesis y convergencia en proba implica convergencia en distribucion) 
>>8. Por lo tanto $F_{n}^{-1}(t)\geq x\quad\forall n\geq N(x)$
>>9. Luego $\liminf_{n\rightarrow\infty}F_{n}^{-1}(t)\geq x\quad\forall x \text{ pto de continuidad tal que } x<z$ entonces $\liminf F_{n}^{-1}(t)\geq z$  (DUDA. Sera por que por continuidad en x hay ptos de continuidad cerca de x?) 
>>10. Tomamos $x'>z$ pto de continuidad de $F_{0}$ entonces $F^{-1}_{0}(x')>t\quad \forall n\in N_{1}(x)$ por lo tanto $F_{n}^{-1}(t)\leq x'\quad\forall \geq N_{1}(x')$
>>11. Analogamente $\limsup F_{n}^{-1}(t)\leq x'\quad\forall x'\text{ pto de continuidad tal que } x'>z$ entonces $\limsup F_{n}^{-1}(t)\leq z$   
>>12. Finalmente $\lim_{ n \to \infty }F_{n}^{-1}(t)=z=F_{0}^{-1}$ osea $F_{n}^{-1}(t)\longrightarrow F_{0}^{-1}(t)$ para todo $t$ pto de continuidad osea converge pp 

^82f172