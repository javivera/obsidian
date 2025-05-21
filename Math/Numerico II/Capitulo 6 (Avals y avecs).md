---
dateCreated: 2024-11-29,19:12
---
## Jacobi

>[!Remark]
>En general, para matrices simétricas de dimensiones mayores a $2$, uno puede ir aplicando el procedimiento anterior en submatrices de dimensión $2$.
>El algoritmo de Jacobi para hallar autovalores consiste en definir en cada iteración una matriz $A_k$ semejante a $A_{k-1}$ con el siguiente procedimiento: en el paso $k$ elegir los índices $i, j$ tales que $\lvert a_{ij}^{(k-1)} \rvert = \max_{r \neq s} \lvert a_{rs}^{(k-1)} \rvert$ y definir $A_k = Q_k^T A_{k-1} Q_k$ donde
>$$Q_k =\begin{bmatrix}I &  &  &  \\& c && -s &\\&&I \\ & s& & c & \\  &  &  & &I\end{bmatrix}\begin{array}{l}    \to (i) \\\\    \to (j)\end{array}$$
>Obteniendo así $A_k$ con $a_{ij}^{(k)} = 0$ y con los mismos autovalores de $A_{k-1}$.
>Para analizar que este método iterativo converge a una matriz diagonal semejante a $A$ se usará la función $\textit{off}\colon \mathbb{R}^{n \times n} \to \mathbb{R}$ dada por
>$$\text{off}(A) = \sqrt{\sum_{i=1}^n \sum_{j=1, j \neq i}^n a_{ij}^2}$$
>Claramente, $\text{off}(A) = 0$ si y solo si $A$ es diagonal. 

>[!Remark]
>Matemáticamente, $\text{off}(A)$ es la distancia en norma de Frobenius de $A$ al conjunto de matrices diagonales.

>[!Remark]- Si $B=Q^{T}AQ$ entonces $off(B)=?$  
>Note que si $A$ es simétrica, $Q$ es la matriz de rotación de las coordenadas $ij$ y $B = Q^T A Q$ entonces
>$$\begin{bmatrix}    b_{ii} & b_{ij} \\    b_{ji} & b_{jj}\end{bmatrix}=\begin{bmatrix}    c & s \\    -s & c\end{bmatrix}\begin{bmatrix}    a_{ii} & a_{ij} \\    a_{ji} & a_{jj}\end{bmatrix}\begin{bmatrix}    c & -s \\    s & c\end{bmatrix},$$
>Donde $c$ y $s$ fueron escogidos de manera que $b_{ij} = b_{ji} = 0$. Como estas matrices $2 \times 2$ son semejantes, entonces poseen igual norma de Frobenius. 
>Tomando norma de Frobenius al cuadrado se obtiene que
>$$b_{ii}^2 + b_{jj}^2 = a_{ii}^2 + 2a_{ij}^2 + a_{jj}^2$$
>Además, $b_{ll} = a_{ll}$ para todo $l \neq i, j$. Usando nuevamente que matrices semejantes poseen igual norma de Frobenius, se concluye que
>$$\begin{align}\text{off}(B)^2 &= \| B \|_F^2 - \sum_{l=1}^n b_{ll}^2 \\&= \| A \|_F^2 - \sum_{l \neq i,j\land l=1}^n a_{ll}^2 - (b_{ii}^2 + b_{jj}^2)\\& = \| A \|_F^2 - \sum_{l=1}^n a_{ll}^2 - 2a_{ij}^2 \\& = \text{off}(A)^2- 2a_{ij}^2\end{align}$$
>Con esto, se puede establecer la convergencia del método de Jacobi.

>[!Theorem]- $\lim_{ k \to \infty }off(A_{k})=??$  
>Sea $A \in \mathbb{R}^{n \times n}$ simétrica y considere $\{A_k\}$ generada por el método de Jacobi. Entonces $$\lim_{k \to \infty} \text{off}(A_k) = 0$$
>>[!Proof]-
>>1. Como $\{A_k\}$ es generada por el método de Jacobi, $A_k = Q_k^T A_{k-1} Q_k$
>>2. Por lo visto anteriormente $\text{off}(A_k)^2 = \text{off}(A_{k-1})^2 - 2 \left(a_{ij}^{(k-1)}\right)^2$. 
>>3. Por otro lado, como $$\left|a_{ij}^{(k-1)}\right| = \max_{r \neq s} \left|a_{rs}^{(k-1)}\right|$$
>>4. Se tiene que $$\text{off}(A_{k-1})^2 = \sum_{r=1}^n \sum_{s=1, \, r \neq s}^n \left(a_{rs}^{(k-1)}\right)^2\leq (n^2 - n) \left(a_{ij}^{(k-1)}\right)^2 = 2N \left(a_{ij}^{(k-1)}\right)^2$$
>>5. donde $N = n(n - 1)/2$. 
>>6. Por lo tanto $$-2 \left(a_{ij}^{(k-1)}\right)^2 \leq -\frac{1}{N} \text{off}(A_{k-1})^2$$
>>7. Ademas por 2. $$\text{off}(A_k)^2 \leq \left(1 - \frac{1}{N}\right) \text{off}(A_{k-1})^2 \leq \cdots \leq \left(1 - \frac{1}{N}\right)^k \text{off}(A_0)^2$$
>>8. Concluyendo que $\lim_{ k \to \infty }off(A_{k})^{2}=0$ 

