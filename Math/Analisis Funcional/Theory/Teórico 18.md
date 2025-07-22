---
dateCreated: 2024-11-10,19:33
---
>[!Remark]
>A partir de ahora en este capítulo supondremos que $H$ es un espacio de Hilbert complejo y que $T \in K(H)$ (requiriendo que $H$ sea complejo para que podamos discutir la teoría espectral). Si $H$ es de dimensión finita, sabemos que el espectro de $T$ consiste en una colección no vacía, finita, de autovalores, cada uno con multiplicidad finita (ver la Definición 1.13). Para operadores generales en espacios infinitos, el espectro puede ser muy diferente, pero para operadores compactos el espectro tiene muchas similitudes con el caso finito-dimensional. Específicamente, mostraremos que si $H$ es de dimensión infinita, entonces $\sigma(T)$ consiste en una colección numerable (posiblemente vacía o finita) de autovalores no nulos, cada uno con multiplicidad finita, junto con el punto $\lambda = 0$, que necesariamente pertenece a $\sigma(T)$, pero no tiene que ser un autovalor o, si lo es, no tiene por qué tener multiplicidad finita. Para describir esta estructura de $\sigma(T)$, la siguiente notación será conveniente.

>[!Definition]
>Sea $K$ un espacio de Hilbert y sea $S \in B(K)$. Definimos los conjuntos
$$\sigma_p(S) = \{\lambda : \lambda \text{ es un autovalor de } S\}, \quad \rho(S) = \mathbb{C} \setminus \sigma(S)$$
>El conjunto $\sigma_p(S)$ es el espectro puntual de $S$, mientras que $\rho(S)$ es el conjunto resolvente de $S$

>[!Remark]
>Comenzamos nuestra discusión de $\sigma(T)$ tratando el punto $\lambda = 0$.

>[!Theorem]
>Si $H$ es de dimensión infinita, entonces $0 \in \sigma(T)$. Si $H$ es separable, entonces ocurre que $0 \in \sigma_p(T)$ o $0 \in \sigma(T) \setminus \sigma_p(T)$. Si $H$ no es separable, entonces $0 \in \sigma_p(T)$.
>>[!Proof]
>>1. Si tuviéramos que $0 \in \rho(T)$, entonces $T$ sería invertible. Sin embargo, dado que $H$ es de dimensión infinita, esto contradice el Corolario 7.7, por lo que debemos tener $0 \in \sigma(T)$.
>>2. si $\mathcal{H}$ no es separable entonces $\overline{ImT^{*}}\not\in\mathcal{H}$ pues $\overline{ImT}$ separable si $T$ compacto y $T^{*}$ compacto si $T$ compacto

>[!Remark]
>Ahora consideramos el caso $\lambda\neq0$ primero introduzcamos algunos resultados

>[!Theorem]
>Si $\lambda \neq 0$ entonces $\text{Ker}(T - \lambda I)$ tiene dimensión finita.
>>[!Proof]
>>1. Supongamos que $M = \text{Ker}(T - \lambda I)$ es infinito-dimensional. 
>>2. Dado que el núcleo de un operador acotado es cerrado (por el Lema 4.11), el espacio $M$ es un espacio de Hilbert infinito-dimensional, y existe una sucesión ortonormal $\{e_n\}$ en $M$ (por el Teorema 3.40). 
>>3. Como $e_n \in \text{Ker}(T - \lambda I)$, tenemos $T e_n = \lambda e_n$ para cada $n \in \mathbb{N}$, y dado que $\lambda \neq 0$, la sucesión $\{\lambda e_n\}$ no puede tener una subsecuencia convergente, ya que $\{e_n\}$ es ortonormal (ver Ejercicio 7.4). 
>>4. Esto contradice la compacidad de $T$, lo que prueba el teorema.

