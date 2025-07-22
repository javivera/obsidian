>[!Definition] Funcion Caracteristica
>Sea $X: \Omega \to \mathbb{R}^d$ un vector aleatorio. Se llama **función característica** de $X$ a la función $\varphi_X: \mathbb{R}^d \to \mathbb{C}$ definida como:
>$$\varphi_X(s) = E[e^{i \langle s, X \rangle}] = E[\cos(\langle s, X \rangle) + i \sin(\langle s, X \rangle)]$$
>La importancia de este concepto surge a través del siguiente resultado.

^154fa9

>[!Theorem] Igualdad de func caracteristicas
>Sean $Z, W: \Omega \to \mathbb{R}^d$ vectores aleatorios. Si se cumple que: $\varphi_Z(s) = \varphi_W(s) \quad \forall s \in \mathbb{R}^d$ entonces $F_Z(x) = F_W(x) \quad \forall x \in \mathbb{R}^d$
>(donde $F_Z$ es la f.d.a. de $Z$, y $F_W$ es la f.d.a. de $W$).

^43917d

>[!Proposition] Func caracteristica de normal
>Si $X \sim N(\mu, \sigma^2)$, con $\mu \in \mathbb{R}, \sigma^2 > 0$ entonces $\varphi_X(t) = e^{i t \mu - \sigma^2 t^2 / 2} \quad \forall t \in \mathbb{R}$.
>>[!Proof]
>>ejercicio

^d96534

>[!Proposition] Func caractersitica de vectores y suma vectores
> - (a) Sea $Z=(Z_1, \dots, Z_d)^T$ un vector aleatorio tal que $Z_1, \dots, Z_d$ son variables aleatorias independientes entonces $\varphi_Z(s) = \prod_{j=1}^d \varphi_{Z_j}(s_j)$ con $s=(s_1, \dots, s_d)^T \in \mathbb{R}^d$.
> - (b) Si $Z, W$ son vectores aleatorios independientes, entonces $\varphi_{Z+W}(s) = \varphi_Z(s) \cdot \varphi_W(s) \quad \forall s \in \mathbb{R}^d$
>>[!Proof]
>>

^342930

