---
dateCreated: 2024-11-17,19:58
---
## Rotacion Givens

Copiar el proceso givens 2x2

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
>>Con $G_{m+1,m}=Id$  o $-1$  dependiendo si $g_{mm}$  positivo o negativo
>>1. y si $m > n$
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
>2. Como $Q$ preserva la norma 2, obtenemos que $\|x\|_2 = \|Qx\|_2 = \alpha$
>3. Entonces problema se reduce a hallar $Q$ tal que $Qx = \|x\|_2 e_1$. 
>4. Para llevar el vector $x$ al vector $\|x\|_2 e_1$, la reflexión deberá ser en la dirección $u = x - \|x\|_2 e_1$ por que
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

^e0aac1

## QR sin permutacion

>[!Remark] QR Householder DUDA
>1. Ahora, dada $A \in \mathbb{R}^{m \times n}$ se puede realizar una descomposición QR aplicando reflexiones de Householder por columnas. 
>2. Dado $I = \{j, \dots, m\}$ para el vector $$x = A_{Ij}^{(j)}  = \begin{bmatrix} a_{jj}^{(j)}  \\ \vdots \\ a_{mj}^{(j)}  \end{bmatrix}$$
>se construye $Q_j \in \mathbb{R}^{(m-j+1) \times (m-j+1)}$ tal que $Q_j = I - \rho uu^T$ con $u$ y $\rho$ dados por el [[#^e0aac1]]. Donde $A^{(j)}=\tilde{Q}_{j-1}\ldots \tilde{Q}_{1}A$  
>1. Definiendo $\tilde{Q}_j \in \mathbb{R}^{m \times m}$ tal que $$\tilde{Q}_j = I - \rho \tilde{u} \tilde{u}^T \quad \text{con} \quad \tilde{u} = \begin{bmatrix} 0  \\ u \end{bmatrix} \in \mathbb{R}^{m} \quad0\in \mathbb{R}^{j-1} $$
>Obs: Si se hacen las cuentas se llega a que $$\tilde{Q}_{j}= \begin{bmatrix} I & 0 \\0 & Q_{j} \end{bmatrix}$$
>5. Se van obteniendo $\tilde{Q}_j$ ortogonales con la propiedad que $$R = \tilde{Q}_p \dots \tilde{Q}_1 A, \quad p = \min\{m, n\}$$
>es triangular superior con elementos diagonales no negativos (pueden ser 0) 
>(Notar que alguans $\tilde{Q}$ podrian ser la identidad por que la matriz podria tener rango chico, menor que $\min\{ m,n \}$)  
>1. Por lo tanto $$Q  = \tilde{Q}_1 \dots \tilde{Q}_p$$
>2. Y finalmente $QR=A$ por [[#^34e2e0]] (d) 


>[!Theorem]
>Si $A = QR$ es una descomposición QR de $A \in \mathbb{R}^{m \times n}$ de rango $n$ (esto implica que $m\geq n$) y $A = [a^1 \dots a^n], \, a^j \in \mathbb{R}^m, Q = [q^1 \dots q^m], q^j \in \mathbb{R}^m$, entonces
>$$\text{span}\{a^1, \dots, a^k\} = \text{span}\{q^1, \dots, q^k\}$$
>para $k = 1, \dots, n$. 
>En particular si $Q = [Q_1 Q_2], Q_1 \in \mathbb{R}^{m \times n}$, entonces $\text{Im}(A) = \text{Im}(Q_1)$, $Im(A)^{\perp}=Im(Q_{2})$ y tomando $R = \begin{bmatrix} R_1 \\ 0 \end{bmatrix}, R_1 \in \mathbb{R}^{n \times n}$, se obtiene que $A = Q_1R_1$
>(Recordar $Q\in \mathbb{R}^{m\times m},\ R\in \mathbb{R}^{m\times n}$ asi que el 0 abajo de $R$ tiene tamanio $\mathbb{R}^{m-n\times 1}$ donde $n=rg(A)$ si fuese menor se ajusta todo) 
>>[!Proof]-
>>1. Comparando las columnas de $A = QR$ se obtiene que si $1 \leq k \leq n$ entonces 
>>$$a^k = Q \begin{bmatrix} r_{1k} \\ \vdots \\ r_{kk} \\ 0 \\ \vdots \\ 0 \end{bmatrix}= \sum_{j=1}^k r_{jk} q^j \in \text{span}\{q^1, \dots, q^k\}$$
>>(Aca usamos $R$ triangular superior)
>>1. Obteniendo que $\text{span}\{a^1, \dots, a^k\} \subset \text{span}\{q^1, \dots, q^k\}$
>>2. Como $A$ tiene rango $n$ (por hipotesis) los vectores $a^1, \dots, a^k$ son linealmente independientes y por lo tanto, por dimensiones, generan el mismo espacio que $q^1, \dots, q^k$.
>>3. Por otro lado $$A = QR = \begin{bmatrix} Q_1 \ \ Q_2 \end{bmatrix} \begin{bmatrix} R_1 \\ 0 \end{bmatrix} = Q_1 R_1$$
>>4. Entonces $\text{Im}(A) = \text{Im}(Q_1)$ pues $R_1$ es de rango $n$ por ser triangular sup con elementos diagonales positivos (osea rango completo)
>>5. Además $A^T Q_2 = R_1^T Q_1 ^{T}Q_2 = 0$ implica que $\text{Im}(Q_2) \subseteq \text{Ker}(A^T)$. 
>>6. La otra inclusion sea 
>>$$x\in Ker(A^{T})\iff A^{T}x=0\iff R_{1}Q_{1}^{T}x=0\iff Q_{1}^{T}x=0$$  
>>7. Y como $Q$ es de rango completo $\exists z$ tal que $x=Qz$ entonces $x=Q_{1}z_{1}+Q_{2}z_{2}$
>>Mostrando que $$\quad 0=Q_{1}^{T} x=Q_{1}^{T} (Q_{1}z_{1}+Q_{2}z_{2})=z_{1}$$
>>(Donde usamos que $Q_{1}^{T}Q_{1}=Id$ y $Q$ tiene columnas ortogonales)
>>8. Por lo tanto $x=Q_{2}z_{2}$ osea $x\in Im(Q_{2})$    
>>1. Por lo tanto $Im(Q_{2})=Ker(A^{T})$  
>>2. Luego como siempre vale (anlisis funcional) $Ker(A^{T}) = \text{Im}((A^{T})^{*})^\perp=Im(A^{TT})^{\perp}=Im(A)^{\perp}$
>>3. Entonces $Im(Q_{2})=Im(A)^{\perp}$  
>>4. Se dirá que $A = Q_1 R_1$ es la *factorización* QR reducida de $A$. Bajo ciertas hipótesis esta factorización es única. 

>[!Theorem] DUDA
>Sea $A \in \mathbb{R}^{m \times n}$ de rango $n$ (DONDE USO rango $n$ en todo esto. en Givens no , en HouseHolder?), entonces la factorización QR reducida $A = Q_1 R_1$ es única si $Q_1 \in \mathbb{R}^{m \times n}$ tiene columnas ortonormales y $R_1$ es triangular superior con elementos diagonales positivos (siempre $R$ es triangular superior, no siempre tiene elementos diagonales positivos). Más aún, $R_1$ es el factor de Cholesky de $A^T A$.
>>[!Proof]-
>>1. $A^T A = R_1^T Q_1^T Q_1 R_1 = R_1^T R_1$ con $R_1$ triangular superior con elementos diagonales positivos. 
>>2. Entonces, por la unicidad de la descomposición de Cholesky, se obtiene que $R_1$ es el factor de Cholesky de $A^T A$ y es unico
>>3. Además $Q_1 = A R_1^{-1}$ también es única.

## Cuadrados minimos usando QR (Sin permutacion) 

>[!Remark] DUDA
>Por lo tanto, para resolver el problema de cuadrados mínimos hacemos
>1. Descomposición QR de $A \in \mathbb{R}^{m \times n}$. Si $A$ tiene rango $n$ entonces se obtendrá
>$$Q^T A = \left[ \begin{array}{c} R_1 \\ 0 \end{array} \right], \quad Q^T b = \left[ \begin{array}{c} Q_1^T b \\ Q_2^T b \end{array} \right] = \left[ \begin{array}{c} c \\ d \end{array} \right]$$
>donde $R_1 \in \mathbb{R}^{n \times n}$ es triangular superior con elementos diagonales positivos (posiblemente 0) , $c \in \mathbb{R}^n$ y $d \in \mathbb{R}^{m-n}$. 
>2. Entonces $$\|Ax - b\|_2^2 = \|Q^T A x - Q^T b\|_2^2 = \left\| \left[ \begin{array}{c} R_1 x - c \\ -d \end{array} \right] \right\|_2^2 = \|R_1 x - c\|_2^2 + \|d\|_2^2$$
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

## QR Grahm Schmidt modificado
queda entender
## QR Con permutacion

>[!Remark] DUDA
>Si $A \in \mathbb{R}^{m \times n}$ tiene rango $p < n$ (DUDA no seria p menor que minimo entre n,m) , la descomposición QR podría generar $R$ con $r_{jj} = 0$ para algún $j$ con $1 \leq j \leq p$. Esto sucede cuando las primeras $p$ columnas de $A$ son linealmente dependientes
> Para evitar esto, se permutarán las columnas a fin de obtener $r_{jj} > 0$ para $1 \leq j \leq p$. Ya sea usando rotaciones de Givens o reflexiones de Householder, se pueden modificar los métodos para obtener $P \in \mathbb{R}^{n \times n}$ matriz de permutación tal que
>$$Q^T A P = \left[ \begin{array}{cc} R_{11} & R_{12} \\ 0 & 0 \end{array} \right]$$
>con $R_{11} \in \mathbb{R}^{p \times p}$ y $R_{12} \in \mathbb{R}^{p \times (n-p)}$.
>Para realizar esta modificación, suponga que luego del paso $j - 1$ se obtiene la matriz
>$$\left[ \begin{array}{cc} T & V \\ 0 & W \end{array} \right]$$
>con $T \in \mathbb{R}^{(j-1) \times (j-1)}$ y $W \in \mathbb{R}^{(m-j+1) \times (n-j+1)}$. Considere la partición por columnas $W = [w^j \dots w^n]$ y tome el índice $l$ tal que
>$$\|w^l\|_2^2 = \max_{j \leq k \leq n} \|w^k\|_2^2$$
>Si $\|w^l\|_2 = 0$, entonces se finaliza el procedimiento, pues $W = 0$ y en este caso se obtendrá que $A$ tiene rango $j - 1$. 
>Si $\|w^l\|_2 > 0$, se define $P_j \in \mathbb{R}^{n \times n}$ matriz de permutación de columnas $j$ y $l$.
>Luego, se procede de manera normal con el paso $j$ del método de descomposición QR elegido aplicado a la matriz
>$$\left[ \begin{array}{cc} T & V \\ 0 & W \end{array} \right] P_j$$
>De esta forma se obtendrá la descomposición deseada con $P = P_1 \dots P_r$. 
>Claramente $AP=QR$

^137bca

>[!Example]- QR Con permutacion
>Tenemos $$A = \begin{bmatrix}2 & 2 & 3 \\2 & 2 & 3 \\1 & 1 & 0\end{bmatrix}$$
>Como la primera columna tiene norma máxima, definimos $P_1 = I$.
>Luego $Q_1 = I - \rho_1 u_1 u_1^T$ con $u_1 = (1, -2, -1)^T$, $\rho_1 = 1/3$ y
>$$Q_1^T A P_1 = \begin{bmatrix} 3 & 3 & 2 \\ 0 & 0 & 2 \\ 0 & 0 & 1 \end{bmatrix}$$
>Mirando la norma de las columnas de la submatriz con filas y columnas indexadas por $\{2, 3\}$, obtenemos que hay que permutar las columnas 2 y 3. Luego de la permutación obtenemos que $Q_2 = I - \rho_2 u_2 u_2^T$ con $u_2 = (0, 1, 1/(2 - \sqrt{5}))^T$, $\rho_2 = (2 - \sqrt{5})^2/(5 - 2\sqrt{5})$ 
>$$Q_2^T Q_1^T A P_1 P_2 = \begin{bmatrix}3 & 2 & 3 \\0 & \sqrt{5} & 0 \\0 & 0 & 0\end{bmatrix}$$
>Obteniendo así una descomposición QR de $A$ con $r_{11}$ y $r_{22}$ positivos.

Reducir error en QR entender

## Cuadrados minimos usando QR (con permutacion)

>[!Remark]
>Por lo tanto, para resolver el problema de cuadrados mínimos con $A \in \mathbb{R}^{m \times n}$ de rango $p < n$ (no es menor que minimo entre n y m ?) 
>1. Se usa [[#^137bca]] para obtener descomposicion QR 
>2. Entonces esta descomposicion cumple
>$$Q^T A P = \begin{bmatrix} R_{11} & R_{12} \\0 & 0\end{bmatrix},\quad Q^T b = \begin{bmatrix} c \\ d \end{bmatrix}$$
>3. Con $R_{11} \in \mathbb{R}^{p \times p}$ triangular superior con elementos diagonales positivos, $R_{12} \in \mathbb{R}^{p \times (n - p)}$, $c \in \mathbb{R}^p$, $d \in \mathbb{R}^{m - n}$ y los bloques de ceros son de dimensión $(m - p) \times p$ y $(m - p) \times (n - p)$, pudiendo no existir alguno de ellos si $p = m$ o $p = n$. Considerando la partición
>$$P^T x = \begin{bmatrix} y^1 \\ y^2 \end{bmatrix}$$
>con $y^1 \in \mathbb{R}^p$ y $y^2 \in \mathbb{R}^{n - p}$
>3.Como $PP^T = I$ se tiene que
>$$\|Q^T A P P^T x - Q^T b \|_2^2 = \left\| \begin{bmatrix} R_{11}y^1 + R_{12}y^2 - c \\ -d \end{bmatrix} \right\|_2^2 = \left\| R_{11}y^1 + R_{12}y^2 - c \right\|_2^2 + \left\| d \right\|_2^2$$
>4. De esta manera, si $y^2 = 0$ y $R_{11}y^1 = c$
>5. Entonces $\hat{x} = P y^1$ es solución de minimizar $\| Ax - b \|_2$ y el residuo mínimo es $\| Ax - b \|_2 = \| d \|_2$

## Ecuacion Normal

>[!Proposition]
>Para cualquier $A \in \mathbb{R}^{m \times n}$, $\bar{x}$ es solución de
>$$\min_{x \in \mathbb{R}^n} \frac{1}{2} \|Ax - b\|^2$$
>si y solo si
>$$A^T A \bar{x} = A^T b$$
>>[!Proof]-
>>1. Se sabe que si $\bar{x}$ es un minimizador de $f$ entonces $0 = \nabla f(\bar{x})$
>>2. Como $\nabla f(x) = A^T(Ax - b)$ entonces el minimizador $\bar{x}$ tiene que ser solución del sistema lineal
>>$$A^T A \bar{x} = A^T b$$
>>1. (Vuelta) Suponga ahora que $A^T A \bar{x} = A^T b$ y tome $x \in \mathbb{R}^n$ arbitrario. 
>>2. Entonces 
>>$$\begin{align}\|Ax - b\|^2_{2} & = \|A(x - \bar{x}) + A\bar{x} - b\|^2_{2} \\ & = \|A(x - \bar{x})\|^2_{2} + 2(x - \bar{x})^T A^T (A\overline{x}  - b) +\lVert A\overline{x} -b \rVert _{2}^{2} \\& \geq \|A\overline{x}  - b\|^2_{2}\end{align}$$
>>donde se usó que $\|A(x - \bar{x})\|^2 \geq 0$ y $A^T (A\overline{x} - b) = A^T A \bar{x} - A^T b = 0$. 
>>4. Por lo tanto, $\bar{x}$ es solución del problema de minimización.

>[!Remark]-
>Si $A \in \mathbb{R}^{m \times n}$, entonces $A^T A$ es una matriz simétrica y semidefinida positiva, por lo tanto se puede hallar $\bar{x}$ resolviendo la ecuación normal mediante una descomposición de Cholesky si $A$ tiene rango completo o una versión con permutaciones en caso que $A$ tenga rango deficiente, tal variante puede verse en \cite{2}, Subsección 4.2.9. Lamentablemente el número de condición de $A^T A$ puede ser muy grande comparado con el $A$, mientras que el número de condición de $R_1$ (donde $A = Q_1 R_1$) es igual al de $A$. Por lo tanto, la ecuación normal es importante desde el punto de vista analítico del problema de cuadrados mínimos, pero no se recomienda utilizarlo como herramienta numérica para resolver el problema.

## Minimizacion Lineal

>[!Theorem]
>Si $A \in \mathbb{R}^{m \times n}$ y $b \in \mathbb{R}^m$, entonces $\bar{x} \in \mathbb{R}^n$ es solución de
>$$\min_{x \in \mathbb{R}^n} \|Ax - b\|_{1}, \tag{4.1}$$
>si y solo si $(\bar{x}, \bar{y}) \in \mathbb{R}^n \times \mathbb{R}^m$ es solución de
>$$\begin{align}&\min_{(x, t)} \quad \quad\quad e^{T} y \\& \text{sujeto a}\quad \begin{bmatrix}A & -I \\-A & -I\end{bmatrix}\begin{bmatrix}x \\y\end{bmatrix}\leq\begin{bmatrix}b \\-b\end{bmatrix}\end{align}\tag{4.2}$$
>donde $e = (1, \dots, 1)^T \in \mathbb{R}^m$.
>>[!Proof]-
>>$(\Rightarrow)$
>>1. Considere la partición por columnas $A^T = [a^1 \cdots a^m]$. 
>>1. Note que $(x, y)$ es factible para (4.2) si y solo si $-y \leq Ax - b \leq y$ (resolviendo el sistema de sujeto a)  
>>2. Esto es equivalente a $| (a^i)^T x - b_i | \leq y_i$ para $i = 1, \dots, m$. 
>>3. Si $\bar{x}$ solución de (4.1), definiendo $\overline{y}_i = |(a^i)^T \bar{x} - b_i|$ se obtiene que $(\bar{x}, \bar{y})$ es factible para (4.2). 
>>4. Además, para cualquier $(x, y)$ factible para el problema (4.2) sucede 
>>$$\begin{align} e^T \overline{y}  &= \sum_{i=1}^m \overline{y}_{i}  = \sum_{i=1}^m |(a^i)^T \bar{x} - b_i|  \\ &= \| A \bar{x} - b \|_1  \\ (\text{por ser }\overline{x} \text{ minimizador})&\leq \lVert Ax-b \rVert_{1}\\\text{(por ser (x,y) factible) } &= \sum_{i=1}^m |(a^i)^T x - b_i| \leq \sum_{i=1}^m y_i  \\ &= e^T y\end{align}$$
>>5. Obteniendo que $(\bar{x}, \bar{y})$ es solución de (4.2).
>>
>>$(\Leftarrow)$  
>>1. Consideremos ahora que $(\bar{x}, \bar{y})$ es solución de (4.2) entonces es factible por lo tanto $\rvert(a_{i})^{T}\overline{x}-b_{i}\rvert\leq \overline{y}_{i}$
>>2. Sea $x \in \mathbb{R}^n$ arbitrario. Definiendo $y_i = |(a^i)^T x - b_i|$ entonces $(x, y)$ es factible para el problema (4.2) ademas
>>$$\|A \overline{x}  - b\|_1 \leq \sum^{n}_{n=1} \overline{y} _{i}= e^T \overline{y}  \leq e^T y = \|A x - b\|_1$$
>>(La primera desigualdad vale por 1. y la segunda vale por ser $\overline{y}$ minimizador) 
>>7. Concluyendo que $\bar{x}$ es solución de (4.1)

>[!Theorem]
>Si $A \in \mathbb{R}^{m \times n}$ y $b \in \mathbb{R}^m$, entonces $\bar{x} \in \mathbb{R}^n$ es solución de
>$$\min_{x \in \mathbb{R}^n} \| A x - b \|_\infty, \tag{4.3}$$
>si y solo si $(\bar{x}, t) \in \mathbb{R}^n \times \mathbb{R}$ es solución de
>$$\begin{align}&\min_{(x,t)} \quad \quad \quad t \\ &\text{sujeto a} \quad\left[ \begin{array}{cc}A & -e \\-A & -e\end{array} \right]\left[ \begin{array}{c}x \\t\end{array} \right]\leq\left[ \begin{array}{c}b \\-b\end{array}\right]\end{align} \tag{4.4}$$
>donde $e = (1, \dots, 1)^T \in \mathbb{R}^m$.
>>[!Proof]-
>>$(\Rightarrow)$  
>>1. Considere $A^T = [a^1 \cdots a^m]$. 
>>2. $(x,t)$ es factible para el problema (4.4) si y solo si $-t e \leq A x - b \leq t e$ si y solo si $|(a^i)^T x - b_i| \leq t\quad\forall i=1,\ldots,n$ equivalentemente $\| A x - b \|_\infty \leq t$.
>>3. Si $\bar{x}$ solución de (4.3) definimos $\overline{t} = \| A \bar{x} - b \|_\infty$
>>4. Entonces $(\bar{x}, \overline{t})$ es factible para (4.4). 
>>5. Ademas si $(x,t)$ arbitrario es factible para (4.4) se tiene que
>>$$\overline{t}  = \|A \bar{x} - b \|_\infty \leq \| A x - b \|_\infty \leq t$$
>>3. Mostrando que $(\bar{x}, \overline{t})$ es solución de (4.4)
>>
>>$(\Leftarrow)$
>>1. Sea $(\bar{x}, \overline{t})$ es solución de (4.4), 
>>2. Para $x \in \mathbb{R}^n$ arbitrario defina $t = \| A x - b \|_\infty$ entonces $(x,t)$ es factible para (4.4) 
>>3. Luego
>>$$\| A \bar{x} - b \|_\infty \leq \overline{t} \leq t \leq \| A x - b \|_\infty = t$$
>>(Devuelta la primera desigualdad por ser factible $(\overline{x},\overline{t})$ la segunda por ser $\overline{x}$ minimizador) 
>>1. Concluyendo que $\bar{x}$ es solución de (4.3)

