---
dateCreated: 2024-09-23,08:32
---
def. de pi

lema evpi

>[!proposition]
>$X$ e.v.pi $x,y\in X$ entonces:
>1. $\lvert (x,y) \rvert\leq(x,x)(y,y)$
>2. La fc $\lVert \cdot \rVert X\rightarrow \mathbb{R}$ dada por $\lVert x \rVert=(x,x)^{\frac{1}{2}}$ es norma en $X$

lema sobre evpi

>[!Theorem] Regla Paralelogramo e identidades de polarizacion
> Sea $X$ e.v.pi con norma inducida $\lVert \cdot \rVert$ entonces $\forall x,y\in X$ vale:
> 1. $\lVert x+y \rVert^2 + \lVert x-y \rVert^2 = 2(\lVert x \rVert^2+\lVert y \rVert^2)$ (Regla Paralelogramo)
> 2. Si $\mathbb{F}=\mathbb{R}\quad \quad 4(x,y)=\lVert x-y \rVert^2-\lVert x-y \rVert^2$
> 3. Si $\mathbb{F}=\mathbb{C}\quad\quad 4(x,y)=\lVert x+y \rVert^2-\lVert x-y \rVert^2+i\lVert x+iY \rVert^2-i\lVert x-iy \rVert^2$

>[!proposition] Continuidad del producto interno
>Sea $X$ e.v.pi. $\{ x_{n} \},\{ y_{n} \}\subseteq X$ con $x_{n}\rightarrow x,\quad y_{n}\rightarrow y$ en $X$ entonces
>$$(x_{n},y_{n})\rightarrow(x,y)$$

## Ortogonalidad

def de orto p8

lema sobre ortogonalidad p8


>[!Definition] Espacio de Hilbert
>Un espacio con producto interno completo con respecto a la metrica asociada a la norma inducida por el producto interno se dice espacio de Hilbert

>[!Example] Contraejemplo I
>$A =\{ \{ x_{n} \} \ / \ x_{n}\neq 0 \text{ solo en finitos n}\}$ es facil ver que $(\{ x_{n} \},\{ y_{n} \})=\sum^{\infty}_{n=1}x_{n}\overline{y_{n}}$ es producto interno con norma inducida $\lVert \{ x_{n} \} \rVert=\big(\sum^{\infty}_{n=1}\lvert x_{n} \rvert^{2}\big)^{\frac{1}{2}}$. Restaria ver que no es completo

^9624e4

>[!proposition] Sub cerrado es Hilbert
>Sea $\mathcal{H}$ Hilbert, $Y\subset H$ sub espacio entonces $$Y \text{ Hilbert}\iff Y \text{ es cerrado en }\mathcal{H}$$

^b5ecab

def de complemento orto

>[!Lemma]
>$X$ e.v.pi $A\subseteq X$ subconjunto entonces:
>1. $0\in A^{\perp}$
>2. Si $0\in A \in A\Rightarrow A \cap A^{\perp} = \{ 0 \}$ si no $A\cap A^{\perp} = \emptyset$
>3. $\{ 0 \}^{\perp}=X \quad\land\quad X^{\perp}=\{ 0 \}$
>4. Si $A$ contiene una bola $B_{a}(r)$ para algun $r>0$ y $a\in A\Rightarrow A^{\perp}=\{ 0 \}$
>	(Si $A$ abierto no vacio $\Rightarrow A^{\perp}=\{ 0 \}$)
>5. $B\subseteq A\Rightarrow A^{\perp}\subseteq B^{\perp}$
>6. $A^{\perp}$ es una sub cerrado de $X$
>7. $A\subseteq (A^{\perp})^{\perp}=A^{\perp\perp}$
>>[!Proof]
>>Pendiente
 
---

>[!proposition] $X\in Y^{\perp} \iff \lVert x-y \rVert\geq \lVert x \rVert$ 
>Sea $Y$ subespacio de $X$ e.v.pi entonces $X\in Y^{\perp} \iff \lVert x-y \rVert\geq \lVert x \rVert$
>>[!Proof]
>>

^75b372


