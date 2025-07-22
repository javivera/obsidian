---
dateCreated: 2024-11-29,19:12
---
>[!Definition]
>Dada $A \in \mathbb{R}^{n \times n}$, se llamarán *valores singulares* de $A$ a las raíces cuadradas de los autovalores de $A^T A$, i.e., $\sigma$ es un valor singular de $A$ si $\sigma = \sqrt{\lambda}$ con $\lambda$ autovalor de $A^T A$.

>[!Remark]
>A continuación se verá que toda matriz $A$ puede escribirse como $A = U \Sigma V^T$ con $U$ y $V$ ortogonales y $\Sigma$ conteniendo los valores singulares de $A$ en su diagonal. Esta última se conoce como descomposición en valores singulares

>[!Theorem]
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $r$, entonces existen matrices $U \in \mathbb{R}^{m \times m}$, $V \in \mathbb{R}^{n \times n}$ ortogonales y
>$$\Sigma =\begin{bmatrix}\sigma_1 && \\& \ddots & \\ &&\sigma_{r}& \\ && & 0 \\ &&&&\ddots \\ &&&&&0 \\ &&&&&\vdots\\&&&&&0\end{bmatrix} \in \mathbb{R}^{m \times n}$$
>con $\sigma_1 \geq \cdots \geq \sigma_r > 0$ tales que $A = U \Sigma V^T$.
>>[!Proof]-
>>1. Veamos primero que si $U$ y $V$ son ortogonales entonces $\| A \|_2 = \| U^T A V \|_2$
>>2. Vale por que usando la ortogonalidad de $U$ y $V$, se tiene que
>>$$\begin{align}\| A \|_2 &= \sup_{x \neq 0} \frac{\| A x \|_2}{\| x \|_2} = \sup_{x\neq 0} \frac{\| U^T A VV^{T}  x \|_2}{\| V^T x \|_2}\\ & = \sup_{y \neq0} \frac{\| U^T A V y \|_2}{\| y \|_2} = \| U^T A V \|_2\end{align}$$M
>>(aca usamos que multiplicar a izquierda por ortogonal preserva norma, osea es isometria)
>>3. Además, si
>>$$U^T A V = \begin{bmatrix} \beta & z^T \\ 0 & B \end{bmatrix}$$
>>con $\beta = \| A \|_2$
>>$$\begin{align}\lVert A\rVert_{2}^{2}( \beta ^{2}+\lVert z \rVert _{2}^{2})& =\lVert A \rVert (\beta^{2}+z_{1}^{2}+\ldots+z_{n}^{2} )\\ &=\lVert U^{T} AV \rVert_{2}^{2}  \left\lVert \begin{bmatrix}\beta \\ z\end{bmatrix} \right\rVert_{2}^{2}  \\ & \geq\left\| U^T A V  \begin{bmatrix} \beta \\ z \end{bmatrix} \right\|_2^{2} \\ &=\left\lVert\begin{bmatrix} \beta ^{2}+z^{T}z \\ Bz \end{bmatrix} \right\rVert_{2}^{2} \\ &=(\beta ^{2}+\lVert z \rVert _{2}^{2}) +\lVert Bz \rVert _{2}^{2}\geq (\beta^2 + \| z \|_2^2)^{2}\end{align}$$
>>Entonces $\lVert z \rVert_{2}^{2}\leq 0$ por lo tanto $z=0$
>>4. Ahora probaremos el teorema por induccion en el rango de $A$
>>5. Si $r = 1$, tome $\sigma_1 = \| A \|_2$. Entonces existe $v^1 \in \mathbb{R}^n$ tal que $\| v^1 \|_2 = 1$ y $\| A v^1 \|_2 = \sigma_1$ (PR3 ej 6 c) 
>>6. Defina $u^1 = \frac{1}{\sigma_1} A v^1$, entonces $u^1 \in \mathbb{R}^m$ y $\| u^1 \|_2 = 1$.
>>7. Como $r = 1$, se tiene que $\text{Im}(A) = \text{span} \{ u^1 \}$. 
>>8. Genere $U_1 = [u^2 \dots u^m]$ y $V_1 = [v^2 \dots v^n]$ tales que $U = [u^1 U_1]$ y $V = [v^1 V_1]$ sean matrices ortogonales. 
>>9. Entonces
>>$$U^T A V = \left[ \begin{array}{c} (u^1)^T \\ U_1^T \end{array} \right] \left[ \begin{array}{c} A v^1 \ A V_{1} \end{array} \right] =\begin{bmatrix}(u^{1} )^{T} \\ U_{1}^{T} \end{bmatrix} \begin{bmatrix}\sigma_{1}u^{1} \ AV_{1}\end{bmatrix} = \left[ \begin{array}{cc} \sigma_1 & z^{T}  \\ 0 & 0 \end{array} \right]$$
>>(La 2da igualdad vale por 6. La 3era vale por que $A v^j \in Im(A)=\text{span} \{ u^1 \}$ y $u_{1}$ es ortognal con todo $U_{1}^{T}$)
>>11. Como $\sigma_1 = \| A \|_2$, se tiene que $z = 0$. (por 3.) 
>>12. Por lo tanto definimos $\Sigma$  
>>$$\Sigma = U^{T} AV=\left[ \begin{array}{cc} \sigma_1 & 0 \\ 0 & 0 \end{array} \right]$$
>>queda demostrado el Teorema para $r = 1$.
>>13. Ahora, supongamos que el enunciado vale para matrices de rango $r - 1$. 
>>14. Si $A$ tiene rango $r \geq 2$, tome $\sigma_1 = \| A \|_2$ y $v^1 \in \mathbb{R}^n$ tal que $\| v^1 \|_2 = 1$ y $\| A v^1 \|_2 = \sigma_1$. 
>>15. Defina $u^1 = \frac{1}{\sigma_1} A v^1$ ($\sigma_{1}u_{1}=Av^{1}$) y genere $U_1 = [u^2 \dots u^m]$ y $V_1 = [v^2 \dots v^n]$ tales que $\tilde{U_1} = [u^1 U_1]$ y $\tilde{V_1} = [v^1 V_1]$ sean matrices ortogonales. 
>>16. Entonces $$ \tilde{U}^{T}  A \tilde{V} = \left[ \begin{array}{c} (u^1)^T \\ U_1^T \end{array} \right] \left[ \begin{array}{c} A v^1 \ A V_1 \end{array} \right] = \left[ \begin{array}{cc} (u^1)^T\sigma_{1}u_{1} & (u^1)^T A V_1 \\ U_1^T \sigma_{1} u_{1} & U_1^T A V_1 \end{array} \right] = \left[ \begin{array}{cc} \sigma_1 & z^{T} \\ 0 & \hat{A} \end{array} \right]$$
>>17. $\hat{A}$ es de rango $r-1$ por que $U,V$ son de rango $r-1$ por ser ortogonales de ese tamanio y $z=0$ por lo que vimos en 3. 
>>18. Por hipotesis inductiva $\hat{A} = \hat{U} \hat{\Sigma} \hat{V}^T$ con $\hat{U},\hat{V}$ ortogonales.
>>19. Finalmente definimos $$U=\tilde{U}\begin{bmatrix} 1 & 0 \\ 0 & \hat{U}  \end{bmatrix}\quad V=\tilde{V}\begin{bmatrix} 1 & 0 \\ 0 & \hat{V}  \end{bmatrix}\quad \Sigma=\begin{bmatrix} \sigma_{1} & 0 \\ 0 & \hat{\Sigma}  \end{bmatrix}$$
>>20. Haciendo las cuentas se puede ver que $A=U^{T}\Sigma V$ y que $U,V$ son ortogonales  
>>21. Ademas sucede $$\sigma_{1}=\lVert A \rVert _{2}=\lVert U^{T} AV \rVert _{2}=\lVert \Sigma \rVert _{2}\geq\lVert \Sigma e^{2} \rVert _{2}=\sigma_{2}$$
>>(la desigualdad por que norma es un supremo y $\lVert e^{2} \rVert=1$)
>>

