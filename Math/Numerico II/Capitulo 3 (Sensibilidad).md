---
dateCreated: 2024-11-16,17:28
---
## Normas

^0b56bf

>[!Theorem]
>Si $1 \leq p \leq \infty$ entonces $\| \cdot \|_p$ es una norma.

>[!Proposition]
>Si $a$ y $b$ son positivos y $p, q \in (1, \infty)$ tal que $1/p + 1/q = 1$, entonces
>$$ab \leq \frac{1}{p} a^p + \frac{1}{q} b^q$$
>conocida como desigualdad de Minkowski.

>[!Theorem]
>Si $1 \leq p \leq \infty$, para todo $x, y \in \mathbb{R}^n$ vale que
>$$|x^T y| \leq \|x\|_p \|y\|_q \quad \text{si} \quad \frac{1}{p} + \frac{1}{q} = 1$$
>donde $q = 1$ si $p = \infty$.

>[!Theorem]
>Si $\| \cdot \|$ es una norma en $\mathbb{R}^n$, entonces existen $\alpha, \beta > 0$ tales que
>$$\alpha \|x\|_2 \leq \|x\| \leq \beta \|x\|_2, \quad \text{para todo} \quad x \in \mathbb{R}^n$$
>>[!Proof]-
>>1. Por un lado, note que dado $x \in \mathbb{R}^n$, si definimos $y \in \mathbb{R}^n$ tal que $y_i = 1$ si $x_i \geq 0$, $y_i = -1$ si $x_i < 0$, entonces
>>$$\sum_{i=1}^n |x_i| = \sum_{i=1}^n x_i y_i = x^T y \leq \lvert x^{T} y \rvert \leq ||x||_2 ||y||_2 = \sqrt{n} \|x\|_2$$
>>2. Con esto, tomando $\mu = \max_{1 \leq i \leq n} \|e_i\|$ y $\beta = \sqrt{n} \mu$, se tiene que para cualquier $x \in \mathbb{R}^n$
>>$$\|x\| = \left\| \sum_{i=1}^n x_i e_i \right\| \leq \sum_{i=1}^n |x_i| \|e_i\| \leq \mu \sum_{i=1}^n |x_i| \leq \beta \|x\|_2$$
>>3. Por otro lado, $\| \cdot \|$ es una función continua. Como $S = \{x \in \mathbb{R}^n \mid \|x\|_2 = 1\}$ es cerrado y acotado (compacto), entonces existe $x_0 \in S$ tal que $\|x\| = \|x_0\|$ para todo $x \in S$. Tomando $\alpha = \|x_0\|$, si $x \neq 0$ entonces
>>$$\|x\| = \|x\|_2 \frac{x}{\|x\|_2} \geq \|x\|_2 \alpha = \alpha \|x\|_2$$
>>4. Claramente la desigualdad anterior es trivial si $x = 0$

>[!Remark]
>De esta manera, vemos que toda norma es equivalente a la norma Euclídea. Usando esto concluimos que todas las normas son equivalentes.

>[!Corollary]
>Si $\| \cdot \|$ y $\| \cdot \|$ son normas en $\mathbb{R}^n$, entonces existen $\alpha, \beta > 0$ tales que
>$$\alpha \|x\| \leq \|x\| \leq \beta \|x\|, \quad \text{para todo} \quad x \in \mathbb{R}^n$$

>[!Definition]
>Se dirá que $\| \cdot \|$, norma matricial en $\mathbb{R}^{m \times n}$, es submultiplicativa si
>$$\|AB\| \leq \|A\| \|B\|$$

>[!Definition] Norma Frobenius
>Entre las normas matriciales más usadas está la norma de Frobenius: dada $A \in \mathbb{R}^{m \times n}$
>$$\|A\|_F = \sqrt{\text{tr}(A^T A)} = \sqrt{\sum_{i=1}^{m} \sum_{j=1}^{n} |a_{ij}|^2}$$
>Se puede ver que $\|A\|_F = \| \text{vec}(A) \|_2$. 
>($\text{vec}(A)$ es apilar todas las columnas de $A$ en un solo vector parado) 

