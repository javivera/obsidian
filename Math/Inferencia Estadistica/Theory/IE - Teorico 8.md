>[!Definition] Convergencia en probabilidad vectorial
> Sea $\{Z_n\}_{n \in \mathbb{N}}$ suc. de vectores aleatorios definidos en $(\Omega, \mathcal{A}, P)$
> tal que $Z_n \in \mathbb{R}^d \quad\forall n$ con $Z_n = (Z_{n1}, Z_{n2}, ..., Z_{nd})^\text{t}$. 
> Se dice que $Z_n$ converge en probabilidad a $Z_0$ si $$\forall \varepsilon > 0 \quad\lim\limits_{n \to \infty} P(||Z_n - Z_0|| > \varepsilon) = 0$$
> Notación: $Z_n \xrightarrow[n \to \infty]{\mathcal{P}} Z_0$
> Esto es analogo a decir $$Z_n \xrightarrow[n \to \infty]{\mathcal{P}} Z_0 \iff ||Z_n - Z_0|| \xrightarrow{P}_{n \to \infty} 0$$ ($||\cdot||$ norma euclídea)

^24b114

>[!Proposition] Equivalencia convergencia en probabilidad vectorial
>$Z_n \xrightarrow[n \to \infty]{\mathcal{P}} Z_0 \iff Z_{nj} \xrightarrow[n \to \infty]{P} Z_{0j}, \forall j=1,...,d$
>>[!Proof]
>>ejercicio

^6d9bbd

> [!Definition] Vectores aleatorios independiente
>- i) Una $\{Z_n\}_{n \in \mathbb{N}}$ suc. de vect. aleatorios en $\mathbb{R}^d$ se dice independiente si cualquier subconjunto finito de vectores de la sucesión son independ esto es:
>$$\begin{align}P(Z_{n_1} \in B_1 \cap Z_{n_2} \in B_2 \cap ... \cap Z_{n_k} \in B_k) = \prod_{i=1}^k P(Z_{n_i} \in B_i) \\ \forall B_1,...,B_k \in \mathcal{B}(\mathbb{R}^d)\quad 
>\forall n_1,...,n_k\end{align}$$
>- ii) $Z = (Z_1, ..., Z_d)^\text{t}$ vect. aleat. tal que $E(|Z_j|) < \infty \quad\forall j=1,...,d$,se define $E(Z) = (E(Z_1), ..., E(Z_d))^\text{t}$

^5d7837

>[!Remark]-
>Con esto, podemos enunciar la ley débil de los grandes números para una sucesión de vectores aleatorios

>[!Theorem] Ley de grandes numeros multidimensional
>Sea $\{Z_n\}_{n \in \mathbb{N}}$ una sucesión de vectores aleatorios en $\mathbb{R}^d$ independientes e idénticamente distribuidos $Z_n = (Z_{n1}, \dots, Z_{nd})^t$ tal que $E(|Z_{ij}|) < \infty$ $\forall i \in \{1, \dots, d\}$.
>Entonces: $$\frac{1}{n} \sum_{i=1}^{n} Z_i \xrightarrow[n \to \infty]{P} E(Z_1)$$
>Igualmente podemos formular una ley fuerte de los grandes números con las mismas hipótesis y en cuya conclusión cambiamos la convergencia en probabilidad por la convergencia en casi todo punto.

^91b91f

>[!Remark]-
>Para tratar de llegar a un TCL para vectores aleatorios, necesitamos tener el concepto de convergencia en distribución.
>Si $\{X_n\}_{n \in \mathbb{N}_0}$ es una sucesión de v.a. ($X_n \in \mathbb{R}$), $X_n \xrightarrow[n \to \infty]{D} X_0$ esto significaba que
>$$P(X_n \le t) \xrightarrow[n \to \infty]{} P(X_0 \le t) \quad \forall t \text{ punto de cont. de la fda de } X_0$$
>Pero esta definición es equivalente a decir
>$$P(X_n \in (-\infty, t]) \to P(X_0 \in (-\infty, t]) \quad \forall t \text{ tal que } P(X_0=t)=0$$
>(Su frontera tiene probabilidad 0)
>Esto sugiere la siguiente definición de convergencia en distribución en $\mathbb{R}^d$

