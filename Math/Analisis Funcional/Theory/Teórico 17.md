---
dateCreated: 2024-11-10,18:54
---
>[!Definition]
>Sean $X$ e $Y$ espacios normados. Una transformación lineal $T \in L(X, Y)$ es compacta si, para cualquier sucesión acotada $\{x_n\}$ en $X$, la sucesión $\{Tx_n\}$ en $Y$ contiene una subsecuencia convergente. El conjunto de transformaciones compactas en $L(X, Y)$ se denotará por $K(X, Y)$.

>[!Theorem]
>Sean $X$ e $Y$ espacios normados y sea $T \in K(X, Y)$. Entonces $T$ es acotado. Así, $K(X, Y) \subset B(X, Y)$.
>>[!Proof]
>>1. Supongamos que $T$ no es acotado. Entonces, para cada número entero $n \geq 1$, existe un vector unitario $x_n$ tal que $\|Tx_n\| \geq n$. 
>>2. Dado que la sucesión $\{x_n\}$ es acotada, por la compacidad de $T$, existe una subsecuencia $\{Tx_{n(r)}\}$ que converge. 
>>3. Pero esto contradice $\|Tx_{n(r)}\| \geq n(r)$, por lo que $T$ debe ser acotado $\square$

>[!Theorem]
>Sean $X$, $Y$, $Z$ espacios normados.
>- (a) Si $S, T \in K(X, Y)$ y $\alpha, \beta \in \mathbb{C}$ entonces $\alpha S + \beta T$ es compacto. Así, $K(X, Y)$ es un subespacio lineal de $B(X, Y)$.
>- (b) Si $S \in B(X, Y)$, $T \in B(Y, Z)$ y al menos uno de los operadores $S, T$ es compacto, entonces $TS \in B(X, Z)$ es compacto.
>>[!Proof]
>>(a) 
>>1. Sea $\{x_n\}$ una sucesión acotada en $X$. Dado que $S$ es compacto, existe una subsecuencia $\{x_{n(r)}\}$ tal que $\{Sx_{n(r)}\}$ converge. 
>>2. Luego, dado que $\{x_{n(r)}\}$ es acotada y $T$ es compacto, existe una subsecuencia $\{x_{n(r(s))}\}$ de la sucesión $\{x_{n(r)}\}$ tal que $\{Tx_{n(r(s))}\}$ converge. 
>>3. Se deduce que la sucesión $\{\alpha Sx_{n(r(s))} + \beta Tx_{n(r(s))}\}$ converge. Así, $\alpha S + \beta T$ es compacto.
>>
>>(b) 
>> 1. Sea $\{x_n\}$ una sucesión acotada en $X$. Si $S$ es compacto entonces existe una subsecuencia $\{x_{n(r)}\}$ tal que $\{Sx_{n(r)}\}$ converge. 
>> 2. Como $T$ es acotado (y, por lo tanto, continuo), la sucesión $\{TSx_{n(r)}\}$ converge. 
>> 3. Así, $TS$ es compacto. Si $S$ es acotado pero no compacto, entonces la sucesión $\{Sx_n\}$ es acotada. 
>> 4. Luego, dado que $T$ debe ser compacto, existe una subsecuencia $\{Sx_{n(r)}\}$ tal que $\{TSx_{n(r)}\}$ converge, y nuevamente $TS$ es compacto.

>[!Theorem]
>Sean $X$, $Y$ espacios normados y $T \in B(X, Y)$.
>- (a) Si $T$ tiene rango finito, entonces $T$ es compacto.
>- (b) Si $\dim X$ o $\dim Y$ es finito, entonces $T$ es compacto.
>>[!Proof]
>>(a) 
>>1. Dado que $T$ tiene rango finito, el espacio $Z = \text{Im } T$ es un espacio normado de dimensión finita. 
>>2. Además, para cualquier sucesión acotada $\{x_n\}$ en $X$, la sucesión $\{Tx_n\}$ está acotada en $Z$, por lo que, por el teorema de Bolzano–Weierstrass, esta sucesión debe contener una subsecuencia convergente. 
>>3. Por lo tanto, $T$ es compacto.
>>
>>(b) 
>>1. Si $\dim X$ es finito, entonces $\text{r}(T) \leq \dim X$, por lo que $\text{r}(T)$ es finito, mientras que si $\dim Y$ es finito, entonces claramente la dimensión de $\text{Im } T \subset Y$ debe ser finita. 
>>2. Así, en cualquiera de los casos, el resultado se deduce de la parte (a)

