---
dateCreated: 2024-09-22,22:22
---
>[!Lemma]
> A convexo y Cerrado en un H hilbert entonces d(h,A) se minimiza

>[!Proof]-
>Existencia
>1. $\gamma = \inf\{ \lVert p-c \rVert:c\in A \}$ usar def de infimo $\gamma^2\leq\lVert p-q_{n} \rVert \leq \gamma^2 + \frac{1}{n}$
>2. Ver $f_{n}=p-q_{n}$ es cauchy
>3.    $\lVert 2p-(q_{n}-q_{m})\rVert^2+\lVert q_{n}-q_{m} \rVert = \lVert (p-q_{n}) + (p-q_{m})\rVert^2 + \lVert (p-q_{n})-(p-q_{m}) \rVert^2$ 
>   (R.Paralelogramo) $= 2\lVert p-q_{n} \rVert^2+2\lVert p-q_{m} \rVert^2 \leq 4\gamma^2+2\left( \frac{1}{n}+\frac{1}{m} \right)$
>5. Como $A$ conexo $\frac{1}{2}(q_{n}+q_{m})\in A$
>6. $4\gamma^2 \leq 4\left\lVert  p-\frac{1}{2}(q_{n}+q_{m})  \right\rVert^2 = \lVert 2p-(q_{n}+q_{m}) \rVert^2$ (Por 1.)
>7. $\lVert f_{n}-f_{m} \rVert=\lVert q_{n}-q_{m} \rVert < 2\left( \frac{1}{n} +\frac{1}{m}\right)$
>8. Converge por que $H$ Hilbert
>9. $A$ cerrado entonces $q\in A$
>10. $\gamma^2 \leq \lVert p-q \rVert^2=\lim_{ n \to \infty }\lVert p-q_{n} \rVert^2\leq\lim_{ n \to \infty }\gamma^2 + \frac{1}{n}=\gamma^2$ (Norma es continua entonces limite entra)
>
>Unicidad
>1. Supongo $w\in A$ tal que $\lVert p-w \rVert=\gamma$
>2. Entonces $\frac{1}{2}(q+w)\in A$ digamos $\left\lVert  p- \frac{1}{2}(q+w)  \right\rVert\geq\gamma$
>3. (Regla Paralelo) $\lVert (p-w) + (p-q) \rVert^2 + \lVert (p-w)-(p-q) \rVert^2 =4\gamma^2$
>4. $4 \lVert q-w \rVert^2=4\gamma^2-4\left\lVert  p- \frac{1}{2}(q+w)  \right\rVert\leq 0$

>[!Remark]
>En dim finita la existencia de $q$ es cierta inclusive sin que $A$ sea convexo pues $\{ q_{n} \}$ es acotada entonces tiene un sub convergente.
>Pero si $A$ no es convexo la unicidad en general no es cierta ej. $A$ circunferencia y $p$ el centro


>[!Theorem] Sea $Y$ subespacio cerrado en $H$ Hilbertentonces $\forall x \in H\quad\exists(y\in Y,z\in Y)$