>[!Proposition]
>La norma de Frobenius, $\| \cdot \|_F$, es una norma matricial submultiplicativa.
>>[!Proof]-
>>1. Note que la función $\text{vec}$ es lineal, o sea si $\alpha \in \mathbb{R}$ y $A, B \in \mathbb{R}^{m \times n}$ entonces
>>$$\text{vec}(A + \alpha B) = \text{vec}(A) + \alpha \text{vec}(B)$$
>>2. Por lo tanto, $\|A\|_F = \|\text{vec}(A)\|_2 \geq 0$ y $\|A\|_F = 0$ si y solo si $A = 0$, y
>>$$\|\alpha A\|_F = \|\text{vec}(\alpha A)\|_2 = \|\alpha \text{vec}(A)\|_2 = |\alpha| \|\text{vec}(A)\|_2 = |\alpha| \|A\|_F$$
>>y $$\|A + B\|_F = \|\text{vec}(A + B)\|_2 = \|\text{vec}(A) + \text{vec}(B)\|_2 \leq \|\text{vec}(A)\|_2 + \|\text{vec}(B)\|_2 = \|A\|_F + \|B\|_F$$
>>3. Probando así que $\| \cdot \|_F$ es una norma matricial. 
>>4. Para ver que es submultiplicativa, suponga $A \in \mathbb{R}^{m \times n}$ y $B \in \mathbb{R}^{n \times p}$. 
>>5. Denote por $a^i \in \mathbb{R}^n$, $i = 1, \dots, m$ las columnas de $A^T$ y por $b^j \in \mathbb{R}^n$, $j = 1, \dots, p$ las columnas de $B$ 
>>6. Entonces para $C = AB$ se tiene $c_{ij} = (a^i)^T b^j$. 
>>7. Con esto, usando la desigualdad de Cauchy-Schwarz, se obtiene
>>8. $$\|AB\|_F^2 = \sum_{i=1}^{m} \sum_{j=1}^{p} |(a^i)^T b^j|^2 \leq \sum_{i=1}^{m} \sum_{j=1}^{p} \|a^i\|_2^2 \|b^j\|_2^2=\sum_{i=1}^{m} \|a^i\|_2^2 \sum^{p}_{j=1} \|b^j\|_2^2= \|\text{vec}(A)\|_2^2 \|\text{vec}(B)\|_2^2 = \|A\|_F^2 \|B\|_F^2.$$

>[!Definition]
>Dada $A \in \mathbb{R}^{n \times n}$, llamaremos radio espectral de $A$ al valor máximo de los módulos de los autovalores $\lambda \in \mathbb{C}$ de $A$. O sea
>$$\rho(A) = \max \{|\lambda| \mid \det(A - \lambda I) = 0\}$$

>[!Proposition]
>Si $A \in \mathbb{R}^{m \times n}$, entonces
>$$\|A\|_1 = \max_{1 \leq j \leq n} \sum_{i=1}^m |a_{ij}|$$
>(Maximo de las sumas de las columnas) 
>$$\|A\|_\infty = \max_{1 \leq i \leq m} \sum_{j=1}^n |a_{ij}|$$
>(Maximo de las sumas de las filas) 
>$$\|A\|_2 = \sqrt{\rho(A^T A)}$$

## Errores

>[!Definition]
>Si $A \in \mathbb{R}^{n \times n}$ y $\| \cdot \|$ es una norma matricial, el número de condición de $A$, $\kappa(A)$, es dado por
>$$\kappa(A) = \|A\| \|A^{-1}\|$$
>si $A$ es no singular y $\kappa(A) = \infty$ si $A$ es singular.

>[!Remark]
>Ya que el número de condición depende de la norma usada, se denotará por $\kappa_F$ cuando se use la norma de Frobenius y por $\kappa_p$ cuando se use una norma $p$.

