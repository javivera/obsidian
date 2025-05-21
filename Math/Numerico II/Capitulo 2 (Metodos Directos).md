---
dateCreated: 2024-11-12,21:32
---
# Sistema definido positivo

>[!Definition]
>Se dirá que $A \in \mathbb{R}^{n \times n}$ es definida positiva si $x^T A x > 0$ para todo $x \in \mathbb{R}^n$, $x \neq 0$

>[!Remark]
>Usando la definición, es fácil ver que si $A \in \mathbb{R}^{n \times n}$ es definida positiva, entonces
>- (a)  $a_{ii} > 0, \quad i = 1, \dots, n$.
>- (b)  Las submatrices principales  
>$$  
>A_k = \begin{bmatrix} 
>a_{11} & \dots & a_{1k} \\ 
 \vdots\\
>a_{k1} & \dots & a_{kk} 
>\end{bmatrix}  
>$$  
>son definidas positivas para $k = 1, \dots, n$.
>- (c)  Si $X \in \mathbb{R}^{n \times m}$ tiene rango $m$ (i.e., tiene columnas linealmente independientes) entonces $B = X^T A X$ es definida positiva.

^9e9e9c

>[!Definition]
Se dirá que $A \in \mathbb{R}^{n \times n}$ es simétrica si $A^T = A$ y antisimétrica si $A^T = -A$.

>[!Remark]
>Dada una matriz arbitraria $A \in \mathbb{R}^{n \times n}$, uno siempre puede realizar la siguiente descomposición
>$$ A = \frac{1}{2} (A + A^T) + \frac{1}{2} (A - A^T) = A_S + A_N $$
>donde $A_S$ es la parte simétrica de $A$, pues $A_S^T = A_S$, y $A_N$ es la parte antisimétrica de $A$, pues $A_N^T = -A_N$.

>[!Remark]-
Hay que resaltar que una matriz definida positiva no debe ser necesariamente simétrica. En la literatura, algunos autores asumen que las matrices definidas positivas deben ser simétricas, la justificación para hacer tal suposición viene del siguiente resultado.

>[!Proposition]
>$A$ es definida positiva si y solo si su parte simétrica $A_S$ es definida positiva.
>>[!Proof]-
>>1. Note que $x^T A x = x^T A_S x + x^T A_N x$ y
>>$$\begin{align}
>>x^T A_N x &= \frac{1}{2} x^T (A - A^T) x = \frac{1}{2} (x^T A x - x^T A^T x) \\
>>&= \frac{1}{2} (x^T A x - (x^T A^T x)^T) = \frac{1}{2} (x^T A x - x^T A x) = 0,
>>\end{align}$$
>>2. Donde usamos que la transpuesta de un escalar es el mismo. De aquí, concluimos que $x^T A x > 0$ si y solo si $x^T A_S x > 0$.

>[!Remark]
Una caracterización importante de este tipo de matrices viene de comparar la forma cuadrática $x^T A x$ con $x^T x$.