>[!Theorem]
>Si $X$ es un espacio normado de dimensión infinita, entonces el operador identidad $I$ en $X$ no es compacto.
>>[!Proof]
>>1. Dado que $X$ es un espacio normado de dimensión infinita, la prueba del Teorema 2.26 muestra que existe una sucesión de vectores unitarios $\{x_n\}$ en $X$ que no tiene ninguna subsecuencia convergente. 
>>2. Así, la sucesión $\{Ix_n\} = \{x_n\}$ no puede tener una subsecuencia convergente, y por lo tanto el operador $I$ no es compacto.

>[!Corollary]
>Si $X$ es un espacio normado de dimensión infinita y $T \in K(X)$, entonces $T$ no es invertible.
>>[!Proof]
>>1. Supongamos que $T$ es invertible. Entonces, por el Teorema 7.3, el operador identidad $I = T^{-1}T$ en $X$ debe ser compacto. 
>>2. Pero como $X$ es de dimensión infinita, esto contradice el Teorema 7.6.

>[!Remark]-
>Ahora introducimos una caracterización equivalente de los operadores compactos y una propiedad importante del rango de dichos operadores.

>[!Theorem]
>Sean $X$, $Y$ espacios normados y sea $T \in L(X, Y)$.
>- (a) $T$ es compacto si y solo si, para cada subconjunto acotado $A \subset X$, el conjunto $T(A) \subset Y$ es relativamente compacto.
>- (b) Si $T$ es compacto, entonces $\text{Im} T$ y $\text{Im} T$ son separables.
>>[!Proof]
>>(a) 
>>1. Supongamos que $T$ es compacto. Sea $A \subset X$ acotado y supongamos que $\{y_n\}$ es una sucesión arbitraria en $T(A)$. 
>>2. Entonces, para cada $n \in \mathbb{N}$, existe un $x_n \in A$ tal que $\|y_n - T x_n\| < n^{-1}$, y la sucesión $\{x_n\}$ está acotada ya que $A$ es acotado. 
>>3. Así, por la compacidad de $T$, la sucesión $\{T x_n\}$ contiene una subsecuencia convergente, y por lo tanto, $\{y_n\}$ contiene una subsecuencia convergente con límite en $T(A)$.
>>4. Dado que $\{y_n\}$ es arbitraria, esto muestra que $T(A)$ es compacto.
>>
>>(b) 
>>1. Para cualquier $r \geq 1$, sea $R_r = T(B_r(0)) \subset Y$ la imagen de la bola $B_r(0) \subset X$. 
>>2. Como $T$ es compacto, el conjunto $R_r$ es relativamente compacto y, por lo tanto, separable, por el Teorema 1.43. 
>>3. Además, como $\text{Im} T$ es la unión numerable contable de $R_r$, debe ser separable. 
>>4. Finalmente, si un subconjunto de $\text{Im} T$ es denso en $\text{Im} T$ entonces también es denso en $\text{Im} T$ (ver el Ejercicio 7.14), por lo que $\text{Im} T$ es separable.

>[!Remark]
>Parte (b) del Teorema 7.8 implica que si $T$ es compacto, entonces incluso si el espacio $X$ es "grande" (no separable), el rango de $T$ es "pequeño" (separable). En cierto sentido, esta es la razón por la cual la teoría de los operadores compactos tiene muchas similitudes con la de los operadores en espacios finito-dimensionales.

>[!Remark]
> Ahora consideramos cómo demostrar que un operador dado es compacto. El siguiente teorema, que muestra que el límite de una sucesión de operadores compactos en $B(X, Y)$ es compacto, nos proporcionará un método muy poderoso para hacerlo.

