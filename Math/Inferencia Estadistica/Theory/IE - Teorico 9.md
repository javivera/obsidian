>[!Lemma] Resultados sobre covarianza multivariable
>Sean $Z: \Omega \to \mathbb{R}^d$ y $W: \Omega \to \mathbb{R}^m$ vectores aleatorios tales que $E(\|Z\|^2) < \infty$, $E(\|W\|^2) < \infty$ y $E(|Z_i W_j|) < \infty$ para todo $i \in \{1, \dots, d\}, j \in \{1, \dots, m\}$.
>Entonces se cumple:
> - a) Si $Z, W$ son independientes $\implies Cov(Z, W) = O_{d \times m}$.
> - b) Si $A \in \mathbb{R}^{\tilde{d} \times d}$, $B \in \mathbb{R}^{\tilde{m} \times m}$, $a \in \mathbb{R}^{\tilde{d}}$, $b \in \mathbb{R}^{\tilde{m}}\implies Cov(AZ+a, BW+b) = A Cov(Z,W) B^T$.
> - c) $Cov(Z,Z) = V(Z)$ y $Cov(Z,W) = (Cov(W,Z))^T$.
> - d) Si $d=m$, $Var(Z+W) = V(Z) + V(W) + 2 Cov(Z,W)$.
>>[!Proof]
>>c) $$\begin{align}V(X)& = \Sigma_X \\ &= E[(X-EX)(X-EX)^t]\\&= E[(AZ+\mu-\mu)(AZ+\mu-\mu)^t]\\& = E[(AZ)(AZ)^t]\\&= E[AZZ^tA^t] \\&= A E[ZZ^t] A^t\\&(*)=AA^{T}\end{align}$$

^437107

>[!Lemma] Esperanza saca matrices
>Sea $Z: \Omega \to \mathbb{R}^d$ un vector aleatorio, $B \in \mathbb{R}^{\tilde{d} \times d}$, $b \in \mathbb{R}^{\tilde{d}}$ y sea $Y = BZ+b$.
>Entonces:
> - a) Si $E(\|Z\|^2) < \infty$ entonces $$\Sigma_Z = V(Z) = Cov(Z,Z) = E[(Z-EZ)(Z-EZ)^t]$$ es una matriz simétrica y semidefinida positiva.
> - b) Si $E(\|Z\|^2) < \infty$ entonces $EY = B(EZ)+b$.
> - c) Si $X$ es un vector normal multivariado, $X: \Omega \to \mathbb{R}^d$, es decir $X \sim AZ+\mu$ donde $A \in \mathbb{R}^{d \times m}$, $\mu \in \mathbb{R}^d$, $Z=(Z_1, \dots, Z_m)$ con $Z_i \sim N(0,1)$ independientes?. Entonces $EX = \mu$ y $V(X) = \Sigma_X = AA^T$.
>>[!Proof]-
>>a) 
>>Simetria
>>1. $\Sigma_Z = E[(Z-EZ)(Z-EZ)^t]$
>>2. Entonces $$\begin{align}\Sigma_Z^t &= E[((Z-EZ)(Z-EZ)^t)^t]\\&= E[((Z-EZ)^t(Z-EZ))]\\&= E[(Z-EZ)(Z-EZ)^t] \quad \text{ (Conmutan por que son la misma matriz traspuesta)}\\&= \Sigma_Z\end{align}$$
>>Mostrando la simetria
>>Definida Positiva
>>3. Sea $a \in \mathbb{R}^d$. $$\begin{align}a^t \Sigma_Z a &= E[a^t(Z-EZ)(Z-EZ)^t a]\\&= E[(a^t(Z-EZ))(a^t(Z-EZ))]\quad (*) \\&= E[(a^t(Z-EZ))^2]\\&= V(a^t(Z-EZ)) \ge 0\end{align}$$
>>$(*)$ Vale por que  $E[a^t(Z-EZ)] = a^t E[Z-EZ] = 0$.
>>Mostrano que la matriz es semidefinida positiva, y por lo tanto su determinante es no negativo.
>>
>>b)
>>4. Tenemos que $Y = BZ+b \quad EY = \begin{pmatrix} EY_1 \\ \vdots \\ EY_{\tilde{d}} \end{pmatrix}$
>>5. Luego $Y_j = \sum_{i=1}^d B_{ji} Z_i + b_j$ entonces $EY_j = \sum_{i=1}^d B_{ji} (EZ_i) + b_j$
>>6. Por lo tanto concluimos $EY = BEZ+b$
>>c)
>>7. $X \sim AZ+\mu$ por lo tanto $EX = E[AZ+\mu] = AEZ+\mu$
>>8. Como $Z_i \sim N(0,1)$, $EZ=0$, entonces $EX = A \cdot 0 + \mu = \mu$.
>>9. $$V(X)= Cov(AZ+\mu ,AZ+\mu )= ACov(Z,Z)A^{T} =AA^{T} $$
>>Como los $Z_i$ son iid $N(0,1)$ la matriz covarianza es la identidad. Ósea varianza en diagonal y 0 extra diagonal por independencia