>[!Theorem]
>Si $\lambda \neq 0$ entonces $\text{Im}(T - \lambda I)$ es cerrado.
>>[!Proof]
>>1. Sea $\{y_n\}$ una sucesión en $\text{Im}(T - \lambda I)$, con $\lim_{n \to \infty} y_n = y$. 
>>2. Entonces para cada $n$ tenemos $y_n = (T - \lambda I) x_n$, para algún $x_n$, y dado que $\text{Ker}(T - \lambda I)$ es cerrado, $x_n$ tiene una descomposición ortogonal de la forma $x_n = u_n + v_n$, con $u_n \in \text{Ker}(T - \lambda I)$ y $v_n \in \text{Ker}(T - \lambda I)^\perp$. 
>>3. Supongamos que esto no es cierto. Luego, después de tomar una subsecuencia si es necesario, podemos suponer que $\|v_n\| \neq 0$, para todo $n$, y $\lim_{n \to \infty} \|v_n\| = \infty$. 
>>4. Colocando $w_n = v_n / \|v_n\|$, tenemos que $w_n \in \text{Ker}(T - \lambda I)^\perp$, $\|w_n\| = 1$ (así que la sucesión $\{w_n\}$ está acotada) y 
>>$$(T - \lambda I) w_n = \frac{y_n}{\|v_n\|}.$$
>>5. Como $\{y_n\}$ está acotada (porque es convergente), también, por la compacidad de $T$, podemos suponer que $\{T w_n\}$ converge (después de tomar una subsecuencia si es necesario). 
>>6. Al combinar estos resultados, se deduce que la sucesión $\{w_n\}$ converge (ya que $\lambda \neq 0$). 
>>7. Sea $w = \lim_{n \to \infty} w_n$, vemos que $\|w\| = 1$ y
>>$$(T - \lambda I) w = \lim_{n \to \infty} (T - \lambda I) w_n = 0$$
>>por lo que $w \in \text{Ker}(T - \lambda I)$. 
>>8. Sin embargo, $w_n \in \text{Ker}(T - \lambda I)$, por lo tanto $\|w - w_n\|^2 = \|w - w_n\|^2 + \|w - w_n\|^2 = 1 + 1 = 2$. Lo que contradice que $w_n \to w$. 
>>9. Por lo tanto, la sucesión $\{v_n\}$ está acotada. 
>>10. Ahora, por la compacidad de $T$, podemos suponer que $\{v_n\}$ converge. 
>>11. Luego, $v_n = \lambda^{-1}(T v_n - (T - \lambda I) v_n) = \lambda^{-1}(T v_n - y_n)$, para $n \in \mathbb{N}$, por lo que la sucesión $\{v_n\}$ converge. Su límite es $v$. 
>>12. Luego $y = \lim_{n \to \infty} y_n = \lim_{n \to \infty} (T - \lambda I) v_n = (T - \lambda I) v$
>>13. entonces $y \in \text{Im}(T - \lambda I)$. Esto prueba que $\text{Im}(T - \lambda I)$ es cerrado

>[!Remark]
>Como $T^*$ también es compacto, los Teoremas 7.19 y 7.20 también se aplican a $T^*$, y en particular, el conjunto $\text{Im}(T^* - \lambda I)$ es cerrado cuando $\lambda \neq 0$. Así, por el Corolario 3.36 y el Lema 6.11 obtenemos el siguiente resultado.

>[!Corollary]
>Si $\lambda \neq 0$ entonces
>$$\text{Im}(T - \lambda I) = \text{Ker}(T^* - \lambda I)^\perp, \quad \text{Im}(T^* - \lambda I) = \text{Ker}(T - \lambda I)^\perp.$$

>[!Remark]
>Ahora podemos comenzar a discutir la estructura de la parte no nula de $\sigma(T)$ y $\sigma(T^*)$ (de nuevo, los siguientes resultados se aplican a $T^*$ tanto como a $T$).
\textbf{Teorema 7.22}

>[!Theorem]
>Para cualquier real $t > 0$, el conjunto de todos los autovalores distintos de $T$ con $|\lambda| \geq t$ es finito.
>>[!Proof]
>>1. Supongamos en cambio que para algún $t_0 > 0$ existe una sucesión de autovalores distintos $\{\lambda_n\}$ con $|\lambda_n| \geq t_0$ para todo $n$, y sea $\{e_n\}$ una sucesión de autovectores unitarios correspondientes. 
>>2. Ahora vamos a construir, inductivamente, una sucesión particular de vectores unitarios $\{y_n\}$. Sea $y_1 = e_1$.
>>3. Ahora consideremos cualquier entero $k \geq 1$. Por el Lema 1.14, el conjunto $\{e_1, \dots, e_k\}$ es linealmente independiente, por lo que el conjunto $M_k = \text{Sp}\{e_1, \dots, e_k\}$ es de dimensión $k$ y está cerrado por el Corolario 2.20. 
>>4. Cualquier $e \in M_k$ puede escribirse como $e = \alpha_1 e_1 + \dots + \alpha_k e_k$, y tenemos
>>$$(T - \lambda_k I) e = \alpha_1 (\lambda_1 - \lambda_k) e_1 + \dots + \alpha_k (\lambda_{k-1} - \lambda_k) e_{k-1}$$
>>5. y si $e \in M_k$, entonces $(T - \lambda_k I) e \in M_{k-1}$
>>6. De forma similar, si $e \in M_k$, entonces $T e \in M_k$.
>>7. A continuación, $M_k$ es un subespacio cerrado de $M_{k+1}$ y no igual a $M_{k+1}$, por lo que el complemento ortogonal de $M_k$ en $M_{k+1}$ es un subespacio lineal no trivial de $M_{k+1}$. 
>>8. Por lo tanto, existe un vector unitario $y_{k+1} \in M_{k+1}$ tal que $(y_{k+1}, e) = 0$ para todo $e \in M_k$ y $\|y_{k+1} - e\| = 1$.
>>9. Repitiendo este proceso inductivamente, construimos una sucesión $\{y_n\}$.
>>10. Ahora, por la construcción de la sucesión $\{y_n\}$, para cualquier $m, n$ con $n > m$, tenemos
>>$$\|T y_n - T y_m\| = |\lambda_n| \|y_n - \lambda_n^{-1} [(T - \lambda_n) y_n + T y_m]\| \geq |\lambda_n| \geq t_0$$
>>11. Dado que, por los resultados anteriores, $-(T - \lambda_n) y_n + T y_m \in M_{n-1}$. 
>>12. Esto muestra que la sucesión $\{T y_n\}$ no puede tener una subsecuencia convergente. 
>>13. Esto contradice la compacidad de $T$, lo que prueba el teorema. 