>[!Theorem]
>Si $X$ es un espacio normado, $Y$ es un espacio de Banach y $\{T_k\}$ es una sucesión en $K(X, Y)$ que converge a un operador $T \in B(X, Y)$, entonces $T$ es compacto. Por lo tanto, $K(X, Y)$ está cerrado en $B(X, Y)$.
>>[!Proof]
>>1. Sea $\{x_n\}$ una sucesión acotada en $X$. Por compacidad, existe una subsecuencia de $\{x_n\}$, a la que etiquetaremos como $\{x_{n(1, r)}\} = \{x_{n(1, r)}\}_{r=1}^{\infty}$, tal que la sucesión $\{T_1 x_{n(1, r)}\}$ converge. 
>>2. De manera similar, existe una subsecuencia $\{x_{n(2, r)}\}$ de $\{x_{n(1, r)}\}$ tal que $\{T_2 x_{n(2, r)}\}$ converge. Además, $\{T_1 x_{n(2, r)}\}$ converge ya que es una subsecuencia de $\{T_1 x_{n(1, r)}\}$. 
>>3. Repitiendo este proceso inductivamente, vemos que para cada $j \in \mathbb{N}$ hay una subsecuencia $\{x_{n(j, r)}\}$ con la propiedad de que: para cualquier $k \leq j$, la sucesión $\{T_k x_{n(j, r)}\}$ converge. 
>>4. Sea $n(r) = n(r, r)$, para $r \in \mathbb{N}$, obtenemos una única subsecuencia $\{x_{n(r)}\}$ con la propiedad de que, para cada $k$ fijo de $\mathbb{N}$, la sucesión $\{T_k x_{n(r)}\}$ converge a medida que $r \to \infty$ (este tipo de argumento de "diagonalización de Cantor" es necesario para obtener una única sucesión que converge simultáneamente para todos los operadores $T_k$, $k \in \mathbb{N}$; ver [7] para otros ejemplos de tales argumentos). 
>>5. Veremos ahora que la sucesión $\{T x_{n(r)}\}$ converge. Lo hacemos mostrando que $\{T x_{n(r)}\}$ es una sucesión de Cauchy y, por lo tanto, converge ya que $Y$ es un espacio de Banach.
>>6. Sea $\epsilon > 0$ dado. Dado que la subsecuencia $\{x_n(r)\}$ está acotada, existe $M > 0$ tal que $\|x_n(r)\| \leq M$, para todo $r \in \mathbb{N}$. 
>>7. Además, como $\|T_k - T\| \to 0$, cuando $k \to \infty$, existe un entero $K \geq 1$ tal que $\|T_k - T\| < \epsilon / 3M$. 
>>8. A continuación, dado que $\{T_k x_n(r)\}$ converge, existe un entero $R \geq 1$ tal que si $r, s \geq R$ entonces $\|T_k x_n(r) - T_k x_n(s)\| < \epsilon / 3$
>>9. Pero ahora tenemos, para $r, s \geq R$
>>$$\|T x_n(r) - T x_n(s)\| < \|T x_n(r) - T_k x_n(r)\| + \|T_k x_n(r) - T_k x_n(s)\| + \|T_k x_n(s) - T x_n(s)\| < \epsilon$$
>>lo que demuestra que $\{T x_n(r)\}$ es una sucesión de Cauchy.

>[!Remark]-
>En aplicaciones del Teorema 7.9, a menudo sucede que los operadores $T_k$ son acotados y tienen rango finito, por lo que son compactos por el Teorema 7.5. Para referencia, lo establecemos en el siguiente corolario.

>[!Corollary]
>Si $X$ es un espacio normado, $Y$ es un espacio de Banach y $\{T_k\}$ es una sucesión de operadores acotados de rango finito que converge a $T \in B(X, Y)$, entonces $T$ es compacto.

