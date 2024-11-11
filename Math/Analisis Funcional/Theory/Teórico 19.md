---
dateCreated: 2024-11-10,19:55
---

>[!Remark]
>Ahora consideramos las siguientes ecuaciones:
>$$(T - \lambda I) x = 0, \quad (T^* - \lambda I) y = 0, \quad \text{(7.1)}$$
>$$(T - \lambda I) x = p, \quad (T^* - \lambda I) y = q \quad \text{(7.2)}$$
>Las ecuaciones de la forma (7.1), con lados derechos nulos, se llaman homogéneas, mientras que las ecuaciones de la forma (7.2), con lados derechos no nulos, se llaman inhomogéneas. Los resultados del Teorema 7.25 (junto con el Corolario 7.21) pueden ser reformulados en términos de la solvencia de estas ecuaciones.

>[!Theorem] Alternativa de Fredholm
>Si $\lambda \neq 0$ entonces uno u otro de los siguientes casos se cumple:
>- (a) Cada una de las ecuaciones homogéneas (7.1) tiene solo la solución $x = 0, y = 0$, respectivamente, mientras que las correspondientes ecuaciones inhomogéneas (7.2) tienen soluciones únicas $x, y$ para cualquier $p, q \in H$.
>- (b) Existe un número finito $m_\lambda > 0$ tal que cada una de las ecuaciones homogéneas (7.1) tiene exactamente $m_\lambda$ soluciones linealmente independientes, digamos $x_n, y_n$, para $n = 1, \dots, m_\lambda$, respectivamente, mientras que las correspondientes ecuaciones inhomogéneas (7.2) tienen soluciones si y solo si $p, q \in H$ satisfacen las condiciones
>$$(p, y_n) = 0, \quad (q, x_n) = 0, \quad n = 1, \dots, m_\lambda. \quad \text{(7.3)}$$
>>[!Proof]
>>1. El resultado sigue inmediatamente del Teorema 7.25. 
>>2. La alternativa (a) corresponde al caso $\lambda \in \rho(T)$, mientras que la alternativa (b) corresponde al caso $\lambda \in \sigma_p(T)$. 
>>3. En este caso, $m_\lambda = n(T - \lambda I)$. Se sigue del Corolario 7.21 que las condiciones sobre $p, q$ en (b) aseguran que $p \in \text{Im}(T - \lambda I)$, $q \in \text{Im}(T^* - \lambda I)$, respectivamente, por lo que existen soluciones de (7.2).

>[!Remark]-
>La dicotomía expresada en el Teorema 7.26 entre la solvencia única de las ecuaciones y la solvencia si y solo si se cumple un conjunto finito de condiciones se conoce como la alternativa de Fredholm; esta dicotomía fue descubierta por Fredholm en su investigación sobre ciertas ecuaciones integrales (que dan lugar a ecuaciones del tipo anterior con operadores integrales compactos, ver el Capítulo 8). Más generalmente, si el operador $T - \lambda I$ en (7.1) y (7.2) se reemplaza por un operador lineal acotado $S$ entonces se dice que $S$ satisface la alternativa de Fredholm si las correspondientes ecuaciones nuevamente satisfacen las alternativas del Teorema 7.26. Una característica particularmente importante de la alternativa de Fredholm es el siguiente reformulación de la alternativa (a) en el Teorema 7.26.

>[!Corollary]
>Si $\lambda \neq 0$ y la ecuación
>$$(T - \lambda I) x = 0 \quad \text{(7.4)}$$
>>tiene solo la solución $x = 0$ entonces $T - \lambda I$ es invertible, y la ecuación
>>$$(T - \lambda I) x = p \quad \text{(7.5)}$$
>>tiene la solución única $x = (T - \lambda I)^{-1} p$ para cualquier $p \in H$. Esta solución depende continuamente de $p$.
>>[!Proof]
>>
>>1. La hipótesis asegura que $\lambda$ no es un autovalor de $T$, por lo que, según la alternativa (a) del Teorema 7.26, $\lambda \in \rho(T)$ y por lo tanto $T - \lambda I$ es invertible. 
>>2. El resto del corolario se sigue inmediatamente de esto.