>[!Remark]
>$\kappa(A)$. Si $\| \cdot \|$ es una norma matricial y $A$ es no singular, note que
>$$\|A^{-1}\| = \sup_{y \neq 0} \frac{\|A^{-1}y\|}{\|y\|} = \sup_{x \neq 0} \frac{\|x\|}{\|Ax\|} = \frac{1}{\inf_{x \neq 0} \frac{\|Ax\|}{\|x\|}} = \frac{1}{\min_{\|x\| = 1} \|Ax\|}$$
>Entonces $$\kappa(A) = \frac{\sup_{x \neq 0} \frac{\|Ax\|}{\|x\|}}{\inf_{x \neq 0} \frac{\|Ax\|}{\|x\|}} = \frac{\max_{\|x\| = 1} \|Ax\|}{\min_{\|x\| = 1} \|Ax\|}$$


>[!Example]
>Número de condición en norma 2
>Para cualquier matriz $A$
>$$\kappa_2(A) = \frac{\max_{\|x\|_2 = 1} \sqrt{x^T A^T A x}}{\min_{\|x\|_2 = 1} \sqrt{x^T A^T A x}} = \frac{\sqrt{\lambda_{\max}(A^T A)}}{\sqrt{\lambda_{\min}(A^T A)}}$$
>donde $\lambda_{\max}(A^T A)$ y $\lambda_{\min}(A^T A)$ denotan los autovalores máximo y mínimo de $A^T A$

>[!Theorem]
>Sea $A \in \mathbb{R}^{n \times n}$ no singular y $b \in \mathbb{R}^n$ no nulo. Si $A\overline{x} = b$ y $A \hat{x}= b + \upsilon$, entonces
>$$\frac{\|\hat{x}- \bar{x}\|}{\| \bar{x} \|} \leq \kappa(A) \frac{\|\upsilon\|}{\|b\|}$$
>>[!Proof]-
>>1. Sea $\zeta = \hat{x} - \bar{x}$, luego $b + \upsilon = A(\bar{x} + \zeta) = A \bar{x} + A \zeta$. 
>>2. Entonces $A \zeta = \upsilon$, o equivalentemente, $\zeta = A^{-1} \upsilon$. Obteniendo que $\|\zeta\| \leq \|A^{-1}\| \|\upsilon\|$.
>>3. Por otro lado, $b = A \bar{x}$ implica que $\|b\| \leq \|A\| \|\bar{x}\|$ y por lo tanto $\frac{1}{\|\bar{x}\|} \leq \|A\| \frac{1}{\|b\|}$. 
>>4. Combinando esto con la desigualdad anterior, concluimos que
>>$$\frac{\|\zeta\|}{\|\bar{x}\|} \leq \lVert A \rVert \|A^{-1}\| \frac{\|\upsilon\|}{\|b\|}$$

>[!Definition]
>El residuo de una aproximación $\hat{x}$ de la solución de $Ax = b$ es el número $\|b - A\hat{x}\|$ y llamaremos vector residuo a $b - A\hat{x}$.

>[!Remark]
>Por lo tanto, dado $\hat{x}$ se obtiene $A\hat{x} = b + A\hat{x} - b = b + \upsilon$ con $\upsilon = - (b - A\hat{x})$. Usando el resultado anterior
>$$\frac{\| \bar{x} - \hat{x} \|}{\| \bar{x} \|} \leq \kappa(A) \frac{\| b - A\hat{x} \|}{\| b \|}$$
>De esta forma, se puede controlar el error relativo de la solución del problema mediante la disminución del residuo.

>[!Remark]
>Si se tiene perturbación en la matriz, es importante garantizar que el sistema perturbado pueda resolverse. El siguiente resultado garantiza que para pequeñas perturbaciones la no singularidad se preserva.

