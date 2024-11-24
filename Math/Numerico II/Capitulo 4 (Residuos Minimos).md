---
dateCreated: 2024-11-17,19:58
---
## Rotacion Givens

>[!Theorem]
>Si $A \in \mathbb{R}^{m \times n}$, entonces existe $Q \in \mathbb{R}^{m \times m}$ ortogonal y $R \in \mathbb{R}^{m \times n}$ triangular superior con elementos diagonales no negativos tal que $A = QR$.
>>[!Proof]-
>>1. Por construcción, $G_{ij} \in \mathbb{R}^{m \times m}$ es ortogonal y al aplicarla en $\tilde{A}$ hace $a_{ij} = 0$.
>>2. Por lo tanto, si $m \leq n$
>>$$\begin{align} 
>>R = G_{m+1,m} G_{m,m-1} \dots G_{31} G_{21} A\\ 
>>\\
>>Q = G_{21}^T G_{31}^T \dots G_{m1}^T G_{32}^T \dots G_{m+1,m}^T
>>\end{align}$$
>>3. y si $m > n$
>>$$\begin{align}R = G_{m,n} \dots G_{n+1,n} \dots G_{32} G_{m1} \dots G_{31} G_{21} A  \\
>>\\
>>Q = G_{21}^T G_{31}^T \dots G_{m1}^T G_{32}^T \dots G_{n+1,n}^T G_{m,n}
>>\end{align}$$
>>4. Entonces $r_{ij} = 0$ para $j = 1, \dots, \min\{m - 1, n\}$, $i = j + 1, \dots, m$ con $r_{jj} \geq 0$. 
>>5. Además, se obtiene que $A = QR$ (Por que $G_{jk}$ es ortogonal por ende $G_{jk}G_{jk}^{T}=Id$) 

## Reflexion Householder

>[!Proposition]
>Sea $u \in \mathbb{R}^n$ con $u \neq 0$. Si $Q = I - \frac{2}{\|u\|_2^2} uu^T$, entonces
>- (a) $Qu = -u$
>- (b) $Qv = v$ si $u^T v = 0$
>- (c) $Q = Q^T$
>- (d) $Q = Q^{-1}$
>>[!Proof]-
>>1. Calculando directamente se obtiene que
>>$$Qu = \left( I - \frac{2}{\|u\|_2^2} uu^T \right) u = u - 2u = -u$$
>>2. Si $u^T v = 0$ entonces $$Qv = \left( I - \frac{2}{\|u\|_2^2} uu^T \right) v = v$$
>>3. Transponiendo $$Q^T = \left( I - \frac{2}{\|u\|_2^2} uu^T \right)^T = \left( I - \frac{2}{\|u\|_2^2} uu^T \right) = Q$$
>>4. Multiplicando por $Q$ 
>>$$QQ = \left( I - \frac{2}{\|u\|_2^2} uu^T \right) \left( I - \frac{2}{\|u\|_2^2} uu^T \right)= I - \frac{2}{\|u\|_2^2} uu^T - \frac{2}{\|u\|_2^2} uu^T + 4 \frac{1}{\|u\|_2^4} \lVert u \rVert _{2}^{2}uu^T = I$$

^34e2e0