>[!Corollary]
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $r$. Si $U = [u^1 \dots u^m] \in \mathbb{R}^{m \times m}$ y $\Sigma$ diagonal con entradas $\sigma_1 \geq \dots \geq \sigma_r > 0$ corresponden a la descomposición SVD de $A$, entonces
>$$A v^i = \left\{\begin{array}{ll}\sigma_i u^i, & 1 \leq i \leq r \\ 0, & r + 1 \leq i \leq n \end{array}\right.\quad\quad A^T u^i = \left\{ \begin{array}{ll}\sigma_i v^i, & 1 \leq i \leq r \\ 0, & r + 1 \leq i \leq m \end{array}\right.$$
>Por lo tanto, $\text{Im}(A) = \text{span} \{ u^1, \dots, u^r \}$ y $\text{Ker}(A) = \text{span} \{ v^{r+1}, \dots, v^n \}$.
>>[!Proof]-
>>1. Como $A = U \Sigma V^T$, entonces $AV = U \Sigma$ y $A^T U = V \Sigma^T$.
>>2. Mirando las columnas de $AV$ se obtiene que $A v^i = \sigma_i u^i$ si $1 \leq i \leq r$ y $A v^i = 0$ si $r+1 \leq i \leq n$. 
>>3. Mirando las columnas de $A^T U$ se obtiene que $A^T u^i = \sigma_i v^i$ si $1 \leq i \leq r$ y $A^T u^i = 0$ si $r + 1 \leq i \leq m$.

>[!Remark]-
>Se deduce fácilmente que $\sigma_1, \dots, \sigma_r$ son los valores singulares de $A$. Además, el vector $v^i$ es llamado el $i$-ésimo vector singular a derecha y $u^i$ el $i$-ésimo vector singular a izquierda. 
>Veamos que la norma de Frobenius y la norma 2 pueden expresarse en términos de los valores singulares de $A$.

>[!Proposition]
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $r$ y $A = U \Sigma V^T$ su descomposición SVD, entonces
>a) $\|A\|_2 = \sigma_1$
>b) $\|A\|_F = \sqrt{\sigma_1^2 + \cdots + \sigma_r^2}$.
>>[!Proof]-
>>(a)
>>1. Como $\|\Sigma\|_2 = \sigma_1$, entonces
>>$$\|A\|_2 = \|U^T A V\|_2 = \|\Sigma\|_2 = \sigma_1$$
>>
>>(b)
>> 
>>1. Por otro lado, como
>>$$\Sigma = \begin{pmatrix}\hat{\Sigma} & 0 \\0 & 0\end{pmatrix} \quad \text{con} \quad\hat{\Sigma} = \begin{pmatrix}\sigma_1 & &\\&\ddots & \\\ & & \sigma_r\end{pmatrix}$$
>>4. Luego $$\begin{align}\|A\|_F^2 & = \text{tr}(A^T A)  \\ & = \text{tr}(V \Sigma^T U^T U \Sigma V^T) \\ & = \text{tr}(V\Sigma^T \Sigma V^{T} )\\ & =\text{tr}(\Sigma^{T} \Sigma V^{T} V) \\ & = \text{tr}(\Sigma^{T} \Sigma)\\ & = \text{tr}(\hat{\Sigma}^{T} \hat{\Sigma})= \sigma_1^2 + \cdots + \sigma_r^2\end{align}$$
>>5. donde usamos que $\text{tr}(M_1 M_2) = \text{tr}(M_2 M_1)$