>[!Theorem]
>Si $A \in \mathbb{R}^{n \times n}$ es no singular
>$$\frac{\|\Theta\|}{\|A\|} < \frac{1}{\kappa(A)}$$
>entonces $A + \Theta$ es no singular.
>>[!Proof]-
>>1. Suponga que $A + \Theta$ es singular, o sea, existe $y \neq 0$ tal que $(A + \Theta)y = 0$. 
>>2. Como $A$ es no singular, se obtiene que $y = -A^{-1} \Theta y$. 
>>3. Entonces $\|y\| \leq \|A^{-1}\| \|\Theta\| \|y\|$ ósea $1\leq \lVert A^{-1} \rVert\lVert \Theta\rVert$ (las normas matriciales inducidas son submultiplicativas) 
>>4. por lo tanto $$\frac{1}{\kappa(A)} \leq \frac{\|A^{-1}\| \|\Theta\|}{\kappa(A)} = \frac{\|A^{-1}\| \|\Theta\|}{\|A\| \|A^{-1}\|} = \frac{\|\Theta\|}{\|A\|}$$
>>5. Que es absurdo. Entonces $A+\Theta$ es no singular

^b63799

>[!Theorem]
>Sea $A \in \mathbb{R}^{n \times n}$ no singular, $\frac{\|\Theta\|}{\|A\|} < \frac{1}{\kappa(A)}$ y $b \in \mathbb{R}^n$ no nulo. Si $A\overline{x}= b$ y $(A + \Theta) \hat{x} = b + \upsilon$, entonces
>$$\frac{\|\hat{x} - \bar{x}\|}{\|\bar{x}\|} \leq \kappa(A) \left( \frac{\|\Theta\|}{\|A\|} + \frac{\|\upsilon\|}{\|b\|} \right) \left( \frac{1}{1 - \kappa(A) \frac{\|\Theta\|}{\|A\|}} \right)$$
>>[!Proof]-
>>1. Sea $\zeta = \hat{x} - \bar{x}$, luego $b + \upsilon = (A + \Theta)(\bar{x} + \zeta) = A\bar{x} + A\zeta + \Theta\bar{x} + \Theta \zeta$. 
>>2. Entonces $\zeta=A^{-1}(v-\Theta\overline{x}-\Theta\zeta)$  (notar que $A\overline{x}=b$  ) 
>>3. Tomando norma en ambos miembros, se obtiene que
>>$$\|\zeta\| \leq \|A^{-1}\| (\|\upsilon\| + \|\Theta\| \|\bar{x}\| + \|\Theta\| \|\zeta\|)$$
>>$$\|\zeta\|-\lVert A^{-1} \rVert\lVert \Theta\lVert \rVert \zeta  \rVert   \leq \|A^{-1}\| (\|\upsilon\| + \|\Theta\| \|\bar{x}\| )$$
>>1. Por lo tanto
>>$$(1 - \|A^{-1}\| \|\Theta\|) \|\zeta\| \leq \|A^{-1}\| (\|\upsilon\| + \|\Theta\| \|\bar{x}\|)=\kappa(A)\bigg(\frac{\lVert \Theta \rVert }{\lVert A \rVert }\lVert \overline{x}  \rVert +\frac{\lVert v \rVert }{\lVert A \rVert }\bigg)=\kappa(A)\bigg(\frac{\lVert \Theta \rVert }{\lVert A \rVert }+\frac{\lVert v \rVert }{\lVert A \rVert \lVert \overline{x}  \rVert }\bigg)\lVert \overline{x}  \rVert $$
>>1. Como $\|b\| = \|A\bar{x}\| \leq \|A\| \|\bar{x}\|$ entonces $\frac{1}{\|A\|\|\bar{x}\|} \leq \frac{1}{\|b\|}$.
>>2. Obteniendo así que $$\bigg(1-\kappa(A) \frac{\|\Theta\|}{\|A\|}\bigg) \frac{\lVert \zeta \rVert }{\lVert \overline{x}  \rVert } \leq \kappa(A) \left( \frac{\|\Theta\|}{\|A\|} + \frac{\|\upsilon\|}{\|b\|} \right)$$