>[!Theorem]- Gershgorin
>Si $X^{-1}AX = D + F$ con $D$ diagonal y $F$ con ceros en la diagonal, entonces cada autovalor $\lambda$ de $A$ satisface
>$$\lambda \in \bigcup_{i=1}^n D_i$$
>donde $D_i = \{ z \in \mathbb{C} \mid |z - d_i| \leq \sum_{j=1}^n |f_{ij}| \}$.
>>[!Proof]-
>>1. Sea $\lambda$ un autovalor de $A$. 
>>2. Si $\lambda = d_i$ para algún $i$, el resultado es trivial. 
>>3. Suponga que $\lambda \neq d_i$ para todo $i$. 
>>4. Como $\lambda$ es también autovalor de $X^{-1}AX$, entonces $D + F - \lambda I$ es singular. (justamente $v$ avec $(D+F)v -\lambda Iv=0$ con $v\neq0$)   
>>5. Luego $I + \Theta$ es singular para $\Theta = (D - \lambda I)^{-1}F$. (DUDA ) 
>>6. Si $\|\Theta\|_\infty < 1$, entonces
>>$$\frac{\|\Theta\|_\infty}{\|I\|_\infty} = \|\Theta\|_\infty < 1 = \frac{1}{\kappa_\infty(I)}$$
>>7. Por [[Capitulo 3 (Sensibilidad)#^b63799]] $I + \Theta$ debe ser no singular. 
>>8. Por lo tanto $$1 \leq \|\Theta\|_\infty = \|(D - \lambda I)^{-1}F\|_\infty = \sum_{j=1}^n \frac{|f_{ij}|}{|d_i - \lambda|}$$
>>para algún $i$.

>[!Remark]- Gershgorin caso $A=Id$
>Por lo tanto, como $B = Q^T A Q$ con $\text{off}(B) \leq \epsilon$, el teorema anterior nos garantiza que si $\lambda$ es un autovalor de $A$, entonces $$|\lambda - b_{ii}| \leq \sqrt{n} \epsilon$$
>para algún índice $i$. 
>En particular, si $X = I$, los discos de Gershgorin quedan
>$$D_i = \left\{ z \in \mathbb{C} \ \middle| \ |z - a_{ii}| \leq \sum_{j=1, j \neq i}^n |a_{ij}| \right\}$$
>O sea, el resultado anterior nos dice que los autovalores van a distar de los elementos diagonales como máximo la suma de los elementos de la fila en valor absoluto y sin la diagonal.

>[!Theorem]- Metodo potencias norma infinito
>Sea $A \in \mathbb{R}^{n \times n}$ diagonalizable con $\lambda_1$ autovalor dominante y $V = [v^1 \ \dots \ v^n] \in \mathbb{R}^{n \times n}$ autovectores. Suponga que las sucesiones $\{q^k\}$ y $\{\rho_k\}$ fueron generadas por
>$$q^{k+1} = \frac{1}{[Aq^k]_{jk}} Aq^k, \quad \rho_{k+1} = [Aq^{k+1}]_{jk}$$
>donde $[Aq^k]_{jk} = \| Aq^k \|_\infty$. Si $q^0 \in \mathbb{R}^n$ con $q^0 = \sum_{i=1}^n c_i v^i$ y $c_1 \neq 0$, entonces $\{q^k\}$ converge a $v^1 / \|v^1\|_\infty$ y los puntos límite de $\{\rho_k\}$ son $\pm \lambda_1$.
>>[!Proof]-
>>1. Tome $\sigma_k = [Aq^k]_{jk}$, $\eta_0 = 1$ y $\eta_{k+1} = \eta_k \frac{\sigma_k}{\lambda_1}$. 
>>2. Por lo tanto $$\eta_k q^k = \eta_{k-1} \frac{\sigma_k}{\lambda_1} q^{k-1} = \frac{1}{\lambda_1} A q^k = \frac{1}{\lambda_1} (\eta_{k-1} q^{k-1})$$
>>$$\eta_k q^k = \frac{1}{\lambda_1^k} A^k q^0 = c_1 v^1 + \sum_{i=2}^n c_i \left( \frac{\lambda_i}{\lambda_1} \right)^k v^i$$
>>3. Como $\lambda_1$ es dominante, se tiene que $$\lim_{k \to \infty} \eta_k q^k = c_1 v^1$$
>>4. Como $\|q^k\|_\infty = 1$ y $\eta_k \neq 0$ (pues $c_1 \neq 0$), entonces $\lim_{k \to \infty} |\eta_k| = |c_1| \|v^1\|_\infty$. 
>>5. O sea, $\{\eta_k\}$ tiene a lo sumo dos puntos límite, $\pm |c_1| \|v^1\|_\infty$. 
>>6. De esto se deduce que $q^k = \eta_k^{-1} \eta_k q^k$ tiene a lo sumo dos puntos límite, $v^1 / \|v^1\|_\infty$ y $-v^1 / \|v^1\|_\infty$
>>7. Por otro lado, como para todo $k$ vale que $q^k_{j_{k-1}} = 1$, entonces
>>$\rho_k = \left[ A q^k \right]_{j_{k-1}} = \sigma_k q^{k+1}_{j_{k-1}} = \lambda_1 \frac{\eta_{k+1}}{\eta_k} q^{k+1}_{j_{k-1}} = \lambda_1 \frac{\left[ \eta_{k+1} q^{k+1} \right]_{j_{k-1}}}{\left[ \eta_k q^k \right]_{j_{k-1}}}$
>>8. Además, como la sucesión $\{j_{k-1}\}$ es un conjunto infinito contenido en $\{1, \ldots, n\}$, debe existir algún $l \in \{1, \ldots, n\}$ tal que $j_{k-1} = l$ para infinitos $k$. 
>>9. Defina $\mathcal{K}_l = \{k \mid j_{k-1} = l\}$ y tome $l$ tal que $\mathcal{K}_l$ sea infinito y por 3. se obtiene
>>$$\lim_{k \to \infty, k \in \mathcal{K}_l} \rho_k = \lim_{k \to \infty, k \in \mathcal{K}_l} \lambda_1 \frac{\left[ \eta_{k+1} q^{k+1} \right]_l}{\left[ \eta_k q^k \right]_l} = \lambda_1 \frac{c_1 v^1_l}{c_1 v^1_l} = \lambda_1.$$
>>10. Como el límite es independiente del $l$ escogido, se obtiene que $\lambda_1$ es el límite de $\{\rho_k\}$.

>[!Theorem]- Metodo potencias norma 2
>Sea $A \in \mathbb{R}^{n \times n}$ diagonalizable con $\lambda_1$ autovalor dominante y $V = [v^1 \ \cdots \ v^n] \in \mathbb{R}^{n \times n}$ autovectores. Suponga que las sucesiones $\{q^k\}$ y $\{\rho_k\}$ fueron generadas por
>$$q^{k+1} = \frac{1}{\|Aq^k\|_2} Aq^k \quad\quad\rho_k = (q^k)^\top A q^{k+1}$$
>Si $q^0 \in \mathbb{R}^n$ con $q^0 = \sum_{i=1}^n c_i v^i$ y $c_1 \neq 0$, entonces $\{\rho_k\}$ converge a $\lambda_1$ y los puntos límite de $\{q^k\}$ son $v^1 / \|v^1\|_2$ y $-v^1 / \|v^1\|_2$.
>>[!Proof]-
>>1. Defina $\sigma_k = \|Aq^k\|_2$, $\eta_0 = 1$ y $\eta_{k+1} = \eta_k \frac{\sigma_k}{\lambda_1}$. 
>>2. Por lo tanto $$\begin{align}\eta_k q^k & = \eta_{k-1} \frac{\sigma_{k-1}}{\lambda_{1}} q^{k} = \eta_{k-1}\frac{1}{\lambda_{1}}Aq^{k-1} =\frac{1}{\lambda_{1}}A(\eta_{k-1}q^{k-1} )\\ & = \frac{1}{\lambda_{1 }^{k} }A^{k}q^{0} \\ &  = c_1 v^1 + \sum_{i=2}^n c_i \left( \frac{\lambda_i}{\lambda_1} \right)^k v^i\end{align}$$
>>3. Como $\lambda_1$ es dominante, se tiene que $\lim_{k \to \infty} \eta_k q^k = c_1 v^1$
>>4. Por otro lado, como $\|q^k\|_2 = 1$ y $\eta_k \neq 0$ (pues $c_1 \neq 0$), entonces $\lim_{k \to \infty} |\eta_k| = \|c_1 v^1\|_2$. 
>>5. Por lo tanto $\{\eta_k\}$ tiene a lo sumo dos puntos límite, $\|c_1 v^1\|_2 \ y \ -\|c_1 v^1\|_2$.
>>6. Combinando estos límites, se obtiene que $q^k = \frac{1}{\eta_k} \eta_k q^k$ tiene a lo sumo dos puntos límite $v^1 / \|v^1\|_2 \ y \ -v^1 / \|v^1\|_2$.
>>7. Veamos ahora que la sucesión $\{\rho_k\}$ converge a $\lambda_1$. Note
>>$$\begin{align}\rho_k &= (q^k)^\top A q^k = \sigma_k (q^k)^\top q^{k+1} = \lambda_1 \frac{\eta_{k+1}}{\eta_k} (q^k)^\top q^{k+1} \\ & =\frac{\lambda_1}{\eta_k^2} (\eta_k q^k)^\top (\eta_{k+1} q^{k+1})\end{align}$$
>>8. Usando los límites anteriores se obtiene que
>>$$\lim_{k \to \infty} \rho_k = \lambda_1\frac{1}{\lVert c_{1}v^{1}\rVert_{2}^{2} }(c_{1}v^{1} )^{T}(c_{1}v^{1} )=\lambda_{1}$$
>>

>[!Theorem]- cercania de aval a $\rho$  
>Sea $A \in \mathbb{C}^{n \times n}$ tal que $Av = \lambda v$ con $\|v\|_2 = 1$ y sea $\rho = q^* Aq$ con $q^* q = \|q\|_2^2 = 1$. Entonces $$|\lambda - \rho| \leq 2\|v - q\|_2 \|A\|_2.$$
>>[!Proof]-
>>1. Como $v^* Av = \lambda \|v\|_2^2 = \lambda$, entonces
>>$$\lambda - \rho = v^* Av - q^* Aq = v^* A (v - q) + (v - q)^* Aq.$$
>>2. Por lo tanto
>>$$\begin{align}|\lambda - \rho| &\leq |v^* A (v - q)| + |(v - q)^* Aq| \\ &\leq \|v\|_2 \|A\|_2 \|v-q\|_2 + \|v - q\|_2 \|A\|_2 \|q\|_2\\& = 2 \|v - q\|_2 \|A\|_2\end{align}$$

>[!Remark]- Como utilizar $\rho$ para hallar avals de $A$
>Si $A$ tiene autovalores $\lambda_1, \ldots, \lambda_n$ con
>$$|\lambda_1| > |\lambda_2| > \cdots > |\lambda_n|$$
>Entonces la matriz $A - \rho I$ tiene autovalores $\lambda_1 - \rho, \ldots, \lambda_n - \rho$ con
>$$|\lambda_{i_1} - \rho| > |\lambda_{i_{2}} - \rho| > \cdots > |\lambda_{i_{n}} - \rho|$$
>Por lo tanto, si aplicamos el método de las potencias a la matriz $A - \rho I$, se obtendrá como resultado $\tilde{\lambda} = \lambda_{i_{1}} - \rho$
>Concluyendo que $\lambda_{i_{1}} = \tilde{\lambda} + \rho$.
>De esta manera, al variar $\rho$ se podrían calcular todos los autovalores de $A$. Esta variante es conocida como método de las potencias con desplazamientos.

>[!Remark]- Metodo potencias caso $A$ simetrica
>En el caso particular de tener $A$ simétrica, se obtiene que
>$$A = V \begin{bmatrix}\lambda_1 & & \\& \ddots & \\& & \lambda_n\end{bmatrix}V^T = \sum_{i=1}^n \lambda_i v^i (v^i)^T$$
>Entonces se pueden calcular los primeros $k$ autovalores de $A$ de la siguiente manera: tome $\tilde{A}_0 = A$ e $i = 1$.
>1. Obtenga $\lambda_i, v^i$ aplicando el método de las potencias en norma 2 a $\tilde{A}_{i-1}$.
>2. Defina $\tilde{A}_i = \tilde{A}_{i-1} - \lambda_i v^i (v^i)^T$.
>3. Si $i = k$, parar. Si no, hacer $i \gets i + 1$ e ir al paso 1.

>[!Remark]- Método de las potencias inversas
>Como es sabido, si $\lambda$ es un autovalor de una matriz no singular $A$, entonces $1/\lambda$ es un autovalor de $A^{-1}$. Usando esta propiedad se obtiene que si $\lambda_1, \dots, \lambda_n$ son autovalores de $A$ y $\rho$ es una aproximación de $\lambda_i$ tal que $\lvert \lambda_i - \rho \rvert < \lvert \lambda_j - \rho \rvert$ para todo $j \neq i$, entonces
>$$\frac{1}{\lvert \lambda_i - \rho \rvert} > \frac{1}{\lvert \lambda_j - \rho \rvert}$$
>para todo $j \neq i$. O sea, $1 / (\lambda_i - \rho)$ es un autovalor dominante de $(A - \rho I)^{-1}$.
>Aplicando el método de las potencias se genera $\{q^k\}$, con
>$$q^{k+1} = \frac{1}{\sigma_k} (A - \rho I)^{-1} q^k$$
>Computacionalmente, se debe hallar $z^k$ tal que $(A - \rho I) z^k = q^k$ y luego definir $q^{k+1} = \frac{z^k}{\sigma_k}$. Este procedimiento obtendrá $\tilde{\lambda} = 1 / (\lambda_i - \rho)$ y por lo tanto $\lambda_i = 1 / \tilde{\lambda} + \rho$.
>Una de las mayores deficiencias de esta técnica es el hecho de tener un desplazamiento $\rho$ adecuado. Una de las opciones más viables es ir actualizando el valor de $\rho$ en cada iteración de manera que vaya aproximando algún autovalor. Si dicha aproximación se realiza usando el cociente de Rayleigh, se obtiene lo siguiente: dado $q^0$ con $\lVert q^0 \rVert_2 = 1$ y $k = 0$
>1. Definir $\rho_k = (q^k)^T A q^k$
>2. Hallar $z^k$ tal que $(A - \rho_k I) z^k = q^k$
>3. Definir $q^{k+1} = \frac{z^k}{\lVert z^k \rVert_2}$, hacer $k \gets k + 1$ y regresar al paso 1
>Este procedimiento recibe el nombre de iteración del cociente de Rayleigh. Note que 
>$$\rho_{k+1} = (q^{k+1})^T A q^{k+1} = (q^{k+1})^T (A - \rho_k I) q^{k+1} + \rho_k$$

>[!Theorem]- Descomposición de Schur
>Si $A \in \mathbb{C}^{n \times n}$, entonces existe $Q \in \mathbb{C}^{n \times n}$ unitaria tal que $T = Q^* A Q$ es triangular superior.
>>[!Proof]-
>>1. Se demostrará realizando inducción en $n$. Si $n = 1$ entonces $A = a \in \mathbb{C}$.
>>2. Tomando $Q = 1$ se obtiene $Q^* A Q = a = T$.
>>3. Suponga que el teorema vale para matrices de dimensión $n - 1$. 
>>4. Sea $\lambda \in \mathbb{C}$ tal que $Av = \lambda v$ con $\lVert v \rVert_2 = 1$.
>>5. Usando Gram-Schmidt genero $U = [v \, V] \in \mathbb{C}^{n \times n}$ unitaria.
>>6. Como $$U^* A U = \begin{bmatrix}v^* \\V^*\end{bmatrix}[Av \, AV] = \begin{bmatrix}\lambda & w^* \\0 & B\end{bmatrix}$$
>>con $w^* = v^* AV$ y $B = V^* AV$. 
>>8. Por hipótesis inductiva, existe $\tilde{U} \in \mathbb{C}^{(n-1) \times (n-1)}$ unitaria tal que $\tilde{U}^* B \tilde{U} = \tilde{T}$ es triangular superior . 
>>9. Sea$$Q = U \begin{bmatrix}1 & 0 \\0 & \tilde{U}\end{bmatrix}$$
>>10. Entonces $$Q^* A Q = \begin{bmatrix}1 & 0 \\0 & \tilde{U}^*\end{bmatrix}\begin{bmatrix}\lambda & w^* \\0 & B\end{bmatrix}\begin{bmatrix}1 & 0 \\0 & \tilde{U}\end{bmatrix}=\begin{bmatrix}\lambda & w^* \tilde{U} \\0 & \tilde{U}^* B \tilde{U}\end{bmatrix}=\begin{bmatrix}\lambda & w^* \tilde{U} \\0 & \tilde{T}\end{bmatrix} = T$$
>>11. Que es una matriz triangular superior.

^9da1ad

>[!Remark]
>Claramente, la matriz triangular superior $T$ es la suma de una matriz diagonal más una nilpotente. Tal resultado suele encontrarse también en libros de álgebra lineal.
>Veamos cómo generar iterativamente $T_k = Q_k^* A Q_k$, donde $Q_k$ es unitaria y generada por el método de iteraciones ortogonales, o sea, $Q_k R_k = Z_k$ descomposición QR de $Z_k$ con $Z_k = A Q_{k-1}$, donde $Q_0$ es unitaria. Por un lado
>$$T_{k-1} = Q_{k-1}^* A Q_{k-1} = Q_{k-1}^* Z_k = Q_{k-1}^* Q_k R_k$$
>donde $Q_{k-1}^* Q_k$ es una matriz unitaria. Por otro lado
>$$T_k = Q_k^* A Q_k = Q_k^* A Q_{k-1} Q_{k-1}^* Q_k = Q_k^* Z_k Q_{k-1}^* Q_k = R_k Q_{k-1}^* Q_k$$
>Por lo tanto, si se define $U_{k}$ y $R_{k}$ mediante la descomposicion $QR$ de $T_{k-1}$ o sea $T_{k-1}=U_{k}R_{k}$ se puede definir $T_{k}=R_{k}U_{k}$. Este procedimiento es conocido como metodo de iteracion $QR$ y su esquema iterativo es el siguiente:
>1. Dar $U_0$ unitaria, definir $T_0 = U_0^* A U_0$ y $k = 1$
>2. Obtener $U_k, R_k$ tal que $U_k R_k = T_{k-1}$ con la descomposición QR de $T_{k-1}$
>3. Definir $T_k = R_k U_k$
>4. Hacer $k \leftarrow k + 1$ y regresar al paso 1
>
>Como $$T_k = R_k U_k = U_k^* T_{k-1} U_k = \dots = U_k^* \dots U_1^* T_0 U_1 \dots U_k = Q_k^* A Q_k$$
>donde $Q_k = U_0 U_1 \dots U_k$, entonces, tomando subsecuencias si fuera necesario, $\{T_k\}$ converge a $T$ semejante a $A$. Además, si $|\lambda_1| > \dots > |\lambda_n|$, se puede afirmar que $T$ es triangular superior. La demostración esta en el anexo

>[!Theorem]- Descomposición de Schur en $\mathbb{R}$
> Si $A \in \mathbb{R}^{n \times n}$ entonces existe $Q \in \mathbb{R}^{n \times n}$ ortogonal tal que $$Q^T A Q =\begin{bmatrix} R_{11} & R_{12} & \dots & R_{1s} \\    0 &R_{22} & \dots & R_{2s} \\    \vdots & \vdots & \ddots & \vdots \\    0 & 0 &\dots & R_{ss}\end{bmatrix}$$
> donde $R_{ll} \in \mathbb{R}^{2 \times 2}$ con autovalores complejos conjugados o $R_{ll} \in \mathbb{R}^{1 \times 1}$.
>>[!Proof]-
>>1. Como $p(x) = \det(A - xI)$ tiene coeficientes reales, si $p(\lambda) = 0$ con $\lambda \in \mathbb{C}$, entonces $p(\bar{\lambda}) = 0$. 
>>2. Sea $k$ el número de pares $(\lambda, \bar{\lambda})$ de autovalores complejos de $A$. 
>>3. La demostración se realizará mediante inducción en $k$.
>>4. Si $k = 0$, entonces se puede usar el mismo argumento usado para demostrar [[#^9da1ad]], obteniendo que $R_{ll} \in \mathbb{R}^{1 \times 1}$ para todo $l$.
>>5. Suponga que $A$ tiene $k \geq 1$ pares de autovalores complejos $(\lambda, \bar{\lambda})$ y que el Teorema vale para $k - 1$. 
>>6. Si $\lambda = \gamma + i\mu \in \mathbb{C}$, con $\mu \neq 0$, es un autovalor de $A$, entonces existen $y, z \in \mathbb{R}^n$ tales que $y + iz \neq 0$ y 
>>$$A(y + iz) = (\gamma + i\mu)(y + iz)$$
>>7. Agrupando parte real y parte imaginaria, se obtiene que $$A\begin{bmatrix}    y & z\end{bmatrix} =\begin{bmatrix}    y & z\end{bmatrix}S, \quad S = \begin{bmatrix}    \gamma & \mu \\    -\mu& \gamma\end{bmatrix}$$
>>con $y, z \in \mathbb{R}^n$.
>>8. Veamos que $y, z$ son vectores linealmente independientes. Si $y = cz$ para $c \in \mathbb{R}$, entonces $$Az= \frac{1}{c + i}A(y + iz)=\frac{1}{c+i}(\gamma +i\mu)(y+iz) = (\gamma + i\mu)z$$
>>contradiciendo que $A(z) \in \mathbb{R}^n$.
>>9. Usando que $y, z$ son linealmente independientes, la descomposición QR nos garantiza la existencia de $\hat{R} \in \mathbb{R}^{2 \times 2}$ triangular superior no singular y $\hat{Q} \in \mathbb{R}^{n \times n}$ ortogonal tales que
>>$$[y \ \ z] = \hat{Q} \begin{bmatrix}    \hat{R} \\     0\end{bmatrix}$$
>>10. Considere la siguiente matriz partida por bloques:$$Q^T A Q = \begin{bmatrix}    \hat{R}_{11} & \hat{R}_{12} \\    \hat{R}_{21} & \hat{R}_{22}\end{bmatrix}$$
>>con $\hat{R}_{11} \in \mathbb{R}^{2 \times 2}$.
>>$$\begin{align}\begin{bmatrix}    \hat{R}_{11} & \hat{R}_{12} \\ \hat{R}_{21} &\hat{R}_{22}\end{bmatrix}& =\begin{bmatrix}    R_{11} & R_{12} \\     R_{21} & R_{22}\end{bmatrix}\begin{bmatrix}    \hat{R} \\    0\end{bmatrix}=\hat{Q}^T A\hat{Q}\begin{bmatrix}    \hat{R} \\    0\end{bmatrix} \\ &= \hat{Q}^{T}A[y \ \ z]=\hat{Q}^{T}[y \ \ z]S  \\& =  \begin{bmatrix}    \hat{R} \\   0\end{bmatrix}S=\begin{bmatrix}    \hat{R} S \\ 0\end{bmatrix}\end{align} $$
>>11. Como $\hat{R}$ es no singular, se concluye que $\hat{R}_{21} = 0$ y $S = \hat{R}^{-1}_{11} \hat{R}$. 
>>12. Por lo tanto, los autovalores de $\hat{R}_{11}$ coinciden con los de $S$ y son $\gamma + i \mu, \gamma - i \mu$. 
>>13. Además, la matriz $\hat{R}_{22}$ debe tener los restantes autovalores de $A$ y por lo tanto a lo sumo $k - 1$ pares de autovalores complejos $(\lambda, \bar{\lambda})$. 
>>14. Por hipótesis inductiva, existe $\hat{Q} \in \mathbb{R}^{(n-2) \times (n-2)}$ ortogonal tal que $\hat{Q}^T \hat{R}_{22} \hat{Q} = R_{22}$ cumple con el resultado del Teorema. 
>>15. Defina $$Q =\begin{bmatrix}    I & 0 \\    0 & \hat{Q}\end{bmatrix}\quad I \in \mathbb{R}^{2 \times 2}$$
>>16. Entonces $$Q^T A Q =\begin{bmatrix}    I & 0 \\    0 & \hat{Q}^T\end{bmatrix}\begin{bmatrix}    \hat{R}_{11} & \hat{R}_{12} \\    \hat{R}_{21} & \hat{R}_{22}\end{bmatrix}\begin{bmatrix}    I & 0 \\    0 & \hat{Q}\end{bmatrix}=\begin{bmatrix}    \hat{R}_{11} &\hat{R}_{12} \hat{Q} \\    0 & R_{22}\end{bmatrix}$$
>>cumple lo enunciado en el Teorema

>[!Remark]
>La matriz semejante a $A$ del resultado anterior corresponde a una familia de matrices conocidas. $T_k \to T$ en el límite con $t \to \infty$.

>[!Definition]
>Se dice que $H$ es una matriz Hessenberg superior si $h_{ij} = 0$ para $i > j + 1$.
>Una matriz Hessenberg superior $5 \times 5$ tiene la siguiente estructura:
>$$H =\begin{bmatrix} h_{11} & h_{12} & h_{13} & h_{14} & h_{15} \\ h_{21} & h_{22} & h_{23} & h_{24} & h_{25} \\ 0 & h_{32} & h_{33} & h_{34} & h_{35} \\ 0 & 0 & h_{43} & h_{44} & h_{45} \\0 & 0 & 0 & h_{54} & h_{55} \end{bmatrix}$$
>Por lo tanto, la descomposición de Schur en los reales nos garantiza que $Q^T A Q$ es Hessenberg superior.

>[!Remark]
>El método de iteraciones QR en $\mathbb{R}$ para $A \in \mathbb{R}^{n \times n}$ sería el siguiente:
>1. Dar $Q_0$ ortogonal, definir $H_0 = Q_0^T A Q_0$ y $k = 1$
>2. Obtener $Q_k, R_k$ tal que $Q_k R_k = H_{k-1}$ con la descomposición QR de $H_{k-1}$.
>3. Definir $H_k = R_k Q_k$
>4. Hacer $k \leftarrow k+1$ y regresar al paso 1.

 >[!Theorem]- Resultado imporante hessen y $QR$  
 >Si $H \in \mathbb{R}^{n \times n}$ es Hessenberg superior y no singular con $H = QR$ su descomposición QR, entonces $RQ$ es Hessenberg superior.
 >>[!Proof]
 >>1. Como $H$ es no singular, entonces $R$ es triangular superior y no singular, por lo tanto $r_{ii} \neq 0$ para todo $i$. 
 >>2. Veamos primero que $Q$ es Hessenberg superior. Analizando las columnas de $H = QR$, se ve que la $j$-ésima columna e
 >>3. $$\begin{bmatrix}h_{1j} \\\vdots \\h_{j+1,j} \\0 \\\vdots \\0\end{bmatrix}=Q\begin{bmatrix}r_{1j} \\\vdots \\r_{jj} \\0 \\\vdots \\0\end{bmatrix}=\sum^{j}_{l=1} \begin{bmatrix}q_{1l} \\\vdots \\ q_{l+1,l} \\q_{l+2,l} \\\vdots \\q_{nl}\end{bmatrix}$$
 >>4. Para $j = 1$ se obtiene que $q_{i1} = 0$ para $i = 3, \ldots, n$. 
 >>5. Usando lo anterior, si $j = 2$ entonces $q_{i2} = 0$ para $i = 4, \ldots, n$.  
 >>6. Siguiendo de esta manera hasta $j = n$ se obtiene que $q_{ij} = 0$ para $i \geq j+2$, concluyendo que $Q$ es Hessenberg superior.
 >>7. Ahora, analizando las columnas de $\tilde{H} = RQ$ se obtiene que la $j$-ésima columna es igual a:
 >>$$\begin{bmatrix}\tilde{h}_{1j} \\\vdots \\\tilde{h}_{j+1,j} \\\tilde{h}_{j+2,j}\\\vdots \\\tilde{h}_{nj}\end{bmatrix}=R\begin{bmatrix}q_{1j} \\\vdots \\q_{j+1,j} \\0\\\vdots \\0\end{bmatrix}=\sum_{l=1}^{j+1} q_{lj}\begin{bmatrix}r_{1l}\\\vdots \\ r_{ll} \\0 \\\vdots \\0\end{bmatrix}$$
 >>8. Por lo tanto, $\tilde{h}_{ij} = 0$ para $i \geq j+2$, o sea, $\tilde{H}$ es Hessenberg superior. 

>[!Remark]
>Usando esta propiedad, si iniciamos el método de iteraciones QR con una matriz ortogonal $Q_0$ tal que $H_0 = Q_0^T A Q_0$ sea Hessenberg superior, entonces para todo $k$, $H_k = R_k Q_k$ es Hessenberg superior, donde $Q_k R_k = H_{k-1}$ es la descomposición QR de $H_{k-1}$.
>Una de las maneras de reducir $A$ en una Hessenberg superior es aplicar matrices ortogonales para poner ceros debajo de la primera subdiagonal. Este procedimiento puede realizarse aplicando rotaciones de Givens of reflexiones de Householder. Por simplcidad vamos como hacero mediante reflexiones
>Defina $V_j = I - \frac{2}{\|u^j\|_2^2} u^j (u^j)^\top$ que transforme la $j$-ésima columna de $A$ haciendo $a_{ij} = 0$ para $i = j+2, \ldots, n$. O sea,
>$$V_j^\top\begin{bmatrix}a_{1j} \\\vdots \\a_{j,j} \\a_{j+1,j} \\a_{j+2,j} \\\vdots \\a_{nj}\end{bmatrix}=\begin{bmatrix}a_{1j} \\\vdots \\a_{j,j} \\\tilde{a}_{j+1,j} \\0 \\\vdots \\0\end{bmatrix}$$
>Como los primeros $j$ elementos quedan invariantes, se obtendrá
>$$V_1^\top A V_1 =\begin{bmatrix}* & * & * & * & * \\ *& * & * & * &* \\ 0 &  * & * & * & * \\ 0 & * & * & * & * &  \\ 0 & * & * & * & *\\\end{bmatrix}$$
>$$V_2^\top V_1^\top A V_1 V_2 =\begin{bmatrix}* & * & * & * & * \\ * & * & * & * & * \\0 & * & * & * & * \\0 & 0 & * & * & *  \\0 & 0 & * & * & *   \end{bmatrix}$$
>$$V_{n-2}^\top \cdots V_2^\top V_1^\top A V_1 V_2 \cdots V_{n-2} =\begin{bmatrix}* & * & * & * & *  \\0 & * & * & * & * \\0 & 0 & * & * & *\\
0 & 0 & 0 & * & * &  \\0 & 0 & 0 & 0 &  *\end{bmatrix}$$
>Entonces $H_0 = Q_0^\top A Q_0$, donde $Q_0 = V_1 V_2 \cdots V_{n-2}$.