>[!Remark]-
>En general, dada $A \in \mathbb{R}^{m \times n}$ de rango $r$ se obtiene que
>$$A = U \Sigma V^T = \begin{bmatrix}u^{1}  & \cdots & u^{m} \end{bmatrix}\begin{bmatrix}\sigma_{1}(v_1)^T \\\vdots \\\sigma_{r}(v_r)^T\\0\\ \vdots\\0\end{bmatrix}=\sum^{r}_{i=1} \sigma_{i}u^{i} (v^{i} )^{T} $$
>Como $\|u^{i}(v^{i})^{T}\|_2=\lVert u^{i} \rVert_{2}\lVert v^{i} \rVert_{2} = 1$, se obtiene una descomposición de $A$ como combinación lineal de matrices de norma 1, donde los escalares son los valores singulares.
>Si los valores singulares furan pequeños a partir de $\sigma_k$, con $k < r$, uno podría truncar la sumatoria y obtener una aproximación de $A$. 
>Veamos que esa aproximación es la mejor en norma 2.

>[!Theorem]
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $r$ y $A = U \Sigma V^T$ su descomposición SVD. Si para $k < r$,
>$$A_k = \sum_{i=1}^{k} \sigma_i u^i (v^i)^T$$
>entonces $A_k$ tiene rango $k$ y
>$$\min{\{ \|B - A\|_2 \ | \ B \in \mathbb{R}^{m \times n} \text{ de rango } \leq k \}} = \|A_k - A\|_2 = \sigma_{k+1}$$
>>[!Proof]-
>>1. Como $(v^i)^T v^j = 0$ si $i \neq j$ e igual a 1 si $i = j$, entonces
>>$$U^T A_k V = U^{T}\sum^{k}_{i=1} \left[\sigma_{i}u^{i} (v^{i})^{T}V\right]= \sum^{k}_{i=1}  \left[\sigma_{i}e^{i} (e^{i})^{T}  \right]= \begin{pmatrix}\Sigma_k & 0 \\0 & 0\end{pmatrix}$$
>>2. Donde
>>$$\Sigma_k = \begin{pmatrix}\sigma_1 & & \\\ & \ddots\\&& \sigma_k\end{pmatrix}.$$
>>3. Obteniendo así que $A_k$ tiene rango $k$. ($U,V$ son de rg completo, así que no alteran rg de $A$) 
>>4. Sea $B \in \mathbb{R}^{m \times n}$ arbitraria con rango $\leq k$. Como $n = \text{dim(Im}(B)) + \text{dim(Ker}(B))$, entonces $\text{dim(Ker}(B)) \geq n - k$. Obteniendo que
>>$$\text{dim(Ker}(B)) + \text{dim(span}\{v^1, \ldots, v^{k+1}\}) \geq n + 1$$
>>5. Garantizando por lo tanto la existencia de $z \in \text{Ker}(B) \cap \text{span}\{v^1, \ldots, v^{k+1}\}$ con $\|z\|_2 = 1$. (Si no estarian en suma directa que es absurdo por que $V\in \mathbb{R}^{n\times n}$ con lo cual $v^{i}\in \mathbb{R}^{n}$ y $ker(B)\in \mathbb{R}^{n}$ con lo cual $n = dim(\mathbb{R}^{n})\geq n+1$) 
>>7. Entonces. $$ 1 = \|z\|_2^2 = \|V^T z\|_2^2 = \sum_{i=1}^{k+1} \left( (v^i)^T z\right)^2$$
>>9. pues $(v^i)^T z = 0$ si $i > k+1$. 
>>10. Usando que $Bz = 0$ se obtiene
>>$$\begin{align}\|B - A\|_2^2 \geq \| (B - A)z \|_2^2  = \|Az \|_2^2 &  = \| U \Sigma V^T z \|_2^2 \\&= \| \Sigma V^T z \|_2^2 \\&= \sum_{i=1}^{k+1} \sigma_i^2 ((v^i)^T z)^2 \\& \geq \sigma_{k+1}^2 \sum_{i=1}^{k+1} \left( (v^i)^T z \right)^2 = \sigma_{k+1}^2\end{align}$$
>>10. Veamos que la cota inferior se alcanza si $B = A_k$. 
>>11. Como $$U^T (A_k - A)V = U^T A_k V - U^T A V = \begin{bmatrix} 0 & 0 & 0 \\ 0 & -\tilde{\Sigma}_k & 0 \\ 0 & 0 & 0 \end{bmatrix}$$
>>12. con $$\tilde{\Sigma}_{k}= \begin{bmatrix} \sigma_{k+1} & &\\ &\ddots\\ &&\sigma_r \end{bmatrix}$$
>>13. Finalmente $$\| A_k - A \|_2 = \| U^T (A_k - A) V \|_2 = \sqrt{\rho(\tilde{\Sigma}_{k}^T \tilde{\Sigma}_{k})}=\sigma_{k+1}$$