>[!Corollary] Func caracteristica normal multivariable
>Sea $X \sim N_d(\mu, \Sigma_X)$ (con $d \ge 1$, $\mu \in \mathbb{R}^d$, $\Sigma_X \in \mathbb{R}^{d \times d}$ simétrica y definida no negativa, (Por [[IE - Teorico 9#^2fefa2]] c) tenemos $\Sigma_{X}=AA^{T}$ que si o si es semidefinida positiva). Luego $X$ se puede escribir como $X \sim AZ+\mu$ (con $Z=(Z_1, \dots, Z_m)^T$, $Z_i$ independientes con $Z_i \sim N(0,1)$, $A \in \mathbb{R}^{d \times m}$) entonces $$\varphi_X(s) = e^{i \langle s, \mu \rangle - \frac{1}{2} s^T \Sigma_X s}, \quad \forall s \in \mathbb{R}^d$$
>>[!Proof]-
>>asd

^3714ff

>[!Lemma] Resultados sobre normal multivariable
>  - (a) Sean $X \sim N_d(\mu, \Sigma_X)$, $B \in \mathbb{R}^{p \times d}$ y $v \in \mathbb{R}^p$. Entonces: $BX+v \sim N_p(B\mu+v, B \Sigma_X B^T)$.
>  - (b) Sea $X \sim N_d(\mu, \Sigma_X)$ con $\Sigma_X = AA^T$. Si rango$(A)=d$ entonces $\Sigma_X$ es definida positiva y $X$ tiene una función de densidad de probabilidad dada por:
>  $$f_X(x) = \frac{1}{(\sqrt{2\pi})^d \sqrt{\det \Sigma_X}} e^{-\frac{1}{2} \langle \Sigma_X^{-1}(x-\mu), x-\mu \rangle} \quad \forall x \in \mathbb{R}^d$$
>  - (c) Si $d=2$ y $X = \begin{pmatrix} X_1 \\ X_2 \end{pmatrix}$, escribir la densidad de $X$ en términos de $V(X_1)$, $V(X_2)$ y $\rho = \text{corr}(X_1, X_2) = \frac{\text{cov}(X_1, X_2)}{\sqrt{V(X_1) V(X_2)}}$.
>  - (d) Si $d=2$ y rg$(A)=1$, entonces mostrar que existe una relación lineal entre las componentes, es decir, $X_1 = cX_2 + b$ para algunos $b,c \in \mathbb{R}$.
>>[!Proof]-
>>(c)
>>1. Usando la notación $V(X_1) = \sigma_1^2$, $V(X_2) = \sigma_2^2$, $\text{cov}(X_1, X_2) = \rho \sqrt{V(X_1)V(X_2)} = \rho \sigma_1 \sigma_2$
>>2. La matriz de covarianza $\Sigma_X$ es:$$\Sigma_X = \begin{pmatrix} \text{cov}(X_1, X_1) & \text{cov}(X_1, X_2) \\ \text{cov}(X_2, X_1) & \text{cov}(X_2, X_2) \end{pmatrix} = \begin{pmatrix} \sigma_1^2 & \rho \sigma_1 \sigma_2 \\ \rho \sigma_1 \sigma_2 & \sigma_2^2 \end{pmatrix}$$
>>3. $\det(\Sigma_X) = \sigma_1^2 \sigma_2^2 - \rho^2 \sigma_1^2 \sigma_2^2=\sigma_1^2 \sigma_2^2 (1 - \rho^2)$. Entonces, $\sqrt{\det(\Sigma_X)} = \sigma_1 \sigma_2 \sqrt{1-\rho^2}$.
>>4. Luego calculemos la inversa: $\Sigma_X^{-1} = \frac{1}{\sigma_1^2 \sigma_2^2 (1 - \rho^2)} \begin{pmatrix} \sigma_2^2 & -\rho \sigma_1 \sigma_2 \\ -\rho \sigma_1 \sigma_2 & \sigma_1^2 \end{pmatrix}$
>>5. Calculemos todo lo que esta en el exponente es:$\frac{1}{\sigma_1^2 \sigma_2^2 (1 - \rho^2)} \begin{pmatrix} x_1 - \mu_1 & x_2 - \mu_2 \end{pmatrix} \begin{pmatrix} \sigma_2^2 & -\rho \sigma_1 \sigma_2 \\ -\rho \sigma_1 \sigma_2 & \sigma_1^2 \end{pmatrix} \begin{pmatrix} x_1 - \mu_1 \\ x_2 - \mu_2 \end{pmatrix}$
>>6. Multiplicando las matrices, obtenemos:$\frac{\sigma_2^2(x_1-\mu_1)^2 - 2\rho\sigma_1\sigma_2(x_1-\mu_1)(x_2-\mu_2) + \sigma_1^2(x_2-\mu_2)^2}{\sigma_1^2 \sigma_2^2 (1 - \rho^2)}$
>>7. Podemos simplificar esta fracción dividiendo cada término del numerador por $\sigma_1^2 \sigma_2^2$:$\frac{1}{1-\rho^2} \left[ \frac{(x_1-\mu_1)^2}{\sigma_1^2} - \frac{2\rho(x_1-\mu_1)(x_2-\mu_2)}{\sigma_1\sigma_2} + \frac{(x_2-\mu_2)^2}{\sigma_2^2} \right]$
>>8. Ahora sustituimos todos los componentes en la fórmula general de la parte (b):$$
f_X(x_1, x_2) = \frac{1}{2\pi \sigma_1 \sigma_2 \sqrt{1-\rho^2}} \exp \left( -\frac{1}{2(1-\rho^2)} \left[ \left(\frac{x_1 - \mu_1}{\sigma_1}\right)^2 - 2\rho\left(\frac{x_1 - \mu_1}{\sigma_1}\right)\left(\frac{x_2 - \mu_2}{\sigma_2}\right) + \left(\frac{x_2 - \mu_2}{\sigma_2}\right)^2 \right] \right)$$
>> Donde $\sigma_1^2 = V(X_1)$ y $\sigma_2^2 = V(X_2)$.

^d397b0

>[!Lemma] Proyeccion de normal multivariable a univariable
> $X \sim N_d(\mu, \Sigma_X) \iff a^T X \sim N(\mu_a, \sigma_a^2)$ para todo $a \in \mathbb{R}^d$. Donde $\mu_a = a^T \mu$ y $\sigma_a^2 = a^T \Sigma_X a$
>>[!Proof]-
>> $(\implies)$ 
>> 1. $X \sim AZ+\mu$ con $Z=(Z_1, \dots, Z_m)^T$ iid, $Z_i \sim N(0,1)$ y $A \in \mathbb{R}^{d \times m}$.
>> 2. Luego, [[IE - Teorico 10#^d397b0]] a) tenemos $a^T X \sim N(a^T \mu, a^T \Sigma_X a)$, .
>>
>> $(\impliedby)$ 
>> 1. Si $a^T X \sim N(\mu_a, \sigma_a^2)$ para todo $a \in \mathbb{R}^d$. En particular, vale para la base canónica $\{e_1, \dots, e_d\}$
>> 2. Entonces $X_1, \dots, X_d$ son v.a. normales. $X_j \sim N(\mu_j, \sigma_j^2)$ para $j=1, \dots, d$.
>> 3. Sea $\mu = (\mu_1, \dots, \mu_d)^T = \begin{pmatrix} \mu_1 \\ \vdots \\ \mu_d \end{pmatrix}$ y $\Sigma_X = (\text{Cov}(X_i, X_j))_{1 \le i,j \le d}$.
>> 4. Luego, por la descomposición de Cholesky, $\Sigma_X = L L^T$ con $L$ una matriz triangular inferior.
>> 5. Definimos $W = LZ + \mu$ donde $Z = \begin{pmatrix} Z_1 \\ \vdots \\ Z_d \end{pmatrix}$, con $Z_i$ v.a. iid, $Z_i \sim N(0,1)$.
>> 6. Entonces $W \sim N_d(\mu, L \Sigma_Z L^T) = N_d(\mu, LL^T) = N_d(\mu, \Sigma_X)$. (Usamos que $\Sigma_Z = Id_d$)
>> 7. Ahora chequeamos que $X \sim W$. Y ya estariaos. Para esto, alcanza con ver que sus funciones características son iguales.
>> 8. $a^T W \sim N(a^T \mu, a^T \Sigma_X a)$ y por hipótesis, $a^T X \sim N(\mu_a, \sigma_a^2)$. (Son normales univariadas) entonces $$\varphi_{a^{T}X}(s)=\varphi_{a^{T}W}(s)\quad\forall s\in \mathbb{R}\quad\forall a\in \mathbb{R}^{d}$$
>> 9. Entonces por definicion $$\varphi_{X}(sa)=E(e^{i\langle s a,W \rangle})=E(e^{i(s .a^{t} W)})\overset{8.}{=} E(e^{i(s.a^{t}X) })= E(e^{i\langle sa ,X \rangle})=\varphi_{W}(sa)$$

^775e65

>[!Lemma] Resultados sobre normal multi y chi cuadrado
>- (a)  Sea $X \sim N_d(\mu, \Sigma_X)$ con $\Sigma_X$ simétrica y definida positiva ($\implies \Sigma_X$ es invertible y $\exists \Sigma_X^{-1/2}$). Entonces, $$\Sigma_X^{-1/2}(X-\mu) \sim N_d(0, I_d)$$
>- (b)  Sea $X \sim N_d(\mu, \Sigma_X)$ con $\Sigma_X$ simétrica y definida no negativa. Sea $X=(X_1^T, X_2^T)^T$ con $X_1 \in \mathbb{R}^{d_1}, X_2 \in \mathbb{R}^{d_2}$ y $d_1+d_2=d$. Entonces, $$X_1, X_2 \text{ son independientes}\iff \text{Cov}(X_1, X_2) = 0 \in \mathbb{R}^{d_1 \times d_2}$$
>- (c)  Sea $X \sim N_d(\mu, \Sigma_X)$ con $\Sigma_X$ simétrica y definida positiva. Entonces la forma cuadrática: $$(X-\mu)^T \Sigma_X^{-1} (X-\mu) \sim \chi_d^2$$
>(distribución chi-cuadrado con $d$ grados de libertad).
>>[!Proof]-
>>1. a

^3150fc