>[!Remark]
>Al tomar la unión de los conjuntos finitos de autovalores $\lambda$ con $|\lambda| \geq r^{-1}$, $r = 1, 2, \dots$, obtenemos el siguiente corolario del Teorema de arriba.

>[!Corollary]
>El conjunto $\sigma_p(T)$ es a lo sumo numerablemente infinito. Si $\{\lambda_n\}$ es cualquier sucesión de autovalores distintos de $T$ entonces $\lim_{n \to \infty} \lambda_n = 0$.

>[!Remark]
>Notamos que es posible para un operador compacto $T$ en un espacio de dimensión infinita no tener autovalores en absoluto, ver el Ejercicio 7.17. En ese caso, por el Teorema 7.18 y el Teorema 7.25 más abajo, $\sigma(T) = \{0\}$.

>[!Remark]
>Ahora vamos a mostrar que para cualquier operador compacto $T$, todos los puntos no nulos de $\sigma(T)$ deben ser autovalores. Dado que $T^*$ también es compacto, se sigue de esto y del Lema 6.37 que si $\lambda \neq 0$ es un autovalor de $T$, entonces $\bar{\lambda}$ es un autovalor de $T^*$. También demostraremos que estos autovalores tienen igual multiplicidad finita. Estos resultados son estándar en el caso finito-dimensional. Los demostraremos en el caso infinito-dimensional en dos pasos:
>- (a) consideramos operadores de rango finito y reducimos el problema al caso finito-dimensional
>- (b) consideramos operadores compactos generales y reducimos el problema al caso de rango finito.

>[!Remark]
>La siguiente notación será útil en la prueba del siguiente lema
>Supongamos que $X$, $Y$ son espacios normados y $A \in B(X)$, $B \in B(Y, X)$, $C \in B(X, Y)$ y $D \in B(Y)$. 
>Podemos definir un operador $M \in B(X \times Y)$ por
>$$M(x, y) = (A x + B y, C x + D y)$$
>ver el Ejercicio 7.18. Este operador puede escribirse en forma de "matriz" como
>$$M \left[ \begin{array}{c} x \\ y \end{array} \right] = \left[ \begin{array}{cc} A & B \\ C & D \end{array} \right] \left[ \begin{array}{c} x \\ y \end{array} \right]$$
>donde, formalmente, usamos las reglas estándar de multiplicación de matrices para evaluar el producto de matrices, aunque los elementos en las matrices son operadores o vectores – esto es válido siempre que mantengamos el orden correcto de los operadores y vectores.