>[!Definition] Convergencia distribucion multivariable
>Sea $\{Z_n\}_{n \in \mathbb{N}_0}$ una sucesión de vectores aleatorios en $\mathbb{R}^d$ y sea $A \in \mathcal{B}(\mathbb{R}^d)$. Decimos que $$Z_n \xrightarrow[n \to \infty]{D} Z_0 \iff P(Z_n \in A) \xrightarrow[n \to \infty]{} P(Z_0 \in A) \quad \forall A \in \mathcal{B}(\mathbb{R}^d) \text{ con } P(Z_0 \in \partial A)=0$$

^70761d

>[!Theorem] Equivalencias convergencia en distribucion multi
>$(\Omega, \mathcal{A}, P)$ e.p. y {$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat. Son equivalentes las siguientes afirmaciones:
> - a) $Z_n \xrightarrow[n \to \infty]{\mathcal{D}} Z_0$
> - b) $\lim_{n \to \infty} E(h(Z_n)) = E(h(Z_0))$ $\forall h: \mathbb{R}^d \to \mathbb{R}$ acotada y unif. continua
>(Uniforme continua ayuda a que la esperanza siga siendo $<\infty$)
> - c) $\lim_{n \to \infty} E(h(Z_n)) = E(h(Z_0))$ $\forall h: \mathbb{R}^d \to \mathbb{R}$ acotada y continua
> - d) $\forall F \subset \mathbb{R}^d$ cerrado se cumple que ${} \overline{\lim\limits_{n \to \infty}} P(Z_n \in F) \le P(Z_0 \in F) {}$
> - e) $\forall G \subset \mathbb{R}^d$ abierto se cumple que $\underline{\lim\limits_{n \to \infty}} P(Z_n \in G) \ge P(Z_0 \in G)$

^7ca736