>[!Remark]
> Como ya vimos en el Teorema 3.21, cuando se tiene una matriz cuadrada no singular $A$ toda matriz cuadrada $B$ que satisface
> $$\| B - A \| < \frac{\| A \|}{\kappa(A)} = \frac{1}{\| A^{-1} \|}$$
>también debe ser no singular.
>Cuando la matriz es rectangular, se puede generalizar este resultado para norma 2 aplicando el Teorema anterior. La demostración del mismo es un buen ejercicio para el lector.

>[!Corollary]
>Suponga $A \in \mathbb{R}^{m \times n}$ de rango $r$ con valores singulares $\sigma_1 \geq \dots \geq \sigma_r > 0$. Si $B \in \mathbb{R}^{m \times n}$ satisface $\| B - A \|_2 < \sigma_r$, entonces $B$ tiene rango $r$.

## Cuadrados minimos y pseudoinvers

>[!Remark]-
>Para resolver el problema de cuadrados mínimos, una de las estrategias usadas fue la de realizar una descomposición QR con pivoteo de columnas. De esta forma se obtuvo que $Q^T A P = R$ con $Q$ ortogonal y $P$ permutación (también ortogonal). Ya que con la descomposición SVD se obtiene $U^T A V = \Sigma$, se pueden usar las ideas anteriores para resolver el problema de cuadrados mínimos.