>[!Theorem]
>$A \in \mathbb{R}^{n \times n}$ es definida positiva si y solo si existe $\alpha > 0$ tal que $$x^T A x \geq \alpha \|x\|_2^2,$$ para todo $x \in \mathbb{R}^n$.
>>[!Proof]-
>>1. Si $A$ es definida positiva entonces $A_S$ es definida positiva.
>>2. Como $A_S$ es simétrica, entonces existen $V, \Lambda \in \mathbb{R}^{n \times n}$ tales que $\Lambda$ es diagonal con entradas $\lambda_1, \dots, \lambda_n$, $V^T V = I$ y $V^T A_S V = \Lambda$. 
>>3. Defino $\alpha = \min_{1 \leq i \leq n} \lambda_i$. 
>>4. Entonces existe $z \in \mathbb{R}^n$ con $\|z\|_2 = 1$ (autovector de $A$) tal que $A_{S}z = \alpha z$
>>5. Por lo tanto $0 < z^T A_S z = z^T (\alpha z) = \alpha \|z\|_2^2 = \alpha$. 
>>6. Además, dado $x \in \mathbb{R}^n$ existe $y \in \mathbb{R}^n$ tal que $x = V y$. 
>>7. Entonces
>>$$ \begin{align}
>>x^T A x = x^T A_S x &= y^T V^T A_S V y = y^T \Lambda y = \sum_{i=1}^{n} \lambda_i y_i^2, \\
>>\geq \alpha \sum_{i=1}^{n} y_i^2 &= \alpha y^T y = \alpha y^T V^T V y = \alpha x^T x=\alpha \lVert x \rVert _{2}^{2} 
>>\end{align}$$
>>8. Para la vuelta, claramente, si existe $\alpha > 0$ tal que $x^T A x \geq \alpha \|x\|_2^2$ para todo $x$ 
>>9. Entonces $A$ es definida positiva.

>[!Remark]-
>Note que si $A$ es definida positiva y $A y = 0$, entonces $y = 0$. Por lo tanto, usando el Teorema 1.2 se obtiene que si $A$ es definida positiva entonces el sistema $A x = b$ tiene solución.

## Descomposición de Cholesky

>[!remark]
>Supongamos que dados $b \in \mathbb{R}^n$ y $A \in \mathbb{R}^{n \times n}$ simétrica y definida positiva, se desea hallar $x \in \mathbb{R}^n$ tal que $A x = b$.
>Una estrategia para resolver este sistema lineal consiste en calcular $G \in \mathbb{R}^{n \times n}$ triangular superior tal que $A = G^T G$. De esta forma, si $y$ es solución entonces 
$$b = A x = G^T G x = G^T y \quad \text{con} \quad y = G x$$
Por lo tanto, para resolver $A x = b$, resuelvo los sistemas triangulares $G^T y = b$ y $G x = y$. Veamos que dicha descomposición es posible.