>[!Corollary] Aplicacion abierta para convergencia en distribucion multivariable
>{$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat. en $(\Omega, \mathcal{A}, P)$ e.p. Si $Z_n \xrightarrow[n \to \infty]{\mathcal{D}} Z_0$ y $g: \mathbb{R}^d \to \mathbb{R}^m$ continua. Entonces $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{D}} g(Z_0)$.
>Recordemos que, en general, ser continua implica que la preim. de ab. es ab.
>>[!Proof]-
>>1. Sea $G$ abierto en $\mathbb{R}^m$, luego $g^{-1}(G)$ es abierto en $\mathbb{R}^d$ pues $g$ es cont.
>>2. Como $Z_n \xrightarrow[n \to \infty]{\mathcal{D}} Z_0$ por e) de [[IE - Teorico 8#^7ca736]] tenemos:
>>$$\underline{\lim_{n \to \infty}} P(\underbrace{Z_n \in g^{-1}(G)}_{g(Z_n) \in G}) \ge P(\underbrace{Z_0 \in g^{-1}(G)}_{g(Z_0) \in G})$$
>>3. Entonces $\underline{\lim\limits_{n \to \infty}} P(g(Z_n) \in G) \ge P(g(Z_0) \in G) \quad \forall G$ ab. en $\mathbb{R}^m$
>>4. Luego usando nuevamente [[IE - Teorico 8#^7ca736]] probamos $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{D}} g(Z_0)$

^2c7cb9

>[!Proposition] Aplicacion abierta para convergencia en probabilidad multivariable
> $(\Omega, \mathcal{A}, P)$ e.p. y {$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat. entonces si $g: \mathbb{R}^d \to \mathbb{R}^m$ continua y ${} Z_n \xrightarrow[n \to \infty]{\mathcal{P}} Z_0 {}$ entonces $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{P}} g(Z_0)$
>>[!Proof]-
>>(Es facil generalizar el si y solo si para vectores) 
>>1. Sea $g(Z_{n_{j}})$ sub. Entonces ${} Z_{n_{j}}$ es sub tambien.
>>2. Como $Z_{n}\xrightarrow{\mathcal{P}}Z_{0}$ entonces existe $Z_{n_{j_{k}}}\xrightarrow{pp} Z_{0}$ por lo tanto $g(Z_{n_{j_{k}}})\xrightarrow{pp} g(Z_{0})$
>>3. Entonces dada una sub $g(Z_{n_{j}})$ puedo encontrar una sub sub $g(X_{n_{j_{k}}})$ que converge puntual a $g(Z_{0})$ 
>>4. Por lo tanto $g(Z_{n})\xrightarrow{\mathcal{P}}g(Z_{0})$

^4de3c2

>[!Remark]-
>El Teorema de representación de Skorohod también tiene una versión para vectores aleatorios:

>[!Theorem] Skorohod multivariable
>Sea $(\Omega, \mathcal{A}, P)$ e.p. y {$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat.
>Si $Z_n \xrightarrow[n \to \infty]{\mathcal{D}} Z_0$ entonces existe $(\tilde{\Omega}, \tilde{\mathcal{A}}, \tilde{P})$ e.p. y una suc de vect. aleat. {$X_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ tal que
> - i) $X_n \sim Z_n \quad \forall n \in \mathbb{N}_0$.
> - ii) $X_n \xrightarrow[n \to \infty]{ctp} X_0$

^1e552f

>[!Remark]-
>Otros resultados que siguen valiendo para convergencia en distrib. de suc. de vectores aleatorios:

>[!Proposition] Conv en probabilidad implica en distribucion vectorial
>Si una sucesión de vectores aleatorios $\{Y_n\}$ converge en probabilidad a $Y_0$, entonces también converge en distribución.
>>[!Proof]-
>>1. Sea $Y_n \xrightarrow[n \to \infty]{P} Y_0$. Queremos ver que $Y_n \xrightarrow[n \to \infty]{\mathcal{D}} Y_0$.
>>2. Usaremos la caracterización de convergencia en distribución de [[IE - Teorico 8#^7ca736]] (parte d): para cualquier conjunto cerrado $F$, se debe cumplir que $\overline{\lim\limits_{n \to \infty}} P(Y_n \in F) \le P(Y_0 \in F)$.
>>3. Sea $F \subset \mathbb{R}^m$ un conjunto cerrado cualquiera y $\varepsilon > 0$. Podemos acotar la probabilidad $P(Y_n \in F)$ de la siguiente manera: $$\begin{align} P(Y_n \in F) & \le P(Y_n \in F, ||Y_n - Y_0|| \le \varepsilon) + P(Y_{n}\in F,||Y_n - Y_0|| > \varepsilon)\\ & \leq P(Y_n \in F, ||Y_n - Y_0|| \le \varepsilon) + P(||Y_n - Y_0|| > \varepsilon)\end{align}$$
>>4. Notemos que si $Y_n \in F$ y $||Y_n - Y_0|| \le \varepsilon$ entonces $Y_0$ debe pertenecer al "ensanchamiento" de $F$, es decir, al conjunto $F^\varepsilon = \{y \in \mathbb{R}^m : d(y, F) \le \varepsilon\}$. Por que $d(Y_{0},F)\leq ||Y_{0}-Y_{n}||\leq \epsilon$ por que la norma es un infimo de un conjunto $F$ que contiene a $Y_{n}$ (Notar que abuse de notacion y aca seria todo pensando $Y_{n}(w)$) 
>>5. Por lo tanto, el evento $\{Y_n \in F, ||Y_n - Y_0|| \le \varepsilon\}$ está contenido en el evento $\{Y_0 \in F^\varepsilon\}$.
>>6. Esto nos lleva a la desigualdad: $$P(Y_n \in F) \le P(Y_0 \in F^\varepsilon) + P(||Y_n - Y_0|| > \varepsilon)$$
>>7. Tomando el límite superior cuando $n \to \infty$: $$\overline{\lim_{n \to \infty}} P(Y_n \in F) \le P(Y_0 \in F^\varepsilon) + \lim_{n \to \infty} P(||Y_n - Y_0|| > \varepsilon)$$
>>8. Como $Y_n \xrightarrow{P} Y_0$, el segundo término es 0. Así, obtenemos: $$\overline{\lim_{n \to \infty}} P(Y_n \in F) \le P(Y_0 \in F^\varepsilon)$$
>>9. Esta relación es válida para cualquier $\varepsilon > 0$. Como $F$ es cerrado, cuando $\varepsilon \to 0$, los conjuntos $F^\varepsilon$ decrecen hacia $F$.
>>10. Por la continuidad de la probabilidad, $\lim_{\varepsilon \to 0} P(Y_0 \in F^\varepsilon) = P(Y_0 \in F)$.
>>11. Concluimos entonces que $\overline{\lim\limits_{n \to \infty}} P(Y_n \in F) \le P(Y_0 \in F)$, lo que prueba que $Y_n \xrightarrow{\mathcal{D}} Y_0$.

^f6ccb4

>[!Proposition] Convergencia en Distribucion a cte implica en probabilidad multivariable
>$(\Omega, \mathcal{A}, P)$ e.p. y {$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat. Si $Z_n \xrightarrow[n \to \infty]{\mathcal{D}} z_0$ con $z_0 \in \mathbb{R}^d$ entonces $Z_n \xrightarrow[n \to \infty]{P} Z_0$
>>[!Proof]-
>>1. Sea $F=\{ x\in \mathbb{R}^{d}:||x-z_{0}||\geq \epsilon \}$ es cerrado por ser complemento de un abierto
>>2. Por [[IE - Teorico 8#^7ca736]] d) $$\overline{\lim\limits_{ n \to \infty } } P(Z_{n}\in F)\leq P(z_{0}\in F)$$
>>3. Pero $P(z_{0}\in F)=P(\{ w\in \Omega:z_{0}(w)\in F \})=0$ por que $z_{0}(w)=z_{0}\not\in F$  
>>4. Entonces el limite superior es menor o igual que 0 por lo tanto es igual a 0 por lo tanto $$0=\lim\limits_{ n \to \infty } P(Z_{n}\in F)=\lim\limits_{ n \to \infty } P(||Z_{n}-z_{0}||\geq\epsilon)$$

^b3262f

>[!Theorem] Slutzky Multivariable
>$(\Omega, \mathcal{A}, P)$ e.p. y {$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat. Se cumple:
> - b) Si $Z_n \xrightarrow[n \to \infty]{P} Z_0$ entonces $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{D}} g(Z_0)$
> - d) Si $Z_n \xrightarrow[n \to \infty]{\mathcal{D}} Z_0$ y {$U_n$}$_{n \in \mathbb{N}} \subset \mathbb{R}^b$ otra suc. de vect. aleat. tq $U_n \xrightarrow[n \to \infty]{\mathcal{D}} u_0$ con $u_0 \in \mathbb{R}^b$. Sea $g: \mathbb{R}^{d+b} \to \mathbb{R}$ continua, entonces se cumple:
> $$g(Z_n, U_n) \xrightarrow[n \to \infty]{\mathcal{D}} g(Z_0, u_0)$$
>>[!Proof]-
>>b) 
>>Queremos probar que si $Z_n \xrightarrow[n \to \infty]{P} Z_0$, entonces $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{D}} g(Z_0)$.
>>1. Por [[IE - Teorico 8#^4de3c2]] como $Z_n \xrightarrow[n \to \infty]{P} Z_0$ y $g$ es una función continua, tenemos que $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{P}} g(Z_0)$.
>>2. Aplicando [[IE - Teorico 8#^f6ccb4]] $g(Z_n) \xrightarrow[n \to \infty]{\mathcal{D}} g(Z_0)$
>>
  
^ab0382

>[!Theorem] Cramer Wold
> Si {$Z_n$}$_{n \in \mathbb{N}_0} \subset \mathbb{R}^d$ suc. de vect. aleat. def. en $(\Omega, \mathcal{A}, P)$ entonces:
> $$Z_n \xrightarrow[n \to \infty]{\mathcal{D}} Z_0 \iff a^t Z_n \xrightarrow[n \to \infty]{\mathcal{D}} a^t Z_0 \quad \forall a \in \mathbb{R}^d$$
> proyección de $Z_n$ en cualq. dirección

^2d6441

>[!Remark]
>Recordemos que si $Z \sim \mathcal{N}(0,1)$ entonces $\sigma Z+\mu \sim \mathcal{N}(\mu, \sigma^2)$ $\forall \mu \in \mathbb{R}, \sigma > 0$ y si $\sigma < 0$ también tendremos $\sigma Z+\mu \sim \mathcal{N}(\mu, \sigma^2)$.
>Esto induce la generalización de la distribución normal para el caso de vect.

>[!Definition] Distribucion Normal Multivariada
> sea $Z = (Z_1, \dots, Z_d)^t$ vect. aleat tq {$Z_i$}$_{i=1}^d$ son iid con $Z_1 \sim \mathcal{N}(0,1)$.
> Sea $A \in \mathbb{R}^{m \times d}$, $\mu \in \mathbb{R}^m$. Se dice que un vector aleat. X tiene una distribución normal multivariada en $\mathbb{R}^m$ si $X \sim AZ+\mu$.

^91f8c5

>[!Remark]-
>Introducimos el concepto de "varianza" de un vect. aleat. 

>[!Definition] Matriz Varianza Covarianza
> sean $Z: \Omega \to \mathbb{R}^d$ y $W: \Omega \to \mathbb{R}^m$ vect. al tales que $E(\|Z\|^2) < \infty$, $E(\|W\|^2) < \infty$ y $E(|Z_i W_j|) < \infty$ $\forall i=1, \dots, d, \forall j=1, \dots, m$ donde $Z=(Z_1, \dots, Z_d)^t$, $W=(W_1, \dots, W_m)^t$. Entonces se define la matriz de varianzas covarianzas entre Z y W de la forma:
>$$E[\underbrace{(Z-E(Z))(W-E(W))^t}_{\in \mathbb{R}^{d\times m} }] = Cov(Z,W)$$
>Donde la esperanza de una matriz es la esperanza lugar a lugar.

^a501de

>[!Remark]
>$$(Z-EZ) = \begin{pmatrix} Z_1-EZ_1 \\ \vdots \\ Z_d-EZ_d \end{pmatrix}, \quad (W-EW)^t = (W_1-EW_1, \dots, W_m-EW_m)$$
>Entonces
>$$(Z-EZ)(W-EW)^t = \begin{pmatrix} (Z_1-EZ_1)(W_1-EW_1) & \cdots & (Z_1-EZ_1)(W_m-EW_m) \\ \vdots & \ddots & \vdots \\ (Z_d-EZ_d)(W_1-EW_1) & \cdots & (Z_d-EZ_d)(W_m-EW_m) \end{pmatrix}$$
>Al tomar esperanza lugar a lugar obtenemos la Covarianza de cruzar todas las coord. de Z con todas las coord. de W.
>¿Qué pasa si $W=Z$?. En la diagonal están las varianzas de las coordenadas de $Z$ y extra diagonal las covarianzas entre distintas coordenadas 

>[!Definition] Matriz Varianza Covarianza de Z
>Se llama matriz de varianza-covarianza de $Z$ a:
>$$\Sigma_Z = V_Z = Cov(Z,Z) = E((Z-EZ)(Z-EZ)^t)$$

^679448