>[!Theorem]
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $r$ y $A = U \Sigma V^T$ su descomposición SVD. Si $b \in \mathbb{R}^m$ entonces
>$$\bar{x} = \sum_{i=1}^r \frac{(u^i)^T b}{\sigma_i} v^i = \left( \sum_{i=1}^r \frac{1}{\sigma_i} v^i (u^i)^T \right) b$$
>es solución de minimizar $\| A x - b \|_2^2$ y el mínimo es $\| A x - b \|_2^2 = \sum_{i=r+1}^{m} ((u^i)^T b)^2$. Además, si $\hat{x}$ es otra solución, entonces $\| x^* \|_2 \leq \| \hat{x} \|_2$.
>>[!Proof]-
>>1. Note que
>>$$\begin{align}\| A x - b \|_2^2 = \| U^T (A x - b) \|_2^2& = \| U^T A V V^T x - U^T b \|_2^2 &  \\&= \| \Sigma z- U^T b \|_2^2 \\& = \sum_{i=1}^r (\sigma_i^2 z_{i} -(u^i)^T b)^2 + \sum_{i=r+1}^m ((u^i)^T b)^2\end{align}$$
>>Donde $z = V^T x$. 
>>3. Claramente el mínimo se alcanza haciendo la primera sumatoria igual a cero, o sea, si $\hat{x}$ es solución y $\hat{z} = V^T \hat{x}$ entonces $\hat{z}_i = (u^i)^T b / \sigma_i$ para $i = 1, \dots, r$.
>>4. Define $\bar{z}$ tomando $\bar{z}_i = (u^i)^T b / \sigma_i$ para $i = 1, \dots, r$ y $\bar{z}_i = 0$ para $i = r + 1, \dots, n$. (a diferencia de $\hat{z}$ esta es 0 en la cola) 
>>5. Entonces $\bar{x} = V \bar{z} = \sum_{i=1}^r \bar{z}_i v^i$ es minimizador y por lo tanto cumple que $\| A \bar{x} - b \|_2^2 = \sum_{i=r+1}^m ((u^i)^T b)^2$. 
>>6. Además, para cualquier solución $\hat{x}$
>>$$\| \overline{x} \|_2^2 = \| \overline{z} \|_2^2 = \sum_{i=1}^r \bar{z}_i^2 =\sum^{r}_{i=1} \hat{z}_{i}^{2}\leq \sum_{i=1}^n \hat{z}_{i}^{2}=\lVert \hat{z} \rVert _{2}^{2} = \| \hat{x} \|_2^2$$
>>($\lVert \overline{x} \rVert=\lVert \overline{z} \rVert$ y $\lVert \hat{x} \rVert=\lVert \hat{z} \rVert$ por ser $V$ isometria)    

^a7c66f

>[!Remark]-
>Si se desea resolver el problema de cuadrados mínimos con $A$ invertible, entonces la solución de minimizar $\| A x - b \|_2^2$ es $\bar{x} = A^{-1} b$. Usando la descomposición SVD para $A \in \mathbb{R}^{n \times n}$ de rango $n$, se obtiene que
>$$A^{-1} = V \Sigma^{-1} U^T = V \begin{bmatrix} \frac{1}{\sigma_1} \\ & \ddots \\ &&\frac{1}{\sigma_n} \end{bmatrix} U^T.$$
>Si se desea resolver el problema de cuadrados mínimos con $A \in \mathbb{R}^{m \times n}$ de rango $n$ (implicando que $m \geq n$), se puede usar que la solución $\bar{x}$ debe resolver la ecuación normal $A^T A \bar{x} = A^T b$. Como $A^T A \in \mathbb{R}^{n \times n}$ es invertible, se obtiene que $\bar{x} = (A^T A)^{-1} A^T b$. De la descomposición SVD de $A$ se obtiene que
>$$\Sigma = \begin{bmatrix} \hat{\Sigma} \\ 0 \end{bmatrix} \in \mathbb{R}^{m \times n}, \quad \hat{\Sigma} = \begin{bmatrix} \sigma_1 \\& \ddots \\ &&\sigma_n \end{bmatrix} \in \mathbb{R}^{n \times n}$$
>y por lo tanto $$A^T A = V \Sigma^T U^T U \Sigma V^T = V \Sigma^T \Sigma V^T=V \hat{\Sigma}^{T} \hat{\Sigma}V^{T}=V \hat{\Sigma}^{2}V^{T}   $$
>y $$(A^T A)^{-1} A^T = V \hat{\Sigma}^{-2} V^T V\Sigma^T U^T = V [\hat{\Sigma}^{-1}\ 0] U^T$$
>Esto puede generalizarse con la siguiente definición.