>[!Theorem] Descomposicion de Cholesky
>Sea $A \in \mathbb{R}^{n \times n}$ simétrica y definida positiva. Entonces existe una única $G \in \mathbb{R}^{n \times n}$ triangular superior con elementos diagonales positivos tal que $A = G^T G$.
>>[!Proof]-
>>(Existencia) 
>>1. Se usará inducción en $n$. Si $n = 1$, entonces $A = a_{11} > 0$. Definiendo $G = g_{11} = \sqrt{a_{11}}$, vale que $A = G^T G$.
>>2. Suponga que la descomposición vale para matrices en $\mathbb{R}^{(n-1) \times (n-1)}$. 
>>3. Sea $A \in \mathbb{R}^{n \times n}$. Considere la siguiente expresión por bloques:
>>$$
>>A = \begin{bmatrix}
>>a_{11} & h^T \\
>>h & \hat{A}
>>\end{bmatrix}, \quad a_{11} > 0, \quad h \in \mathbb{R}^{n-1}, \quad \hat{A} \in \mathbb{R}^{(n-1) \times (n-1)}.
>>$$
>>4. chl. Defina $g_{11} = \sqrt{a_{11}}$, $s= \frac{1}{g_{11}}h$, y $\tilde{A} = \hat{A}^T - ss^T$. Entonces,
>>$$\begin{bmatrix} g_{11} & 0 \\ s & I\end{bmatrix}\begin{bmatrix}1 & 0 \\ 0 & \tilde{A}\end{bmatrix} \begin{bmatrix}g_{11} & s^T \\ 0 & I\end{bmatrix} = \begin{bmatrix}g_{11}^2 & g_{11} s^T \\g_{11}s & \tilde{A}+ss^T \end{bmatrix} = A\quad\text{(2.1) }$$
>>Claramente, la matriz $$X = \begin{bmatrix} g_{11} & s^T \\0 & I\end{bmatrix}^{-1}$$
>> existe. 
>>5. Como $X$ es no singular, usando (2.1), se obtiene que
>> $$X^T A X = \begin{bmatrix}1 & 0 \\0 & \tilde{A}\end{bmatrix}$$
>>que es definida positiva por [[#^9e9e9c]] (c) por que $X$ es inversible y por lo tanto sus columnas son linealmente independientes 
>>6. Además $\tilde{A}$  es simétrica por construcción entonces $X^{T}AX$ también es simétrica (y ya teníamos que era def positiva) luego por ej5 pr1 toda submatriz es def pos
>>7. Por lo tanto, $\tilde{A}$ es definida positiva.
>>8. Finalmente usando hipótesis inductiva en $\tilde{A}$  se obtiene la existencia de $\hat{G} \in \mathbb{R}^{(n-1) \times (n-1)}$ tal que $\tilde{A} = \hat{G}^T \hat{G}$.
>>Reemplazando en (2.1), se tiene que
>>$$  \begin{align}A &= \begin{bmatrix} g_{11} & 0 \\s & I\end{bmatrix} 
>>\begin{bmatrix}1 & 0 \\0 & \tilde{G}^T\end{bmatrix}
>>\begin{bmatrix}1 & 0 \\0 & \tilde{G}\end{bmatrix}
>>\begin{bmatrix}g_{11} & s^T \\0 & I\end{bmatrix}\\
>>&= \begin{bmatrix}g_{11} & 0 \\s & \tilde{G}^T\end{bmatrix}
>>\begin{bmatrix}g_{11} & s^T \\0 & \tilde{G}\end{bmatrix} \\
&= G^T G\end{align}$$
>>con $G \in \mathbb{R}^{n \times n}$ triangular superior con elementos diagonales positivos.
>>
>>(Unicidad)
>>1. Supongamos que existen $G_1, G_2 \in \mathbb{R}^{n \times n}$ triangulares superiores con elementos diagonales positivos tales que $A = G_1^T G_1 = G_2^T G_2$. 
>>2. Entonces $G_2^{-T} G_1^{T} = G_2 G_1^{-1}$ siendo el término izquierdo triangular inferior y el derecho triangular superior 
>>(inversa de triangular superior es triangular superior) 
>>4. Por lo tanto, existe una matriz diagonal $D$ con $d_{ii} > 0$, $i = 1, \dots, n$, tal que $G_2^{-T} G_1^{T}= G_2 G_1^{-1} = D$
>>5. Como $$D^2 = DD^T = (G_2 G_1^{-1})(G_1G_2^{-1} ) = G_2 G_1^{-1} G_1 G_2^{-1} = I$$
>>6. usando que $d_{ii} > 0$, se obtiene que $d_{ii} = 1$. Por lo tanto, $D = I$ y en consecuencia $G_2 = G_1$. 

^a4401f

>[!Corollary] 
>$A \in \mathbb{R}^{n \times n}$ es simétrica y definida positiva si y solo si existe $G \in \mathbb{R}^{n \times n}$ triangular superior con elementos diagonales positivos tal que $A = G^T G$.
>>[!Proof]-
>>1. Ida es [[#^a4401f]]
>>1. Vuelta. Si $A = G^T G$ entonces $x^T A x = x^T G^T G x = \| G x \|_2^2$.   
>>2. Notar que $Gx=0$ si solamente si $x\in \ker G$ o $G=0$ 
>>3. Pero $G$ es inversible por que es triangular con diagonal distinta de 0 entonces tiene ker nulo 
>>4. Y no puede ser $G=0$ (matriz nula) por que es diagonal positiva por def Cholesky.
>>5. Por lo tanto $A$  es definida positiva
>>6. Y obviamente es simétrica $(G^{T}G)^{T}=G^{T}G$   

# Sistema indefinido

>[!Remark]
>Suponga que dados $b \in \mathbb{R}^n$ y $A \in \mathbb{R}^{n \times n}$ no singular, se desea 
>$$\text{Hallar } \quad x \in \mathbb{R}^n \quad\text{tal que}\quad A x = b$$
>Para resolver este tipo de sistema lineal, se usará el método de eliminación Gaussiana y la descomposición LU. Estos métodos pueden deducirse con las mismas herramientas teóricas aunque se diferencian en su implementación.

## Transformaciones de Gauss

>[!Remark] Transformaciones de Gauss
> Si uno desea transformar el vector
> $$\begin{bmatrix} x_1 \\ x_2 \end{bmatrix}$$
> con $x_1 \neq 0$ a un vector con $x_2 = 0$ sin modificar $x_1$, una operación matemática para realizarlo sería
> $$\begin{bmatrix}1 & 0 \\-\tau & 1\end{bmatrix}
> \begin{bmatrix}x_1 \\x_2\end{bmatrix}
> = \begin{bmatrix}x_1 \\0\end{bmatrix},$$
>donde $\tau = x_2 / x_1$. En general, si deseo transformar $x \in \mathbb{R}^n$, con $x_k \neq 0$, en un vector con $x_i = 0$ para $i = k + 1, \dots, n$ sin alterar $x_i$ para $i = 1, \dots, k$, defino la transformación de Gauss gss
>$$M_k = I - v^k (e^k)^T = I - 
>\begin{bmatrix} 0\\ \vdots \\0 \\\frac{x_{k+1}}{x_k} \\\vdots \\\frac{x_n}{x_k}\end{bmatrix}(e^{k} )^{T} 
>= \begin{bmatrix} 1 &  & & & &  \\& \ddots \\& & 1  \\ & &-\frac{x_{k+1}}{x_k} &1\\&&\vdots & &\ddots \\&&-\frac{x_n}{x_k}  &&&1 \end{bmatrix}$$
>donde $\nu_i^k = 0$ para $i = 1, \dots, k$, $\nu_i^k = x_i / x_k$ para $i = k + 1, \dots, n$ y $\nu^k$ es el $k$-ésimo vector canónico. Claramente,
>$$M_k x = x - v^{k}  (e^k)^T x = x - x_k v^k = 
>\begin{bmatrix}x_1 \\\vdots \\x_k \\x_{k+1} \\\vdots \\x_n \end{bmatrix}
>-\begin{bmatrix}0\\\vdots \\0 \\x_{k+1} \\\vdots \\x_n \end{bmatrix}
>= \begin{bmatrix}x_1 \\\vdots \\x_k \\0 \\\vdots \\0\end{bmatrix}$$
>Además, para cualquier $y \in \mathbb{R}^n$ con $y_k = 0$ se tendrá $M_k y = y - y_k \nu^k = y$.

>[!Remark]
>Los métodos que se verán se basan en aplicar una sucesión de transformaciones de Gauss $M_1, \dots, M_{n-1}$ tales que
>$$M_{n-1} \dots M_2 M_1 A = U$$
>con $U$ triangular superior. Para definir estas matrices, piense en una sucesión de matrices tal que $A_0 = A, A_k = M_k A_{k-1}$ y $U = A_n$, con la propiedad que
>$$A_k = \begin{bmatrix}U_k & V_k \\0 & W_k\end{bmatrix}, \quad U_k \in \mathbb{R}^{k \times k} \text{ triangular superior}$$
>con $W_k \in \mathbb{R}^{(n-k) \times (n-k)}$ y $V_k \in \mathbb{R}^{k \times (n-k)}$. Que es lo mismo que decir que los elementos $a_{ij}^{(k)}$ de $A_k$ cumplen $a_{ij}^{(k)} = 0$ si $j = 1, \dots, k, \; i = j + 1, \dots, n$

>[!Example]- Transformaciones de Gauss
>Sea $$A_0 = A = \begin{bmatrix}1 & 4 & 7 \\2 & 5 & 8 \\3 & 6 & 10\end{bmatrix}$$
>Para generar $A_1$ se debe definir $M_1$ que anule los elementos $a_{i1}^{(0)}$ con $i \geq 2$. Tomando $\nu^1 = [0, 2, 3]^T$, entonces
>$$M_1 = I - \nu^1 (e_1)^T = \begin{bmatrix}1 & 0 & 0 \\-2 & 1 & 0 \\-3 & 0 & 1\end{bmatrix} 
>\quad \text{y} \quad A_1 = M_1 A_0 = \begin{bmatrix}1 & 4 & 7 \\0 & -3 & -6 \\0 & -6 & -11\end{bmatrix}$$
>Como $a_{12}^{(1)} = 0$, $M_2$ dejará invariante la primera columna de $A_1$ por lo tanto se debe trabajar con su segunda columna. 
>Tomando $\nu^2 = [0, 0, 2]^T$, se obtiene
>$$M_2 = I - \nu^2 (e_2)^T = \begin{bmatrix}1 & 0 & 0 \\0 & 1 & 0 \\0 & -2 & 1\end{bmatrix}\quad \text{y} \quad A_2 = M_2 A_1 
>= \begin{bmatrix}1 & 4 & 7 \\0 & -3 & -6 \\0 & 0 & 1\end{bmatrix}$$

>[!Remark]
>En general, para $k = 1, \dots, n-1$ se puede generar $A_k = M_k A_{k-1}$ con la propiedad deseada si se define $M_k$ con $v^k$ tal que
>$$v_i^k = \begin{cases}0  & 1 \leq i \leq k, \\a_{ik}^{(k-1)}  / a_{kk}^{(k-1)} & k+1 \leq i \leq n\\  \\
\end{cases}$$
>(Donde $(k-1)$ hace referencia a que es un elemento de la matriz $(k-1)$-esima) 
>Note que este procedimiento está bien definido solo si $a_{k}^{(k-1)} \neq 0$ para $k = 1, \dots, n-1$. 
>Las entradas $a_{k-1}^{(k-1)}$ reciben el nombre de pivotes.
>Se verá a continuación en qué caso se puede afirmar que el procedimiento anterior está bien definido.

>[!Theorem]
>Si $A \in \mathbb{R}^{n \times n}$ satisface
>$$\det \begin{pmatrix}\begin{bmatrix}a_{11} & \cdots & a_{1k} \\\vdots & \ddots & \vdots \\a_{k1} & \cdots & a_{kk}\end{bmatrix} \end{pmatrix}\neq 0, \tag{2.2}$$
>para $k = 1, \dots, n-1$, entonces las transformaciones de Gauss $M_k$ están bien definidas para $k = 1, \dots, n - 1$.
>>[!Proof]-
>>1. Note que usando la definición de $v^k$ solo basta probar que $a_{kk}^{(k-1)}\neq 0$ para $k = 1, \dots, n-1$.
>>2. Usando inducción en $k$, si (2.2) vale para $k = 1$ entonces $a_{11}^{(0)}= a_{11} \neq 0$ y por lo tanto se puede definir $M_1$. 
>>3. Suponga que se tienen definidas $M_k$ para $k = 1, \dots, l-1$ y que vale (2.2) para $k = l$ (vale siempre que $k\leq n-1$ en particular vale para $k=l$)  
>>4. Entonces $\Gamma = M_{l-1} \dots M_1$ es una matriz triangular inferior con unos en la diagonal. (por def $M_{l}$ ) 
>>5. Usando los índices $I = \{1, \dots, l\}$ y $J = \{l + 1, \dots, n\}$, se tiene
>>$$A_{l-1} = \Gamma A = \begin{bmatrix} \Gamma_{II} & 0 \\ \Gamma_{JI} & \Gamma_{JJ} \end{bmatrix} \begin{bmatrix} A_{II} & A_{IJ} \\ A_{AI} & A_{JJ} \end{bmatrix}$$
>>6. Obteniendo que el bloque de $A_{l-1}$ con filas y columnas indexadas por $I$ es igual a $\Gamma_{II} A_{II}$ con $\Gamma_{}$ triangular inferior con unos en la diagonal. 
>>7. Entonces,
>>$$\det(A_{II}) =det(A_{II})det(\Gamma_{II})= \det(\Gamma_{II} A_{II})  = det(A_{(l-1)_{II}})=\det 
>>\begin{pmatrix}a_{11}^{(l-1)}  & \cdots & a_{1l}^{(l-1)}  \\0 & \ddots & \vdots \\0 & 0 & a_{ll}^{(l-1)} \end{pmatrix} = a_{11}^{(l-1)}\cdots a_{ll}^{(l-1)}$$
>>(Notar $det(\Gamma_{II})=1$) 
>>8. Como $\det(A_{II}) \neq 0$, pues vale (2.2) para $k = l$
>>9. Entonces $a_{ll}^{(l-1)} \neq 0$. Por lo tanto, se puede definir $M_l$.

^e9919e

## Eliminacion Gaussiana

>[!Remark]
>Para resolver el sistema $Ax = b$ aplicamos transformaciones de Gauss a un sistema equivalente $Ux = y$, donde
>$$y = M_{n-1} \dots M_2 M_1 b, \quad U = M_{n-1} \dots M_2 M_1 A$$
>Asi obtenemos el sistema $Ux = b$ con $U$ triangular superior. El cual podemos resolver  

## Descomposicion LU

>[!Remark]
>1. Se sabe que $U = M_{n-1} \dots M_2 M_1 A$ (Triangular superior) con $M_k = I - \nu^k (e^k)^T$ (triangular inferior) con unos en la diagonal. 
>2. Usando la estructura de $M_k$ se puede probar que su inversa es triangular inferior con unos en la diagonal, más aún, se puede ver que $M_k^{-1} = I + \nu^k (e^k)^T$ (en pr1). 
>3. Por lo tanto, si se define $$L = M_1^{-1} M_2^{-1} \dots M_{n-1}^{-1}$$
>4. Se obtiene que $L$ es triangular inferior con unos en la diagonal y $A = LU$. 
>5. De esta forma, si $x$ es solución de $Ax = b$, entonces $$b = Ax = LUx = Ly \quad \text{con} \quad y = Ux$$
>6. O sea, para resolver $Ax = b$, resuelvo los sistemas triangulares $Ly = b$ y $Ux = y$. 
>Usando [[#^e9919e]] garantizamos la existencia de una descomposición LU, veamos ahora que dicha descomposición es única.

>[!Corollary]
>Si $A \in \mathbb{R}^{n \times n}$ satisface (2.2) para $k = 1, \dots, n$, entonces la descomposición LU existe y es única. Además, $\det(A) = \det(U) = u_{11} \dots u_{nn}$.
>>[!Proof]-
>>1. (2.2) vale para $k = 1, \dots, n - 1$ entonces $A$ tiene descomposición LU. 
>>2. Como (2.2) vale para $k = n$ entonces $A$ es no singular.
>>3. Supongamos que $A$ tiene dos factorizaciones LU, i.e., $A = L_1 U_1 = L_2 U_2$. 
>>4. Como $U_1$ es no singular pues $\det(U_1) = \det(L_1 U_1) = \det(A)$ entonces $L_2^{-1} L_1 = U_2 U_1^{-1}$. 
>>5. Entonces $L_2^{-1} L_1$ es triangular superior (Porque $U_{1}^{-1}$ y $U_{2}$ lo son) triangular inferior y con unos en la diagonal. 
>>6. Por lo tanto $L_2^{-1} L_1 = I$. 
>>7. Concluyendo que $L_1 = L_2$ y $U_1 = U_2$. Además,
>>$$\det(A) = \det(LU) = \det(U) = u_{11} \dots u_{nn}$$

## Eliminacion gaussiana con permutacion filas

>[!Remark]
>1. En el paso $k$ se define $E_k$ matriz de permutación de fila $k$ con fila $l$ para un $l$ tal que
>$$|a_{lk}^{(k-1)}| = \max_{k \leq j \leq n} \left\{ |a_{jk}^{(k-1)}| \right\}$$
>2. Si el máximo entre esos elementos es cero, entonces $a_{jk}^{(k-1)} = 0$ para $j = k, \dots, n$. En este caso los elementos de la columna $k$ por debajo de la diagonal ya son nulos, siendo innecesaria la aplicación de $M_k$ y $E_k$. Matricialmente, es equivalente a suponer $M_k = E_k = I$.
>3. Por lo tanto, el algoritmo de eliminación Gaussiana con pivoteo puede describirse como una sucesión de $n - 1$ pasos, comenzando con $A_0 = A$ y $b^0 = b$, tal que en el paso $k$ se define
>$$A_k = M_k E_k A_{k-1}, \quad b^k = M_k E_k b^{k-1}$$
>Obteniendo $y = b^{n-1}$ y $U = A_{n-1}$. Por construcción, este método está bien definido para cualquier matriz $A$.
>4. Terminamos resolviendo $Ux=y$ que es equivalente a $Ax=b$

## Descomposicion LU con permutacion filas

>[!Theorem] DUDA
>Sea $A \in \mathbb{R}^{n \times n}$ y $U = M_{n-1} E_{n-1} \cdots M_2 E_1 M_1 E_1 A$ con $M_k$ y $E_k$ generadas por el método de eliminación Gaussiana con pivoteo. Entonces
>$$PA = LU$$
>donde
>$$P = E_{n-1} \cdots E_1, \quad L = I + \sum_{k=1}^{n-1} g^k (e^k)^T$$
>con $g^k = E_{n-1} \cdots E_{k+1} v^k$.
>>[!Proof]-
>>1. Usando que $E_k^2 = I$ note que
>>$$M_2 E_2 M_1 E_1 A = M_2 E_3 E_3 E_2 M_1 E_2 E_2 M_1 E_1 A = M_2 E_3 \cdots E_{n-1} E_{n-1}\ldots E_2 M_1 E_2 \cdots E_{n-1}E_{n-1} \ldots E_1 A$$
>>2. Definimos $P = E_{n-1} \cdots E_1, \quad \tilde{M}_k = E_{n-1} \cdots E_{k+1}M_{k}E_{k+1} \cdots E_{n-1}$ para $k=1,\ldots,n-2$ y $\tilde{M}_{n-1} = M_{n-1}$
>>4. Entonces $$\tilde{M}_{n-1} \cdots \tilde{M}_1 PA = U$$
>>5. Como $E_i$ permuta la fila $i$ con la fila $l$ con $l \geq i$, entonces
>>$$E_i = \begin{bmatrix} I & 0 \\ 0 & P \end{bmatrix}, \quad I \in \mathbb{R}^{(i-1)\times(i-1)}$$
>>6. Por lo tanto $(e^k)^T E_i = (e^k)^T$ si $k \leq i-1$, o equivalemente $k+1 \leq i$
>>7. Luego $$\tilde{M}_k = E_{n-1} \cdots E_{k+1} \left( I - \nu^k (e^k)^T \right) E_{k+1} \cdots E_{n-1} = I - g^k (e^k)^T$$ (notar que $E_{i}^{2}=I$) 
>>8. donde $g^k = E_{n-1} \cdots E_{k+1} v^k$. 
>>9. Entonces $$L = \tilde{M}_1^{-1} \cdots \tilde{M}_{n-1}^{-1} = I + \sum_{k=1}^{n-1} g^k (e^k)^T$$
