---
dateCreated: 2024-11-10,20:16
---
>[!Theorem]
>El número de autovalores no nulos de $T$ (repetidos según multiplicidad) es igual a $r(T)$. El conjunto de vectores propios $\{e_n\}_{n=1}^{r(T)}$ construido arriba es una base ortonormal para $\mathrm{Im} T$ y el operador $T$ tiene la representación, $$Tx = \sum_{n=1}^{r(T)} \lambda_n (x, e_n) e_n \quad(7.10)$$
>donde $\{\lambda_n\}_{n=1}^{r(T)}$ es el conjunto de autovalores no nulos de $T$.
>>[!Proof]
>>1. Sea $\mathcal{M} = \text{Sp} \{e_n\}_{n=1}^{J}$, de modo que $\{e_n\}_{n=1}^{J}$ es una base ortonormal para $\mathcal{M}$ (por el Teorema 3.47). 
>>2. Demostraremos que $\mathcal{M} = \mathrm{Im} T$, y por lo tanto debemos tener $J = r(T)$ (en el caso finito o infinito). 
>>3. Recordemos que si $r(T) < \infty$ entonces $\mathrm{Im} T$ es cerrado, por lo que $\mathrm{Im} T = \mathrm{Im} T$.
>>4. Por el Teorema 3.47, para cualquier $u \in \mathcal{M}$ tenemos que $u = \sum_{n=1}^{J} \alpha_n e_n$, donde $\alpha_n = (u, e_n), \, n = 1, \dots, J$. 
>>5. Así que, si $J = \infty$ $$u = \lim_{k \to \infty} \sum_{n=1}^{k} \alpha_n \lambda_n^{-1} T e_n = \lim_{k \to \infty} T \left( \sum_{n=1}^{k} \alpha_n \lambda_n^{-1} e_n \right) \in \mathrm{Im} T,$$
>>6. y por lo tanto $\mathcal{M} \subset \mathrm{Im} T$
>>7. un argumento similar se aplica cuando $J$ es finito (sin los límites). 
>>8. De esto obtenemos que $\ker T = \mathrm{Im} T^\perp \subset \mathcal{M}^\perp$ (por (7.8) y el Lema 3.29).
>>9. Ahora mostraremos que $\mathcal{M}^\perp \subset \ker T$, lo que implica que $\mathcal{M}^\perp = \ker T$, y por lo tanto $\mathcal{M} = \mathcal{M}^\perp = \mathrm{Im} T$ (por el Corolario 3.35 y (7.8)), lo cual es el resultado deseado.
>>10. Si $J = \infty$ y $u \in \mathcal{M}$, tenemos
>>$$Tu = T \left( \lim_{k \to \infty} \sum_{n=1}^{k} \alpha_n e_n \right) = \lim_{k \to \infty} \sum_{n=1}^{k} \alpha_n T e_n = \lim_{k \to \infty} \sum_{n=1}^{k} \lambda_n \alpha_n e_n \in \mathcal{M}=\sum^{\infty}_{n=1} \lambda_{n}\alpha _{n}e_{n}\in \mathcal{M}$$
>>11. nuevamente un cálculo similar se realiza (sin los límites) si $J < \infty$. Entonces $\mathcal{M}$ es invariante bajo $T$. 
>>12. El Lema 7.31 ahora implica que $\mathcal{N} = \mathcal{M}^{\perp}$ es invariante bajo $T$. 
>>13. Sea $T_N$ la restricción de $T$ a $\mathcal{N}$. Se puede comprobar fácilmente que $T_N$ es un operador compacto auto-adjunto en el espacio de Hilbert $\mathcal{N}$, véase el Ejercicio 7.24. 
>>14. Ahora supongamos que $T_N$ no es el operador nulo en $\mathcal{N}$. Entonces, por el Teorema 7.32, $T_N$ debe tener un autovalor no nulo, digamos $\lambda$, con el correspondiente autovector no nulo $\tilde{e} \in \mathcal{N}$, por lo que por definición, $T \tilde{e} = T_N \tilde{e} = \lambda \tilde{e}$. 
>>15. Sin embargo, esto implica que $\lambda$ es un autovalor no nulo de $T$, por lo que debe cumplirse $\lambda = \lambda_n$, para algún $n$, y $\tilde{e}$ debe pertenecer al subespacio generado por los autovectores correspondientes a $\lambda_n$. 
>>16. Pero este subespacio está contenido en $\mathcal{M}$, por lo que $\tilde{e} \in \mathcal{M}$, lo que contradice que $\tilde{e} \in \mathcal{N} = \mathcal{M}^{\perp}$ (ya que $\tilde{e} \neq 0$). 
>>17. Por lo tanto, $T_N$ debe ser el operador nulo. 
>>18. En otras palabras, $T \tilde{v} = T_N \tilde{v} = 0$ para todo $v \in \mathcal{N}$, o $\mathcal{M}^{\perp} = \mathcal{N} \subset \ker T$, lo cual es lo que se asumió anteriormente, y por lo tanto se completa la demostración de que $\mathcal{M} = \text{Im} T$.
>>19. Finalmente, para cualquier $x \in \mathcal{H}$ tenemos que $(I - P)x \in \mathcal{M}^\perp$ por lo que $(x, e_n) = (Px + (I - P)x, e_n) = (Px, e_n)$ (7.11) para todo $n$ (ya que $e_n \in \mathcal{M}$)
>>20. y por lo tanto $$Tx = T(Px + (I - P)x) = TPx = \sum_{n=1}^{J} \lambda_n (Px, e_n) e_n = \sum_{n=1}^{J} \lambda_n (x, e_n) e_n,$$ por el cálculo anterior.

