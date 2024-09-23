---
dateCreated: 2024-09-22,22:22
---


>[!Definition] Convexidad
> Sea $A\subset X$ espacio vectorial. $A$ es convexo si $\forall x,y\in A$
> $$t x+(1-t)y\in A\quad\forall t\in[0,1]$$

> [!Remark]
>  Todo espacio vectorial es convexo

^0636e2

^cc7fed
>[!Lemma]
> A convexo y Cerrado en un H hilbert entonces d(h,A) se minimiza
>>[!Proof]-
>>Existencia
>>1. $\gamma = \inf\{ \lVert p-c \rVert:c\in A \}$ usar def de infimo $\gamma^2\leq\lVert p-q_{n} \rVert \leq \gamma^2 + \frac{1}{n}$
>>2. Ver $f_{n}=p-q_{n}$ es cauchy
>>3.    $\lVert 2p-(q_{n}-q_{m})\rVert^2+\lVert q_{n}-q_{m} \rVert = \lVert (p-q_{n}) + (p-q_{m})\rVert^2 + \lVert (p-q_{n})-(p-q_{m}) \rVert^2$ 
>>   (R.Paralelogramo) $= 2\lVert p-q_{n} \rVert^2+2\lVert p-q_{m} \rVert^2 \leq 4\gamma^2+2\left( \frac{1}{n}+\frac{1}{m} \right)$
>>5. Como $A$ conexo $\frac{1}{2}(q_{n}+q_{m})\in A$
>>6. $4\gamma^2 \leq 4\left\lVert  p-\frac{1}{2}(q_{n}+q_{m})  \right\rVert^2 = \lVert 2p-(q_{n}+q_{m}) \rVert^2$ (Por 1.)
>>7. $\lVert f_{n}-f_{m} \rVert=\lVert q_{n}-q_{m} \rVert < 2\left( \frac{1}{n} +\frac{1}{m}\right)$
>>8. Converge por que $H$ Hilbert
>>9. $A$ cerrado entonces $q\in A$
>>10. $\gamma^2 \leq \lVert p-q \rVert^2=\lim_{ n \to \infty }\lVert p-q_{n} \rVert^2\leq\lim_{ n \to \infty }\gamma^2 + \frac{1}{n}=\gamma^2$ (Norma es continua entonces limite entra)
>>
>>Unicidad
>>1. Supongo $w\in A$ tal que $\lVert p-w \rVert=\gamma$
>>2. Entonces $\frac{1}{2}(q+w)\in A$ digamos $\left\lVert  p- \frac{1}{2}(q+w)  \right\rVert\geq\gamma$
>>3. (Regla Paralelo) $\lVert (p-w) + (p-q) \rVert^2 + \lVert (p-w)-(p-q) \rVert^2 =4\gamma^2$
>>4. $4 \lVert q-w \rVert^2=4\gamma^2-4\left\lVert  p- \frac{1}{2}(q+w)  \right\rVert\leq 0$

>[!Remark]
>En dim finita la existencia de $q$ es cierta inclusive sin que $A$ sea convexo pues $\{ q_{n} \}$ es acotada entonces tiene un sub convergente. Pero si $A$ no es convexo la unicidad en general no es cierta ej. $A$ circunferencia y $p$ el centro

>[!Theorem] 
>Sea $Y$ subespacio cerrado en $\mathcal{H}$ Hilbert entonces $\forall x \in H\quad\exists \ (y\in Y,z\in Y^{\perp})$ tal que $x=y+z$. Ademas $\lVert x \rVert^2=\lVert y \rVert^2+\lVert z \rVert^2$ (Generalizacion de Pitagoras)
>>[!Proof]-
>>Existencia
>>1. $x \in \mathcal{H}\quad Y\neq \emptyset$ convexo y cerrado entonces por [[Teórico 3#^0636e2]]
>>2. $\exists y\in Y$ tal que $\lVert x-y \rVert\leq \lVert x-u \rVert \forall u\in Y$
>>3. $z=x-y$
>>4. $\forall u\in Y\quad\lVert z-u \rVert=\lVert x-(y+u) \rVert\geq \lVert x-y \rVert=\lVert z \rVert$ ($y+u\in Y$ por ser subespacio)
>>5. Por [[Teórico 2#^75b372]] $z\in Y^{\perp}$
>>
>>Unicidad Trivial

^3686bc

>[!Corollary] 
>Si $Y$ subespacio cerrado en $\mathcal{H}$ hilbert entonces $Y=Y^{\perp\perp}$ 
>>[!Proof]-
>>1. $Y\subset Y^{\perp\perp}$. $x \in Y^{\perp\perp}$ entonces $x=y+z$ [[Teórico 3#^3686bc]]
>

>[!Corollary]
>Si $Y$ subespacio Hilbert entonces $Y^{\perp\perp}=\overline{Y}$
>>[!Proof]
>>trivial

## Base ortogonal de dimension infinita

def de suc ortonormal

>[!Theorem] 
>Todo $X$ e.v.pi de dimension finita contiene una sucesion ortonormal 
>>[!Proof]
>> Usando [[Teórico 1#^8db74f]] Tenemos una sucesion de $\{ x_{n} \}\subset X$ de vectores unitarios que linealmente independientes por construccion. Aplicamos Grahm-Schmidt y obtenemos sucesion ortonormal

>[!Theorem] Desigualdad de Bessel
>$X$ e.v.pi $\{ e_{n} \}\subset X$ sucesion ortonormal entonces $\forall x \in X$
>$g(x + h) = g(x) + g'(x)h + g''(x) \frac{h^{2}}{2!} + \dots \lVert$