>[!Remark]
>En esencia, el Corolario 7.27 establece que "la unicidad de las soluciones de la ecuación (7.5) implica la existencia de soluciones". Este es un resultado extremadamente útil. En muchas aplicaciones es relativamente fácil probar la unicidad de las soluciones de una ecuación dada. Si la ecuación tiene la forma (7.5) y sabemos que el operador $T$ es compacto, entonces podemos deducir inmediatamente la existencia de una solución.

>[!Theorem]
>Supongamos que $\lambda \neq 0$ es un autovalor de $T$. Si $p \in \text{Im}(T - \lambda I)$ (es decir, si $p$ satisface (7.3)), entonces la ecuación (7.5) tiene una solución única $S_\lambda(p) \in \text{Ker}(T - \lambda I)^\perp$. La función $S_\lambda : \text{Im}(T - \lambda I) \to \text{Ker}(T - \lambda I)^\perp$ es lineal y acotada, y el conjunto de soluciones de (7.5) tiene la forma
>$$S_\lambda p + \text{Ker}(T - \lambda I). \quad \text{(7.7)}$$
>>[!Proof]
>>1. Como $p \in \text{Im}(T - \lambda I)$, existe una solución $x_0$ de (7.5). 
>>2. Sea $P$ la proyección ortogonal de $H$ sobre $\text{Ker}(T - \lambda I)^\perp$, y sea $u_0 = Px_0$. 
>>3. Entonces $x_0 - u_0 \in \text{Ker}(T - \lambda I)$, y por lo tanto $(T - \lambda I)(x_0 - u_0) = (T - \lambda I)x_0 = p$.
>>4. Por lo tanto, $u_0$ también es una solución de (7.5), y cualquier vector de la forma $u_0 + z$, con $z \in \text{Ker}(T - \lambda I)$, es una solución de (7.5).
>>5. Por otro lado, si $x$ es una solución de (7.5), entonces $(T - \lambda I)(u_0 - x) = p - p = 0$, por lo que $u_0 - x \in \text{Ker}(T - \lambda I)$, y por lo tanto $x = u_0 + z$, con $z \in \text{Ker}(T - \lambda I)$. 
>>6. Así que el conjunto de soluciones de (7.5) tiene la forma (7.7).
>>7. A continuación, se puede mostrar (ver el Ejercicio 7.23) que $u_0 \in \text{Ker}(T - \lambda I)$ está determinado de manera única por $p$, por lo que podemos definir una función $S_\lambda : \text{Im}(T - \lambda I) \to \text{Ker}(T - \lambda I)^\perp$ mediante $S_\lambda(p) = u_0$, para $p \in \text{Im}(T - \lambda I)$. 
>>8. Usando unicidad, se puede mostrar que la función $S_\lambda$ es lineal (ver el Ejercicio 7.23).
>>9. Finalmente, supongamos que $S_\lambda$ no es acotada. Entonces existe una secuencia de vectores unitarios $\{p_n\}$, tal que $\|S_\lambda p_n\| \neq 0$ para todo $n \in \mathbb{N}$, y que $\lim_{n \to \infty} \|S_\lambda p_n\| = \infty$. 
>>10. Al poner $w_n = \|S_\lambda p_n\|^{-1} S_\lambda p_n$, vemos que $w_n \in \text{Ker}(T - \lambda I)^\perp$, $\|w_n\| = 1$ y que
>>$$(T - \lambda I)w_n = \|S_\lambda p_n\|^{-1} (T - \lambda I) S_\lambda p_n \to 0 \quad \text{a medida que} \quad n \to \infty.$$
>>11. Ahora, exactamente como en el segundo párrafo de la prueba del Teorema 7.20, podemos mostrar que estas propiedades conducen a una contradicción, lo que prueba el resultado.

