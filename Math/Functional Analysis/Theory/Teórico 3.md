---
dateCreated: 2024-09-22,22:22
---
>[!Definition] Convexidad
> Sea $A\subset X$ espacio vectorial. $A$ es convexo si $\forall x,y\in A$
> $$t x+(1-t)y\in A\quad\forall t\in[0,1]$$
> >[!Remark]
> > Todo espacio vectorial es conv---
dateCreated: 2024-09-22,2e


t\leq 0$

^cc7fed

>[!Remark]
>En dim finita la existencia de $q$ es cierta inclusive sin que $A$ sea convexo pues $\{ q_{n} \}$ es acotada entonces tiene un sub convergente.
>Pero si $A$ no es convexo la unicidad en general no es cierta ej. $A$ circunferencia y $p$ el centro


>[!Theorem] 
>Sea $Y$ subespacio cerrado en $\mathcal{H}$ Hilbert entonces $\forall x \in H\quad\exists \ (y\in Y,z\in Y^{\perp})$ tal que $x=y+z$. Ademas $\lVert x \rVert^2=\lVert y \rVert^2+\lVert z \rVert^2$ (Generalizacion de Pitagoras)
>>[!Proof]
>>1. $x \in \mathcal{H}\quad Y\neq \emptyset$ convexo y cerrado entonces por [[Teórico 3#^cc7fed]]
>>2. $\exists y\in Y$ tal que $\lVert x-y \rVert\leq \lVert x-u \rVert \forall u\in Y$
>>3. $z=x-y$
>>4. $\forall u\in Y\quad\lVert z-u \rVert=\lVert x-(y+u) \rVert\geq \lVert x-y \rVert=\lVert z \rVert$