>[!Definition] PseudoInvers
>Dada $A \in \mathbb{R}^{m \times n}$ de rango $r$ y su descomposición SVD
>$$A = U \begin{bmatrix} \hat{\Sigma} & 0 \\ 0 & 0 \end{bmatrix} V^T, \quad \hat{\Sigma} = \begin{bmatrix} \sigma_1 & & \\ &\ddots \\&& \sigma_r \end{bmatrix} \in \mathbb{R}^{r \times r}$$
>se define su pseudoinversa como
>$$A^{\dagger} = V \begin{bmatrix} \hat{\Sigma}^{-1} & 0 \\ 0 & 0 \end{bmatrix} U^T$$

>[!Remark]
>Ahora, si $A \in \mathbb{R}^{m \times n}$ tiene rango $r$ y se toma $b \in \mathbb{R}^m$
>$$A^{\dagger} b = V \begin{bmatrix} \hat{\Sigma}^{-1} & 0 \\ 0 & 0 \end{bmatrix}U^{T}b = V \begin{bmatrix} \hat{\Sigma}^{-1} & 0 \\ 0 & 0 \end{bmatrix} \left[ \begin{array}{c} (u^1)^T b \\ \vdots \\ (u^m)^T b \end{array} \right] = V \begin{bmatrix} (u^1)^T b / \sigma_1 \\ \vdots \\ (u^r)^T b / \sigma_r \\ 0 \\ \vdots \\ 0 \end{bmatrix} = \sum_{i=1}^r \frac{(u^i)^T b}{\sigma_i} v^i$$
>Por [[#^a7c66f]] se sabe que $\overline{x} = A^{\dagger} b$ es la solución de norma 2 mínima del problema de cuadrados mínimos. 
>Note que si $A \in \mathbb{R}^{n \times n}$ tiene rango $n$ entonces
>$$A^{\dagger} = V \hat{\Sigma}^{-1} U^T = A^{-1}$$
>Además, si $A \in \mathbb{R}^{m \times n}$ tiene rango $n$ entonces
>$$A^{\dagger} = V[\hat{\Sigma}^{-1} 0] U^T = (A^T A)^{-1} A^T$$
>Por lo tanto, para cualquier $A \in \mathbb{R}^{m \times n}$ y $b \in \mathbb{R}^m$ una solución de
>$$\min_{x \in \mathbb{R}^n} \|Ax - b\|_2^2$$
>es $x = A^{\dagger} b$.

>[!Remark] Calcular SVD
>1) Hallar los autovalores y autovectores de $C = A^T A$, o sea, $W$ ortogonal y $D$ diagonal tal que $W^T C W = D$.
>2) Realizar una descomposición QR con permutación de columnas a la matriz $A W$, o sea, obtener $Q$ ortogonal, $R$ triangular superior y $P$ permutación tal que $Q^T (A W) P = R$.
>3) Definir $U = Q$, $V = W P$ y $\Sigma = \mathbb{R}$.
>Para ver que efectivamente esto nos genera una descomposición SVD, note primero que como $C$ es simétrica y semidefinida positiva, entonces diagonaliza en base ortonormal y $D$ tiene entradas diagonales no negativas. 
>Como $P$ es ortogonal, se tiene que $V = W P$. 
>De la descomposición QR con permutaciones obtenemos que las entradas diagonales de $R$ son no negativas y decrecientes. Además
>$$R^T R = (U^T A V)^{T}  U^T A V = V^T C V = P^T W^T C W P = P^T D P$$
>Como $P^T D P$ es una matriz diagonal, se puede ver que $R$ debe ser una matriz diagonal. 
>Para ello, separando la primera entrada diagonal de $R$ tenemos
>$$R^T R = \begin{bmatrix}r_{11} & 0\\s &  \hat{R}^{T}  \\\end{bmatrix}\begin{bmatrix}r_{11} & 0\\s &  \hat{R}\\\end{bmatrix}=\begin{bmatrix} r_{11}^{2} & r_{11}s^T \\    r_{11} s &ss^T + \hat{R}^T \hat{R}\end{bmatrix}$$
>Por lo tanto, $s = 0$, $\hat{R}^{T} \hat{R}$ debe ser diagonal. 
>Repitiendo este argumento se obtiene que $R$ es una matriz diagonal.
>Los métodos para realizar el paso 1 del procedimiento anterior se estudiarán en el siguiente capítulo.  