>[!Remark]-
>La representación (7.10) del operador auto-adjunto $T$ es una versión en dimensiones infinitas del conocido resultado en álgebra lineal finita de que una matriz auto-adjunta puede ser diagonalizada eligiendo una base constituida por los vectores propios de la matriz.
>El conjunto ortonormal de vectores propios $\{e_n\}_{n=1}^{r(T)}$ construido arriba es una base ortonormal para el espacio $\mathrm{Im} T$ pero no para todo el espacio $\mathcal{H}$, a menos que $\mathrm{Im} T = \mathcal{H}$. Por (7.8) y el Lema 3.29, esto se cumple cuando $\ker T = \{0\}$, es decir, cuando $T$ es inyectivo, por lo que obtenemos el siguiente resultado.

>[!Corollary]
>Si $\ker T = \{ 0 \}$ entonces el conjunto de autovectores $\{ e_n \}_{n=1}^{r(T)}$ es una base ortonormal para $\mathcal{H}$. En particular, si $\mathcal{H}$ es de dimensión infinita y $\ker T = \{ 0 \}$, entonces $T$ tiene infinitos autovalores distintos.
>Si $\mathcal{H}$ es separable también podemos obtener una base de $\mathcal{H}$ formada por autovectores de $T$, incluso cuando $ \ker T \neq \{ 0 \}$.

>[!Corollary]
>Supongamos que $\mathcal{H}$ es separable. Entonces existe una base ortonormal de $\mathcal{H}$ formada enteramente por autovectores de $T$. Esta base tiene la forma $\{ e_n \}_{n=1}^{r(T)} \cup \{ z_m \}_{m=1}^{n(T)}$, donde $\{ e_n \}_{n=1}^{r(T)}$ es una base ortonormal de $\text{Im}T$ y $\{ z_m \}_{m=1}^{n(T)}$ es una base ortonormal de $\ker T$.
>>[!Proof]
>>1. Como $\mathcal{H}$ es separable, $\ker T$ es un espacio de Hilbert separable (por el Lema 3.25 y el Ejercicio 3.25), por lo que, por el Teorema 3.52, existe una base ortonormal para $\ker T$, que escribimos en la forma $\{ z_m \}_{m=1}^{n(T)}$ (donde $n(T)$ puede ser finito o infinito).
>>2. Por definición, para cada $m$ tenemos que $T z_m = 0$, así que $ z_m $ es un autovector de $T$ correspondiente al autovalor $\lambda = 0$. 
>>3. Ahora, la unión $E = \{ e_n \}_{n=1}^{r(T)} \cup \{ z_m \}_{m=1}^{n(T)}$ es un conjunto ortonormal en $\mathcal{H}$. 
>>4. De hecho, es una base para $\mathcal{H}$. Para ver esto, observe que por el Teorema 3.47 tenemos
>>$$ x = P x + (I - P) x = \sum_{n=1}^{r(T)} \lambda_n (x, e_n) e_n + \sum_{m=1}^{n(T)} ( (I - P) x, z_m ) z_m=\sum^{r(T)}_{n=1} (x,e_{n})e_{n}+\sum^{n(T)}_{n=1} (x,z_{m})z_{m}$$
>>5. usando (7.11) y, de forma similar, $((I - P) x, z_m) = (x, z_m)$ para cada $m$. 
>>6. Así que, por el Teorema 3.47 nuevamente, $E$ es una base ortonormal para $\mathcal{H}$.