>[!Lemma]
>Si $T$ tiene rango finito y $\lambda \neq 0$, entonces, o bien: (a) $\lambda \in \rho(T)$ y $\bar{\lambda} \in \rho(T^*)$; o (b) $\lambda \in \sigma_p(T)$ y $\bar{\lambda} \in \sigma_p(T^*)$. Además, $n(T - \lambda I) = n(T^* - \lambda I) < \infty$.
>>[!Proof]
>>1. Sea $M = \text{Im} T$ y $N = \text{Ker} T^* = M^\perp$ (por el Lema 6.11). 
>>2. Dado que $M$ es finito-dimensional es cerrado, así que cualquier $x \in H$ tiene una descomposición ortogonal $x = u + v$, con $u \in M$, $v \in N$. 
>>3. Usando esta descomposición, podemos identificar cualquier $x \in H$ con un único elemento $(u, v) \in M \times N$, y viceversa (alternativamente, esto demuestra que el espacio $H$ es isométricamente isomorfo al espacio $M \times N$). 
>>4. Además $(T - \lambda I)(u + v) = T u - \lambda u + T v - \lambda v$ y tenemos que $T u - \lambda u \in M$, $T v \in M$ y $-\lambda v \in N$. 
>>5. Se sigue de esto que podemos expresar la acción del operador $(T - \lambda I)$ en forma de matriz como
>>$$(T - \lambda I) \begin{bmatrix} u \\ v \end{bmatrix} = \begin{bmatrix} (T - \lambda I)|_M & T|_M \\ 0 & -\lambda I|_N \end{bmatrix} \begin{bmatrix} u \\ v \end{bmatrix}$$
>>6. donde $(T - \lambda I)|_M \in B(M)$, $T|_M \in B(N, M)$ y $I|_N \in B(N)$ denotan las restricciones de los operadores $T - \lambda I$, $T$ e $I$ a los espacios $M$ y $N$. 
>>7. Ahora escribimos $A = (T - \lambda I)|_M$. 
>>8. Se sigue del Lema 1.12 y el Corolario 4.45 que si $A$ es invertible (es decir, $n(A) = 0$) o $n(A) > 0$, y por lo tanto, por el Ejercicio 7.18, o bien $T - \lambda I$ es invertible o $n(T - \lambda I) = n(A) > 0$, es decir, $\lambda \in \sigma_p(T)$.
>>9. Ahora sea $P_M$, $P_N$ los proyectores ortogonales de $H$ sobre $M, N$. 
>>10. Usando $I = P_M + P_N$ y $N = \text{Ker } T^*$, tenemos que
>>$$(T^* - \lambda I)(u + v) = (T^* - \lambda I) u = P_M(T^* - \lambda I) u + P_N T^* u - \lambda v$$
>>11. Por lo tanto, $T^* - \lambda I$ puede representarse en forma de matriz por
>>$$(T^* - \lambda I) \begin{bmatrix} u \\ v \end{bmatrix} = \begin{bmatrix} P_M(T^* - \lambda I)|_M & P_N(T^* - \lambda I)|_M \\ P_N(T^* - \lambda I)|_M & 0 \end{bmatrix} \begin{bmatrix} u \\ v \end{bmatrix}$$
>>12. De nuevo, por álgebra lineal finita, $n(A^*) = n(A)$ (ver el Ejercicio 7.20). 
>>13. Se sigue de esto que si $n(A) = 0$, entonces $T - \lambda I$ y $T^* - \lambda I$ son invertibles, mientras que si $n(A) > 0$ entonces $n(T - \lambda I) = n(T^* - \lambda I) = n(A) > 0$
>>14. Entonces $\lambda \in \sigma_p(T)$ y $\bar{\lambda} \in \sigma_p(T^*)$.

>[!Remark]-
>Ahora extendemos los resultados del Lema 7.24 al caso de un operador compacto general $T$.

>[!Theorem]
>Si $T$ es compacto y $\lambda \neq 0$, entonces, o bien: (a) $\lambda \in \rho(T)$ y $\bar{\lambda} \in \rho(T^*)$; o (b) $\lambda \in \sigma_p(T)$ y $\bar{\lambda} \in \sigma_p(T^*)$. Además, $n(T - \lambda I) = n(T^* - \lambda I) < \infty$.
>>[!Proof]
>>1. Primero reducimos el problema al caso de un operador de rango finito. 
>>2. Por el Teorema 7.12, hay un operador de rango finito $T_F$ en $H$ con $\| \lambda^{-1}(T - T_F) \| < \frac{1}{2}$
>>3. Por lo que por el Teorema 4.40 y el Lema 6.14, los operadores $S = I - \lambda^{-1} (T - T_F)$ y $S^*$ son invertibles. 
>>4. Ahora, denotemos $G = T_F S^{-1}$, vemos que
>>$$T - \lambda I = (G - \lambda I) S, \quad \text{y por lo tanto} \quad T^* - \lambda I = S^* (G^* - \lambda I)$$
>>5. Dado que $S$ y $S^*$ son invertibles, se sigue que $T - \lambda I$ y $T^* - \lambda I$ son invertibles si y solo si $G - \lambda I$ y $G^* - \lambda I$ son invertibles, y que $n(T - \lambda I) = n(G^* - \lambda I)$ (ver el Ejercicio 7.21). 
>>6. Ahora, como $\text{Im} G \subset \text{Im} T_F$, como el operador $G$ tiene rango finito, los primeros resultados del teorema siguen del Lema 7.24.

>[!Remark]
>Ahora consideramos las siguientes ecuaciones:
>$$(T - \lambda I) x = 0, \quad (T^* - \lambda I) y = 0, \quad \text{(7.1)}$$
>$$(T - \lambda I) x = p, \quad (T^* - \lambda I) y = q \quad \text{(7.2)}$$
>Las ecuaciones de la forma (7.1), con lados derechos nulos, se llaman homogéneas, mientras que las ecuaciones de la forma (7.2), con lados derechos no nulos, se llaman inhomogéneas. Los resultados del Teorema 7.25 (junto con el Corolario 7.21) pueden ser reformulados en términos de la solvencia de estas ecuaciones.