>[!Remark]-
>El Teorema 7.29 establece que la solución $S_\lambda p$ satisface $\|S_\lambda p\| \leq C\|p\|$, para alguna constante $C > 0$. Sin embargo, tal desigualdad no puede sostenerse para todas las soluciones $x$ de (7.5) que tienen la forma $x = S_\lambda p + z$, con $z \in \text{Ker}(T - \lambda I)$ teniendo arbitrariamente grandes $\|z\|$.

## Operadores Compactos Autoadjuntos

>[!Remark]
>A lo largo de esta sección supondremos que $H$ es un espacio de Hilbert complejo y que $T \in B(H)$ es autoadjunto y compacto. En este caso, los resultados previos sobre el espectro de $T$ pueden mejorarse considerablemente. En cierto sentido, la razón principal de esto es el siguiente lema, que parece bastante trivial. Primero necesitamos una definición.

>[!Definition]
>Sea $X$ un espacio vectorial y sea $S \in L(X)$. Un subespacio lineal $W \subset X$ se dice que es \emph{invariante} bajo $S$ si $S(W) \subset W$.

>[!Lemma]
>Sea $K$ un espacio de Hilbert y $S \in B(K)$ sea autoadjunto. Si $\mathcal{M}$ es un subespacio lineal cerrado de $K$ que es invariante bajo $S$, entonces $\mathcal{M}^\perp$ también es invariante bajo $S$.
>>[!Proof]
>>Para cualquier $u \in \mathcal{M}$ y $v \in \mathcal{M}^\perp$ tenemos $(S u, u) = (v, S u) = 0$ (ya que $S$ es autoadjunto y $S u \in \mathcal{M}$), por lo que $S v \in \mathcal{M}^\perp$, y por lo tanto $S(\mathcal{M}^\perp) \subset \mathcal{M}^\perp$, lo que prueba el lema.

>[!Remark]-
>Este lema nos permitirá "dividir" o descomponer un operador autoadjunto en diferentes subespacios lineales $M \subset H$, y también en los complementos ortogonales $\mathcal{M}^\perp$. Para un operador general $S \in B(H)$, incluso si $S$ es invariante en $\mathcal{M}$ no tiene que ser invariante en $\mathcal{M}^\perp$, por lo que esta estrategia falla en general. Sin embargo, el Lema 7.31 asegura que esto funciona para operadores autoadjuntos $T$. Los subespacios principales que usamos para descomponer $T$ serán $\text{Ker} T$ y $\text{Im} T$ (ya que $0 \in \text{Ker} T$ e $\text{Im} T \subset \text{Im} T$ se sigue que ambos espacios son invariantes bajo $T$). Dado que $T$ es autoadjunto, se sigue de la Corolario 3.36 y el Lema 6.11 que $$\text{Im} T = (\text{Ker} T)^\perp.$$

>[!Remark]-
>A partir de ahora, $P$ denotará la proyección ortogonal de $H$ sobre $\text{Im} T$. Entonces, de (7.8) se sigue que $I - P$ es la proyección ortogonal sobre $\text{Ker} T$. Además, el espacio $\text{Im} T$ es un espacio de Hilbert separable (la separabilidad sigue del Teorema 7.8). Veremos que podemos construir una base ortonormal de $\text{Im} T$ formada por los autovectores de $T$ (independientemente de si $H$ es separable o no). Dado que la restricción de $T$ al $\ker T$ es trivial, esto nos dara una representacion completa de $T$ en $\mathcal{H}$
>

>[!Theorem]
>Si $\lambda \neq 0$ entonces uno de los números $\|T\|$, $-\|T\|$ es un valor propio de $T$.
>>[!Proof]
>>1. Si $T$ es el operador cero el resultado es trivial, por lo que podemos suponer que $T$ es no nulo. 
>>2. Por el Teorema 6.43, al menos uno de $\|T\|$ o $-\|T\|$ está en $\sigma(T)$, por lo que por el Teorema 7.25 este punto debe pertenecer a $\sigma_p(T)$.