>[!Example]
>El operador $T \in B(\ell^2)$ definido por $T\{a_n\} = \{n^{-1}a_n\}$ es compacto (Ejemplo 4.5 muestra que $T \in B(\ell^2)$).
>>[!Proof]
>>1. Para cada $k \in \mathbb{N}$ definimos el operador $T_k \in B(\ell^2)$ por 
>>$$
T_k\{a_n\} = \{b_k^n\}, \quad \text{donde} \quad 
b_k^n = 
\begin{cases} 
n^{-1} a_n, & \text{si } n \leq k, \\
0, & \text{si } n > k.
\end{cases} $$
>>2. Los operadores $T_k$ son acotados y lineales, y tienen rango finito. 
>>3. Además, para cualquier $a \in \ell^2$ tenemos 
>>$$\|(T_k - T)a\|^2 = \sum_{n=k+1}^{\infty} |a_n|^2/n^2 \leq (k + 1)^{-2} \sum_{n=k+1}^{\infty} |a_n|^2 \leq (k + 1)^{-2}\|a\|^2.$$
>>4. Esto implica que $\|T_k - T\| \leq (k + 1)^{-1}$
>>5. Y por lo tanto $\|T_k - T\| \to 0$. Así, $T$ es compacto por el Corolario 7.10

>[!Remark]
>El recíproco del Corolario 7.10 no es cierto, en general, cuando $Y$ es un espacio de Banach, pero sí es cierto cuando $Y$ es un espacio de Hilbert

>[!Theorem]
>Si $X$ es un espacio normado, $H$ es un espacio de Hilbert y $T \in K(X, H)$, entonces existe una sucesión de operadores de rango finito $\{T_k\}$ que converge a $T$ en $B(X, H)$.
>>[!Proof]
>>1. Si $T$ mismo tuviera rango finito, el resultado sería trivial, así que asumimos que no lo tiene. 
>>2. Por el Lema 3.25 y el Teorema 7.8, el conjunto $\text{Im} T$ es un espacio de dimensión infinita, separable, por el Teorema 3.52 tiene una base ortonormal $\{e_n\}$. 
>>3. Para cada entero $k \geq 1$, sea $P_k$ la proyección ortogonal de $\text{Im} T$ sobre el subespacio lineal $M_k = \text{Sp}\{e_1, \dots, e_k\}$, y sea $T_k = P_k T$. 
>>4. Dado que $\text{Im} T \subset M_k$, el operador $T_k$ tiene rango finito. 
>>5. Mostraremos que $\|T_k - T\| \to 0$ a medida que $k \to \infty$.
>>6. Supongamos que esto no es cierto. Entonces, después de tomar una subsecuencia de la sucesión $\{T_k\}$ si es necesario, existe un $\epsilon > 0$ tal que $\|T_k - T\| \geq \epsilon$ para todo $k$. 
>>7. Así, existe una sucesión de vectores unitarios $x_k \in X$ tal que $\|(T_k - T) x_k\| \geq \epsilon/2$ para todo $k$. 
>>8. Como $T$ es compacto, podemos suponer que $T x_k \to y$, para algún $y \in H$ (después de tomar nuevamente una subsecuencia si es necesario). 
>>9. Ahora, usando la representación de $P_m$ en el Corolario 6.53, tenemos
>>$$(T_k - T) x_k = (P_k - I) T x_k + (P_k - I)(T x_k - y)$$
>>por lo que tomando normas deducimos que 
>>$$\epsilon / 2 \leq \| (T_k - T) x_k \| \leq \left( \sum_{n=k+1}^{\infty} (y, e_n)^2 \right)^{1/2} + 2 \|T x_k - y\|$$
>>(Siendo $\|P_k\| = 1$, por el Teorema 6.51). 
>>10. El lado derecho de esta desigualdad tiende a cero a medida que $k \to \infty$, lo que es una contradicción, y por lo tanto se demuestra el teorema.

>[!Remark]
>Usando estos resultados ahora podemos mostrar que el adjunto de un operador compacto es compacto. Primero tratamos con operadores de rango finito.

>[!Lemma]
>Si $H$ es un espacio de Hilbert y $T \in B(H)$, entonces $r(T) = r(T^*)$ (ya sean números finitos o $\infty$). En particular, $T$ tiene rango finito si y solo si $T^*$ tiene rango finito.
>>[!Proof]
>>1. Supongamos primero que $r(T) < \infty$. 
>>2. Para cualquier $x \in H$, escribimos la descomposición ortogonal de $x$ con respecto a $\text{Ker } T^*$ como $x = u + v$, con $u \in \text{Ker } T^*$ y $v \in \text{Im } T$ (ya que $r(T) < \infty$). 
>>3. Así, $T^* x = T^*(u + v) = T^* v$, y por lo tanto $\text{Im } T^* = T^*(\text{Im } T)$, lo que implica que $r(T^*) \leq r(T)$. 
>>4. Por lo tanto, $r(T^*) \leq r(T) < \infty$.
>>5. Aplicando este resultado a $T^*$, y usando que $(T^*)^* = T$, también obtenemos que $r(T) \leq r(T^*)$ cuando $r(T^*) < \infty$. 
>>6. Esto prueba el lema cuando ambos rangos son finitos, y también demuestra que es imposible que uno de los rangos sea finito y el otro infinito, lo que también prueba el caso de rango infinito.