>[!Remark] Anular columna con Householder
>1. Queremos hallar $Q$ tal que $Qx = \alpha e_1$. Como queremos que los elementos diagonales de la matriz triangular superior sean no negativos, tomaremos $\alpha \geq 0$. 
>2. Como $Q$ preserva la norma 2, obtenemos que $\|x\|_2 = \|Qx\|_2 = \alpha$. (es isometria preseva todas las norma DUDA)
>3. Entonces problema se reduce a hallar $Q$ tal que $Qx = \|x\|_2 e_1$. 
>4. Para llevar el vector $x$ al vector $\|x\|_2 e_1$, la reflexión deberá ser en la dirección $u = x - \|x\|_2 e_1$ por que
>
>$$u^T x = u^T \left( \frac{x - \|x\|_2 e_1}{2} + \frac{x + \|x\|_2 e_1}{2} \right)$$
>entonces se obtiene $$Qx = \left( I - \frac{2}{\|u\|_2^2} uu^T \right) x = x - \frac{2}{\|u\|_2^2} (u^T x) u=x-u=\lVert x \rVert_{2}e^{1} $$
>5. Como $u$ difiere de $x$ en su primera componente que es $u_1 = x_1 - \|x\|_2$. Si $x_1 > 0$ se puede evitar el error numérico escribiendo 
>$$u_1 = x_1 - \|x\|_2 = \frac{x_1^2 - \|x\|_2^2}{x_1 + \|x\|_2} = \frac{x_1^2 + \cdots + x_n^2}{x_1 + \|x\|_2}$$
>6. Por motivos numéricos, y ya que cualquier múltiplo de $u$ genera la misma $Q$, el vector $u$ se escala para obtener $u_1 = 1$, o sea,
>$$u = \begin{bmatrix} \frac{x_{1}}{\gamma}=1 \\ \frac{x_2}{\gamma} \\ \vdots \\ \frac{x_n}{\gamma} \end{bmatrix} \quad\text{donde}\quad\gamma = \begin{cases}x_1 - \sqrt{x_1^2 + \sigma} & \text{si } x_1 \leq 0, \\\frac{-\sigma}{x_1 + \sqrt{x_1^2 + \sigma}} & \text{si } x_1 > 0\end{cases}$$
>con $\sigma = x_2^2 + \cdots + x_n^2$ y $\sigma = 0$ si $x$ es de dimensión $n = 1$.
>7. Note que $\gamma = 0$ si y solo si $\sigma=0$ y $x_{1}\geq0$ (usando la segunda branch de la def de $\gamma$).En este caso $x = \|x\|_2 e_1$. 
>8. Si se tiene $\gamma \neq 0$ se obtiene que $\|u\|_2^2 = 1 + \frac{\sigma}{\gamma^2}=\frac{\gamma^{2}+\sigma}{\gamma^{2}}$  
>9. Entonces tenemos $I - \frac{2}{\|u\|_2^2} uu^T$ con $u \neq 0$ que es la llamada reflexión de Householder.
>10. Reemplazando con el $u$ que conseguirmos se puede tomar $Q = I - \rho uu^T$ donde
>$$\rho = \begin{cases}0 & \text{si } \sigma = 0 \text{ y } x_1 \geq 0, \\\frac{2\gamma^2}{\gamma^2 + \sigma} & \text{caso contrario}\end{cases}$$
>

^cad43b
## Obtener QR con Householder