>[!Theorem]
>El conjunto de los valores propios no nulos de $T$ no está vacío y es finito o consiste en una secuencia que tiende a cero. Cada valor propio no nulo es real y tiene multiplicidad finita. Los autovectores correspondientes a diferentes valores propios son ortogonales.
>>[!Proof]
>>1. La mayor parte del teorema se sigue del Corolario 7.23 y los Teoremas 6.43, 7.19 y 7.32. 
>>2. Para probar el resultado final, supongamos que $\lambda_1, \lambda_2 \in \mathbb{R}$ son valores propios distintos con los autovectores correspondientes $e_1, e_2$. 
>>3. Entonces, como $T$ es autoadjunto, tenemos
>>$$\lambda_1(e_1, e_2) = (T e_1, e_2) = (e_1, T e_2) = \lambda_2(e_1, e_2)$$
>>4. lo que, como $\lambda_1 \neq \lambda_2$, implica que $(e_1, e_2) = 0$.

>[!Remark]-
>En vista del Teorema 7.33, ahora podemos ordenar los valores propios de $T$ en la forma de una lista no vacía, finita o una lista numerable infinita $\lambda_1, \lambda_2, \dots$, de manera que $|\lambda_n|$ disminuye a medida que $n$ aumenta y cada valor propio $\lambda_n$ se repite en la lista según su multiplicidad (más precisamente, si $\lambda$ es un valor propio de $T$ con multiplicidad $m_\lambda > 0$, entonces $\lambda$ se repite exactamente $m_\lambda$ veces en la lista). Además, para cada $n$ podemos usar el algoritmo de Gram-Schmidt para construir una base ortonormal de cada espacio Ker$(T - \lambda_n I)$ que consista en exactamente $m_\lambda$ autovectores. Así, listando los autovectores construidos en el mismo orden que los valores propios, obtenemos una lista de autovectores correspondientes de la forma $e_1, \dots, e_J$ o $e_1, e_2, \dots$. Por la construcción, los autovectores en esta lista correspondientes al mismo valor propio son ortogonales, mientras que por el Teorema 7.33, los autovectores correspondientes a valores propios diferentes son ortogonales. Por lo tanto, la lista completa es un conjunto ortonormal.
>En este momento no sabemos cuántos valores propios no nulos existen. Para tratar con el caso finito e infinito, denotaremos este número por $J$, donde $J$ puede ser un entero finito o ``$J = \infty$'', y escribiremos las listas en la forma $\{\lambda_n\}_n^J, \{e_n\}_n^J$. Demostraremos que $J$ es, de hecho, igual a $r(T)$, el rango de $T$ (que puede ser finito o infinito aquí). También demostraremos que $\{e_n\}_n^J$ es una base ortonormal para el espacio de Hilbert Im$T$.