^2fefa2

>[!Remark] Notacion
>Si $X$ es un vector normal multivariado. O sea $X \sim AZ+\mu$, con $Z \in \mathbb{R}^m$, $Z=(Z_1, \dots, Z_m)$ iid $Z_i \sim N(0,1)$ $\mu \in \mathbb{R}^d$ y $A \in \mathbb{R}^{d \times m}$.Entonces se denota $$X \sim N_d(\mu, \Sigma_X )\quad\text{ con } \mu=E(X)\quad\Sigma_{X}=V(X) $$

>[!Remark]
>Si $\Sigma$ es una matriz simétrica, por el Teorema Espectral se puede descomponer como $$\Sigma = P \Delta P^T$$
>con $P$ una matriz ortonormal (es decir, $PP^T=I=P^T P$ y $P^{-1}=P^T$) y $\Delta$ una matriz diagonal con los autovalores de $\Sigma$.
>Cada autovalor $\lambda_j$ está asociado con un autovector $v_j$. Las columnas de $P$ son los autovectores $v_j$.
>Entonces, la matriz $P^T$ tiene a los autovectores transpuestos como filas, y la matriz $\Delta$ es:
>$$P^T = \begin{pmatrix} \text{---} & v_1^T & \text{---} \\ & \vdots & \\ \text{---} & v_d^T & \text{---} \end{pmatrix} \quad \Delta = \begin{pmatrix} \lambda_1 & & 0 \\ & \ddots & \\ 0 & & \lambda_d \end{pmatrix}$$
>La descomposición puede escribirse como una suma:
>$$\Sigma=P^T \Delta P= \begin{pmatrix} \cdots & v_1^T & \cdots \\ & \vdots & \\ \cdots & v_d^T & \cdots \end{pmatrix}  \begin{pmatrix} \lambda_1 & & 0 \\ & \ddots & \\ 0 & & \lambda_d \end{pmatrix}\begin{pmatrix}  & \vdots& &\vdots& \\ & v_{1}&\cdots&v_{d} \\ \ &\vdots& &\vdots \end{pmatrix}= \sum_{j=1}^d \lambda_j \underbrace{v_j v_j^T}_{\in \mathbb{R}^{d \times d}}$$
>- Si $\Sigma$ es semidefinida positiva (lo que implica que su determinante es no negativo), entonces todos sus autovalores son no negativos: $\lambda_j \ge 0$ $\forall j \in \{1, \dots, d\}$.
>- Si $\Sigma$ es definida positiva, entonces $\lambda_j > 0$ $\forall j \in \{1, \dots, d\}$.
>- Si $\Sigma$ es inversible, entonces $\Sigma^{-1} = P \Delta^{-1} P^T$, con $\Delta^{-1} = \begin{pmatrix} 1/\lambda_1 & & 0 \\ & \ddots & \\ 0 & & 1/\lambda_d \end{pmatrix}$.
>- Si $\Sigma$ es semidefinida positiva, entonces podemos definir el concepto de raíz cuadrada de $\Sigma$ (es decir, una matriz $A$ tal que $A^2=\Sigma$) dada por la matriz:
> $$
> \Sigma^{1/2} = P \Delta^{1/2} P^T = P \begin{pmatrix} \sqrt{\lambda_1} & & 0 \\ & \ddots & \\ 0 & & \sqrt{\lambda_d} \end{pmatrix} P^T
> $$
> De esta forma se cumple (notando ${} |\lambda_{i}|=\lambda_{i} {}$ ) :
> $$
> \Sigma^{1/2} \Sigma^{1/2} = P \Delta P^T = \Sigma
> $$
> - Si $\Sigma$ es definida positiva, denotamos $\Sigma^{-1/2} = P \Delta^{-1/2} P^T$ con $\Delta^{-1/2} = \begin{pmatrix} 1/\sqrt{\lambda_1} & & 0 \\ & \ddots & \\ 0 & & 1/\sqrt{\lambda_d} \end{pmatrix}$