>[!Remark] QR Householder DUDA
>1. Ahora, dada $A \in \mathbb{R}^{m \times n}$ se puede realizar una descomposición QR aplicando reflexiones de Householder por columnas. 
>2. Dado $I = \{j, \dots, m\}$ para el vector $$x = A_{Ij}^{(j)}  = \begin{bmatrix} a_{jj}^{(j)}  \\ \vdots \\ a_{mj}^{(j)}  \end{bmatrix}$$
>se construye $Q_j \in \mathbb{R}^{(m-j+1) \times (m-j+1)}$ tal que $Q_j = I - \rho uu^T$ con $u$ y $\rho$ dados por el [[#^cad43b]]. Donde $A^{(j)}=\tilde{Q}_{j-1}\ldots \tilde{Q}_{1}A$  
>1. Definiendo $\tilde{Q}_j \in \mathbb{R}^{m \times m}$ tal que $$\tilde{Q}_j = I - \rho \tilde{u} \tilde{u}^T \quad \text{con} \quad \tilde{u} = \begin{bmatrix} 0  \\ u \end{bmatrix} \in \mathbb{R}^{m} \quad0\in \mathbb{R}^{j-1} $$
>(DUDA No podemos usar $$\tilde{Q}_{j}= \begin{bmatrix} I & 0 \\0 & Q_{j} \end{bmatrix}$$  ) 
>5. Se van obteniendo $\tilde{Q}_j$ ortogonales con la propiedad que $$R = \tilde{Q}_p \dots \tilde{Q}_1 A, \quad p = \min\{m, n\}$$
>es triangular superior con elementos diagonales no negativos y (Para que esto sea cierto, no necesito rango de $A$ sea $n$?  ) 
>5. Por lo tanto $$Q  = \tilde{Q}_1 \dots \tilde{Q}_p$$
>6. Y finalmente $QR=A$ por [[#^34e2e0]] 

>[!Theorem] DUDA
>Si $A = QR$ es una descomposición QR de $A \in \mathbb{R}^{m \times n}$ de rango $n$ (esto implica que $m\geq n$?? DUDA) y $A = [a^1 \dots a^n], \, a^j \in \mathbb{R}^m, Q = [q^1 \dots q^m], q^j \in \mathbb{R}^m$, entonces
>$$\text{span}\{a^1, \dots, a^k\} = \text{span}\{q^1, \dots, q^k\}$$
>para $k = 1, \dots, n$. 
>En particular si $Q = [Q_1 Q_2], Q_1 \in \mathbb{R}^{m \times n}$, entonces $\text{Im}(A) = \text{Im}(Q_1)$, $Im(A)^{\perp}=Im(Q_{2})$   y tomando $R = \begin{bmatrix} R_1 \\ 0 \end{bmatrix}, R_1 \in \mathbb{R}^{n \times n}$, se obtiene que $A = Q_1 R_1$
>>[!Proof]
>>1. Comparando las columnas de $A = QR$ se obtiene que si $1 \leq k \leq n$ entonces ($R$ triangular superior) 
>>$$a^k = Q \begin{bmatrix} r_{1k} \\ \vdots \\ r_{kk} \\ 0 \\ \vdots \\ 0 \end{bmatrix}= \sum_{j=1}^k r_{jk} q^j \in \text{span}\{q^1, \dots, q^k\}$$
>>2. Obteniendo que $\text{span}\{a^1, \dots, a^k\} \subset \text{span}\{q^1, \dots, q^k\}$
>>3. Como $A$ tiene rango $n$ (por hipotesis) los vectores $a^1, \dots, a^k$ son linealmente independientes y por lo tanto generan el mismo espacio que $q^1, \dots, q^k$.
>>4. Por otro lado $$A = QR = \begin{bmatrix} Q_1 & Q_2 \end{bmatrix} \begin{bmatrix} R_1 \\ 0 \end{bmatrix} = Q_1 R_1$$
>>5. Entonces $\text{Im}(A) = \text{Im}(Q_1)$ pues $R_1$ es de rango $n$ (osea rango completo)
>>6. Además $A^T Q_2 = R_1^T Q_1 ^{T}Q_2 = 0$ implica que $\text{Im}(Q_2) \subseteq \text{Ker}(A^T)$. 
>>7. La otra inclusion sea $x\in Ker(A^{T})\iff A^{T}x=0\iff R_{1}Q_{1}^{T}x=0\iff Q_{1}^{T}x=0$    (DUDA)
>>8. y siempre vale (anlisis funcional) $Ker(A^{T}) = \text{Im}(A^{*})^\perp=Im(A^{TT})^{\perp}=Im(A)^{\perp}$
>>9. Se dirá que $A = Q_1 R_1$ es la factorización QR reducida de $A$. Bajo ciertas hipótesis esta factorización es única. 

>[!Theorem] DUDA
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $n$ (DONDE USO rango $n$ en todo esto. en Givens no , en HouseHolder?), entonces la factorización QR reducida $A = Q_1 R_1$ es única si $Q_1 \in \mathbb{R}^{m \times n}$ tiene columnas ortonormales y $R_1$ es triangular superior con elementos diagonales positivos (la parte de ortonormal y triang sup no es por el algoritmos de QR per se DUDA) . Más aún, $R_1$ es el factor de Cholesky de $A^T A$.
>>[!Proof]-
>>1. $A^T A = R_1^T Q_1^T Q_1 R_1 = R_1^T R_1$ con $R_1$ triangular superior con elementos diagonales positivos. 
>>2. Entonces, por la unicidad de la descomposición de Cholesky, se obtiene que $R_1$ es el factor de Cholesky de $A^T A$. 
>>3. Además $Q_1 = A R_1^{-1}$ también es única.

## Cuadrados minimos usando QR

>[!Remark] DUDA
>Por lo tanto, para resolver el problema de cuadrados mínimos realizamos una descomposición QR de $A \in \mathbb{R}^{m \times n}$. Si $A$ tiene rango $n$  , entonces se obtendrá
>$$Q^T A = \left[ \begin{array}{c} R_1 \\ 0 \end{array} \right], \quad Q^T b = \left[ \begin{array}{c} Q_1^T b \\ Q_2^T b \end{array} \right] = \left[ \begin{array}{c} c \\ d \end{array} \right]$$
>donde $R_1 \in \mathbb{R}^{n \times n}$ es triangular superior con elementos diagonales positivos (posiblemente 0) , $c \in \mathbb{R}^n$ y $d \in \mathbb{R}^{m-n}$. 
>Entonces $$\|Ax - b\|_2^2 = \|Q^T A x - Q^T b\|_2^2 = \left\| \left[ \begin{array}{c} R_1 x - c \\ -d \end{array} \right] \right\|_2^2 = \|R_1 x - c\|_2^2 + \|d\|_2^2$$
>De esta manera, si $R_1 x̂ = c$ entonces $x̂$ es solución de minimizar $\|Ax - b\|_2$ y el residuo mínimo es $\|Ax̂ - b\|_2 = \|d\|_2$.

## QR con Gram-Schmidt

>[!Remark]
>Otra forma de calcular la descomposición QR de una matriz es usando la clásica ortonormalización de Gram-Schmidt: dados $a^1, \dots, a^n$ linealmente independientes con $a^j \in \mathbb{R}^m$, construyo $q^1, \dots, q^n$ ortonormales tales que $r_{11} = \|a^1\|_2$, $q^1 = \frac{1}{r_{11}} a^1$ y para $j = 2, \dots, n$ defino
>$$r_{ij} = (q^i)^T a^j \quad \text{para} \quad i = 1, \dots, j-1$$
>$$\tilde{q}^j = a^j - \sum_{i=1}^{j-1} r_{ij} q^i$$
>$$r_{jj} = \|\tilde{q}^j\|_2, \quad q^j = \frac{1}{r_{jj}} \tilde{q}^j$$
>Y ademas se cumple que $sp\{ a^{1},\ldots a^{n} \}=sp\{ q^{1},\ldots q^{n} \}$ por lo tanto si $A = [a^1 \dots a^n], Q = [q^1 \dots q^n]$ entonces
>$$a^j = \sum_{i=1}^{j} r_{ij} q^i = Q\left[ \begin{array}{c} r_{1j} \\ \vdots \\ r_{jj} \\ 0 \\ \vdots \\ 0 \end{array} \right].$$
>Luego $A = QR$ con $R \in \mathbb{R}^{n \times n}$ triangular superior con elementos diagonales no negativos. 

## Grahm Schmidt modificado
queda entender

## QR Con permutacion
>[!Remark]
>Si $A \in \mathbb{R}^{m \times n}$ tiene rango $p < n$, la descomposición QR podría generar $R$ con $r_{jj} = 0$ para algún $j$ con $1 \leq j \leq p$. Esto sucede cuando las primeras $p$ columnas de $A$ son linealmente dependientes.

^fdae5f


QR con permutacion entender
Reducir error en QR entender

## Cuadrados minimos usando QR con permutacion

>[!Remark]
>Por lo tanto, para resolver el problema de cuadrados mínimos con $A \in \mathbb{R}^{m \times n}$ de rango $p < n$ (no es menor que minimo entre n y m ?) 
>1. Se usa [[#^fdae5f]] para obtener descomposicion QR 
>2. Entonces esta descomposicion cumple
>$$Q^T A P = \begin{bmatrix} R_{11} & R_{12} \\0 & 0\end{bmatrix},\quad Q^T b = \begin{bmatrix} c \\ d \end{bmatrix}$$
>3. Con $R_{11} \in \mathbb{R}^{p \times p}$ triangular superior con elementos diagonales positivos, $R_{12} \in \mathbb{R}^{p \times (n - p)}$, $c \in \mathbb{R}^p$, $d \in \mathbb{R}^{m - n}$ y los bloques de ceros son de dimensión $(m - p) \times p$ y $(m - p) \times (n - p)$, pudiendo no existir alguno de ellos si $p = m$ o $p = n$. Considerando la partición
>$$P^T x = \begin{bmatrix} y^1 \\ y^2 \end{bmatrix}$$
>con $y^1 \in \mathbb{R}^p$ y $y^2 \in \mathbb{R}^{n - p}$
>3.Como $PP^T = I$ se tiene que
>$$Q^T A P P^T x - Q^T b \|_2^2 = \left\| \begin{bmatrix} R_{11}y^1 + R_{12}y^2 - c \\ -d \end{bmatrix} \right\|_2^2 = \left\| R_{11}y^1 + R_{12}y^2 - c \right\|_2^2 + \left\| d \right\|_2^2$$
>4. De esta manera, si $y^2 = 0$ y $R_{11}y^1 = c$
>5. Entonces $\hat{x} = P y^1$ es solución de minimizar $\| Ax - b \|_2$ y el residuo mínimo es $\| Ax - b \|_2 = \| d \|_2$