>[!Theorem]
>El número de valores propios no nulos de $T$ (repetidos según multiplicidad) es igual a $r(T)$. El conjunto de autovectores $\{e_n\}_{n=1}^{r(T)}$ construido anteriormente es una base ortonormal para Im$T$ y el operador $T$ tiene la representación
>$$ T x = \sum_{n=1}^{r(T)} \lambda_n (x, e_n) e_n, \quad \text{donde} \quad \{\lambda_n\}_{n=1}^{r(T)} \text{ es el conjunto de valores propios no nulos de } T. \tag{7.10} $$
>>[!Proof]
>>1. Sea $M = \text{Sp} \{e_n\}_{n=1}^{J}$, tal que $\{e_n\}_{n=1}^{J}$ es una base ortonormal para $M$ (por el Teorema 3.47). Mostraremos que $M = \text{Im}T$, y por lo tanto, debemos tener $J = r(T)$ (en el caso finito o infinito). 
>>2. Recordemos que si $r(T) < \infty$ entonces $M$ es cerrado, por lo que Im$T$ = Im$T$. 
>>3. Por el Teorema 3.47, para cualquier $u \in M$ tenemos que $u = \sum_{n=1}^{J} \alpha_n e_n$, donde $\alpha_n = (u, e_n), n = 1, \dots, J$. Así, si $J = \infty$, tenemos
>>$$ u = \lim_{k \to \infty} \sum_{n=1}^k \alpha_n \lambda_n^{-1} T e_n = \lim_{k \to \infty} T \left( \sum_{n=1}^k \alpha_n \lambda_n^{-1} e_n \right) \in \text{Im}T,$$
>>4. y por lo tanto, $M \subset \text{Im}T$; 
>>5. un argumento similar se aplica cuando $J$ es finito (sin los límites). 
>>6. De aquí obtenemos que Ker$T = \text{Im}T^{\perp}$ por (7.8) y el Lemma 3.29.
>>7. Ahora mostraremos que $M^{\perp} \subset \text{Ker}T$, lo que implica que $M^{\perp} = \text{Ker}T$, y por lo tanto $M = M^{\perp\perp} = \text{Im}T$ (por el Corolario 3.35 y (7.8)), lo que es el resultado deseado.
>>8. Si $J = \infty$ y $u \in M$, tenemos
>>$$ T u = T \left( \lim_{k \to \infty} \sum_{n=1}^k \alpha_n e_n \right) = \lim_{k \to \infty} \sum_{n=1}^k \lambda_n \alpha_n e_n \in M$$
>> y de nuevo, un cálculo similar se aplica (sin los límites) si $J < \infty$. 
>> 9. Así, $M$ es invariante bajo $T$. El Lemma 7.31 ahora implica que $N = M^{\perp}$ es invariante bajo $T$.
>> 10. Denotemos por $T_N$ la restricción de $T$ a $N$. 
>> 11. Es fácil verificar que $T_N$ es un operador compacto en el espacio de Hilbert $N$, vea el Ejercicio 7.24. 
>> 12. Ahora supongamos que $T_N$ no es el operador cero en $N$. Por el Teorema 7.32, $T_N$ debe tener un valor propio no nulo, digamos $\lambda$, con un autovector no nulo correspondiente $\vec{e} \in N$, así que por definición, $T_N \vec{e} = \lambda \vec{e}$. 
>> 13. Sin embargo, esto implica que $\lambda$ es un valor propio no nulo de $T$, por lo que debe pertenecer al subespacio generado por los autovectores correspondientes a $\lambda$.
>> 14. Pero este subespacio está en $M$, por lo que $\vec{e} \in M$ lo que contradice que $\vec{e} \in N = M^{\perp}$ (ya que $\vec{e} \notin M$). 
>> 15. Así que $T_N$ debe ser el operador cero. En otras palabras, $T v = T_N v = 0$ para todo $v \in M$, lo que hemos afirmado antes, y por lo tanto completa la prueba de que $M = \text{Im}T$.
>> 16. Finalmente, para cualquier $x \in \mathcal{H}$ tenemos que $(I - P)x \in \mathcal{M}^\perp$ por lo que $(x, e_n) = (Px + (I - P)x, e_n) = (Px, e_n),$ para todo $n$ (ya que $e_n \in \mathcal{M}$), 
>> 17. y por lo tanto $Tx = T(Px + (I - P)x) = TPx = \sum_{n=1}^{J} \lambda_n (Px, e_n)e_n = \sum_{n=1}^{J} \lambda_n (x, e_n)e_n,$ según el cálculo anterior.

>[!Remark]-
>La representación $(7.10)$ del operador autoadjunto $T$ es una versión de dimensión infinita del conocido resultado en álgebra lineal de dimensión finita que un matriz autoadjunta puede ser diagonalizada eligiendo una base consistente de vectores propios de la matriz.
>El conjunto ortonormal de vectores propios $\{e_n\}_{n=1}^{r(T)}$ construido arriba es una base ortonormal para el espacio $\mathrm{Im} T$ pero no para todo el espacio $\mathcal{H}$, a menos que $\mathrm{Im} T = \mathcal{H}$. Por $(7.8)$ y el Lema 3.29, esto ocurre cuando $\ker T = \{0\}$, es decir, cuando $T$ es inyectivo, por lo que tenemos el siguiente resultado.