>[!Theorem] Teo central del limite multivariado
>Sea $\{X_n\}$ una sucesión de vectores aleatorios en $\mathbb{R}^d$ i.i.d. Sea $\bar{X}_n = \frac{1}{n} \sum_{i=1}^n X_i \in \mathbb{R}^d$.
>Si $E(\|X_1\|^2) < \infty$ y la matriz de covarianza $\Sigma_{X_1}$ es definida positiva entonces $$\sqrt{n}(\bar{X}_n - EX_1) \xrightarrow{\mathcal{D}}_{n \to \infty} N_d(0_{d \times 1}, \Sigma_{X_1})$$
>O equivalentemente,
>$$\Sigma_{X_1}^{-1/2} (\sqrt{n}(\bar{X}_n - \mu)) \xrightarrow{\mathcal{D}}_{n \to \infty} N(0_{d \times 1}, I_{d \times d})$$
>La equivalencia surge usando Slutzky y considerando
>$$V(N_{d}(0,\Sigma_{X_{1}})\Sigma^{-1/2} )=\Sigma^{-1/2} V(N_{d}(0,\Sigma_{X_{1}}))(\Sigma^{-1/2})^{T}  =\Sigma^{-1/2}\Sigma(\Sigma^{1/2})^{T} =Id_{d\times d}  $$   

^f80efc

>[!Remark]
>Recordemos que en Proba y Estadistica se vió que si $Z$ es una variable aleatoria con $V(Z)<\infty$ entonces sucedia 
>$$\ V(Z) > 0 \iff P(Z=c) < 1 \quad \forall c \in \mathbb{R}$$
>$$V(Z) = 0 \iff P(Z=c) = 1 \quad \text{ para algun } c\in \mathbb{R}$$
>El resultado análogo para vectores aleatorios es el siguiente:

>[!Lemma] Resultado analogo a estadistica
>Sea $Z$ un vector aleatorio en $\mathbb{R}^d$ tal que $E(\|Z\|^2) < \infty$ entonces:
>$\Sigma_Z = V(Z)$ es definida positiva $\iff$ ${} \forall a \in \mathbb{R}^d \setminus \{0\}$ y $b \in \mathbb{R}$ se cumple que $P(a^t Z = b) < 1$
>>[!Proof]-
>>1. $\Sigma_Z = V(Z)$ es definida positiva $\iff a^t \Sigma_Z a > 0 \quad \forall a \in \mathbb{R}^d \setminus \{0\}$.
>>2. $$\begin{align}0<a^t \Sigma_Z a & = a^t E[(Z-EZ)(Z-EZ)^t] a\\&= E[a^t(Z-EZ)(Z-EZ)^t a]\\&(*)= E[(a^t(Z-EZ))^2]\\&(**)= V(a^t(Z-EZ))\end{align}$$
>>$(*)$ que $(Z-EZ)^ta\in \mathbb{R}$ por eso es igual a su traspuesta) 
>>$(**)$ Como $E[a^t(Z-EZ)] = 0$ usando $V(X)=E(X^{2})-E(X)^{2}$ 
>>3. Por lo tanto $a^t \Sigma_Z a > 0 \iff V(a^t(Z-EZ)) > 0$.
>>4. Usando el resultado de proba y estadistica esto vale sii $$\begin{align}V(a^t(Z-EZ)) > 0&\iff V(a^{t}(Z-EZ+\tilde{c}) )>0 \\&\iff  P(a^{T} (Z-EZ)+\tilde{c}=c)<1\\&\iff P(a^{T} Z-a^{T} EZ+\tilde{c}-c=0)<1\\&\iff P(a^{T} Z-b)<1\quad\forall c\in \mathbb{R}\end{align}$$
>>Recordar que sumar constantes no cambia varianza. Y aca sumamos un $\tilde{c}$ estrategico en base al $c,b$ y $a^{T}EZ$ que son datos que tenemos   

^dd9d29