>[!Theorem]
>Si $H$ es un espacio de Hilbert y $T \in B(H)$, entonces $T$ es compacto si y solo si $T^*$ es compacto.
>>[!Proof]
>>1. Supongamos que $T$ es compacto. Entonces, por el Teorema 7.12, existe una sucesión de operadores de rango finito $\{T_n\}$, tal que $\|T_n - T\| \to 0$. 
>>2. Por el Lema 7.13, cada operador $T_n^*$ tiene rango finito y, por el Teorema 6.10, $\|T_n^* - T^*\| = \|T_n - T\| \to 0$. 
>>3. Por lo tanto, por el Corolario 7.10, $T^*$ es compacto. 
>>4. Así, si $T$ es compacto, entonces $T^*$ es compacto. 
>>5. Ahora, por este resultado y $(T^*)^* = T$, se sigue que si $T^*$ es compacto, entonces $T$ es compacto, lo que completa la prueba

>[!Definition]
>Sea $H$ un espacio de Hilbert de dimensión infinita con una base ortonormal $\{e_n\}$ y sea $T \in B(H)$. Si la condición
>$$\sum_{n=1}^{\infty} \|T e_n\|^2 < \infty$$
>se cumple, entonces $T$ es un operador Hilbert-Schmidt  

>[!Remark]
>Al primera vista pareceria que esta definición podría depender de la elección de la base ortonormal de $H$. El siguiente teorema muestra que esto no es así.

>[!Theorem]
>Sea $H$ un espacio de Hilbert de dimensión infinita y sea $\{e_n\}$ y $\{f_n\}$ bases ortonormales para $H$. Sea $T \in B(H)$.
>- (a) $\sum_{n=1}^{\infty} \|T e_n\|^2 = \sum_{n=1}^{\infty} \|T^* f_n\|^2 = \sum_{n=1}^{\infty} \|T f_n\|^2$ (donde los valores de estas sumas pueden ser finitos o $\infty$).
Así, la condición para que un operador sea Hilbert-Schmidt no depende de la elección de la base ortonormal de $H$.
>- (b) $T$ es Hilbert-Schmidt si y solo si $T^*$ es Hilbert-Schmidt.
>- (c) Si $T$ es Hilbert-Schmidt, entonces es compacto.
>- (d) El conjunto de operadores Hilbert-Schmidt es un subespacio lineal de $B(H)$.
>>[!Proof]
>>(a) 
>>1. Como $\{ f_{n} \}$ es base ortogonal $\lVert x \rVert^{2}=\sum^{\infty}_{n=1}\lvert (f,f_{n}) \rvert^{2}\quad\forall x\in \mathcal{H}$
>>$$\sum^{\infty}_{n=1} \lVert Te_{n} \rVert^2 =\sum_{n=1}^{\infty} \sum_{m=1}^{\infty} \lvert (T e_n, f_m) \rvert^2=\sum^{\infty}_{n=1}\sum^{\infty}_{m=1}\lvert (e_{n},T^{*}f_{m}) \rvert^{2}=\sum^{\infty}_{m=1}\lVert T^{*}f_{m} \rVert$$
>>4. Luego poniendo $T^{*}e_{n}$ en lugar de $Te_{n}$ se termina
>>
>>(b) 
>>1. Trivial de (a)
>>
>>(c) 
>>1. El conjutno de operadores de Hilbert Schmidt es subespacio de $B(\mathcal{H})$

>[!Remark]
>Se demostrará en el Ejercicio 7.11 que los operadores de rango finito son Hilbert-Schmidt, pero no todos los operadores compactos son Hilbert-Schmidt.