>[!Remark]-
>En el Teorema 7.26 discutimos la existencia de soluciones de las ecuaciones (7.5) para el caso de un operador compacto general $T$. Cuando $T$ es auto-adjunto, podemos usar la representación de $T$ en (7.10) para dar una representación correspondiente de las soluciones.


>[!Theorem]
>Sean $\{\lambda_n\}_{n=1}^{r(T)}$ y $\{e_n\}_{n=1}^{r(T)}$ el conjunto de autovalores no nulos de $T$ y el correspondiente conjunto ortonormal de autovectores construido anteriormente. Entonces, para cualquier $\lambda \neq 0$, una de las siguientes alternativas se cumple para la ecuación
>$$ (T - \lambda I)x = p. \tag{7.12} $$
>- (a) Si $\lambda$ no es un autovalor, entonces la ecuación (7.12) tiene una solución única, y esta solución tiene la forma
>$$ x = \sum_{n=1}^{r(T)} \frac{(p, e_n)}{\lambda_n - \lambda} e_n - \frac{1}{\lambda}(I - P)p. \tag{7.13} $$
>- (b) Si $\lambda$ es un autovalor, sea $E$ el conjunto de enteros $n$ para los cuales $\lambda_n = \lambda$, la ecuación (7.12) tiene una solución si y solo si
>$$ (p, e_n) = 0, \quad n \in E. \tag{7.14} $$
>Si (7.14) se cumple, entonces el conjunto de soluciones de (7.12) tiene la forma
>$$ x = \sum_{n=1}^{r(T)} \frac{(p, e_n)}{\lambda_n - \lambda} e_n - \frac{1}{\lambda}(I - P)p + z, \tag{7.15} $$
>donde $z = \sum_{n \in E} \alpha_n e_n$ es un elemento arbitrario de $\ker(T - \lambda I)$.
>>[!Proof]
>>
>>1. La existencia de soluciones de (7.12) bajo las condiciones establecidas sigue del Teorema 7.26. 
>>2. Para mostrar que las soluciones tienen la forma indicada, notemos que, dado que $\{e_n\}_{n=1}^{r(T)}$ es una base ortonormal de $\text{Im}T = (\ker T)^\perp$, tenemos
>>$$ x = \sum_{n=1}^{r(T)} (x, e_n) e_n + (I - P)x, \quad p = \sum_{n=1}^{r(T)} (p, e_n) e_n + (I - P)p, $$
>>3. (usando (7.11)) y de (7.12) recordar $(x, e_n) = (Px + (I - P)x, e_n) = (Px, e_n)$
>>$$(T-\lambda I)x=\sum^{r(T)}_{n=1} (x,e_{n})(\lambda_{n}-\lambda)e_{n}-\lambda(I-P)x=\sum^{r(T)}_{n=1} (p,e_{n})e_{n}+(I-P)p$$    
>>5. tomando el producto interior de ambos lados de esta fórmula con $e_k$, para cualquier $1 \leq k \leq r(T)$, y asumiendo que $\lambda$ no es un autovalor, tenemos
>>$$ (x, e_k)(\lambda_k - \lambda) = (p, e_k), $$
>>5. por lo tanto
>>$$ (x, e_k) = \frac{(p, e_k)}{\lambda_k - \lambda}. \tag{7.16} $$
>>6. Además, tomando la proyección ortogonal de ambos lados de la fórmula anterior sobre $\ker T$ obtenemos
>>$$ -\lambda (I - P)x = (I - P)p. $$
>>7. La fórmula (7.13) sigue inmediatamente de estos dos resultados. 
>>8. Esto prueba la alternativa (a). La demostración de la alternativa (b) es similar. 
>>9. Nótese que cuando $k \in E$, las condiciones (7.14) aseguran que la primera ecuación en (7.16) es satisfecha por coeficientes arbitrarios $(x, e_k) = \alpha_k$ (y evitamos la dificultad causada por el término $\lambda_n - \lambda$ en el denominador). El término correspondiente $\alpha_k e_k$ contribuye al elemento arbitrario en $\ker(T - \lambda I)$ en la expresión para la solución $x$.