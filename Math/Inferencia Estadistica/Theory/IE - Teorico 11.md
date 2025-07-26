>[!Theorem] Resultados sobre normal multivariada
>Sea $X \sim N_d(\mu, \Sigma_X)$, con $\Sigma_X$ simétrica y definida positiva. Sea $X = \begin{pmatrix} X_1 \\ X_2 \end{pmatrix}$, con $X_1 \in \mathbb{R}^{d_1}$, $X_2 \in \mathbb{R}^{d_2}$ y $d_1+d_2=d$.
>Entonces se cumple:
>- a) $X_1 \sim N_{d_1}(\mu_1, V(X_1)) = N_{d_1}(\mu_1, \Sigma_{11})$ y $X_2 \sim N_{d_2}(\mu_2, \Sigma_{22})$ con $\Sigma_{11}, \Sigma_{22}$ definidas positivas.
>- b) Sea el vector $$\omega = \begin{pmatrix} \omega_1 \\ \omega_2 \end{pmatrix} = \begin{pmatrix} I_{d_1} & -\Sigma_{12} \Sigma_{22}^{-1} \\ 0_{d_2 \times d_1} & I_{d_2} \end{pmatrix} \begin{pmatrix} X_1 - \mu_1 \\ X_2 - \mu_2 \end{pmatrix}$$ entonces $\omega \sim N_d \left( 0_{d \times 1}, \begin{pmatrix} \Sigma_{11} - \Sigma_{12} \Sigma_{22}^{-1} \Sigma_{21} & O_{d_1 \times d_2} \\ O_{d_2 \times d_1} & \Sigma_{22} \end{pmatrix} \right)$.
>- c) $\Sigma_{11} - \Sigma_{12} \Sigma_{22}^{-1} \Sigma_{21}$ es simétrica y definida positiva.
>- d) $W_1$ y $W_2$ son independientes (osea, si $g$ denota la densidad conjunta de $W$, $g_1$ la densidad de $W_1$, y $g_2$ la densidad de $W_2$, entonces $$g(w_1, w_2) = g_1(w_1)g_2(w_2)$$ para todo $w_1 \in \mathbb{R}^{d_1}, w_2 \in \mathbb{R}^{d_2}$).
>- e) Sean $f(x_1,x_2)$ la densidad conjunta del vector $X$, y $f_1, f_2$ las densidades de los vectores $X_1$ y $X_2$. Sabemos (por probabilidad) que la densidad condicional de $X_1$ dado que $X_2=x_2$ es: $$f_{X_1|X_2=x_2}(x_1) = \frac{f(x_1, x_2)}{f_2(x_2)}$$
>Entonces comprobar:
> i) $f(x_1, x_2) = g(w_1, w_2) = g_1(w_1) g_2(w_2)$ donde $w_1 = (x_1 - \mu_1) - \Sigma_{12} \Sigma_{22}^{-1} (x_2 - \mu_2)$ y $w_2 = (x_2 - \mu_2)$.
> ii) $f_2(x_2) = g_2(w_2)$
> iii) $f_{X_1|X_2=x_2}(x_1) = g_1(w_1)$
> y entonces se cumple que: $$X_1 | X_2=x_2 \sim N_{d_1}(\mu_1 + \Sigma_{12} \Sigma_{22}^{-1} (x_2 - \mu_2), \Sigma_{11} - \Sigma_{12} \Sigma_{22}^{-1} \Sigma_{21})$$
>>[!Proof]
>>hacerlo

^0492f4



>[!Theorem] Método Delta Multivariado
>Sea $\{X_n\}_{n \in \mathbb{N}_0}$ una sucesión de vectores aleatorios en $\mathbb{R}^d$. Sea $\{a_n\} \subseteq \mathbb{R}$ una sucesión tal que $\lim_{n \to \infty} a_n = \infty$ y supongamos que: $$a_n(X_n - \mu) \xrightarrow{\mathcal{D}} X_0$$
>donde $\mu \in \mathbb{R}^d$ es la esperanza.
>Sea $g: \mathbb{R}^d \to \mathbb{R}^k$ una función diferenciable y sea $D$ la matriz jacobiana de $g$: $$D = \left( \frac{\partial g_i(x)}{\partial x_j} \right)_{1 \le i \le k, 1 \le j \le d} \in \mathbb{R}^{k \times d}, \quad \text{para } x \in \mathbb{R}^d$$
>Si las derivadas parciales $\frac{\partial g_i(x)}{\partial x_j}$ son funciones continuas, entonces se cumple:$$a_n(g(X_n) - g(\mu)) \xrightarrow{\mathcal{D}}_{n \to \infty} D(\mu) X_0$$

^50208f

>[!Example] Apliacion de metodo delta y TCL
>- Si $X_0 \sim N_d(0, \Sigma)$ y $a_n = \sqrt{n}$, tenemos que:
>$$\sqrt{n}(X_n - \mu) \xrightarrow{\mathcal{D}} N_d(0_{d \times 1}, \Sigma)$$
>en este caso $\mu=E[X_n]$. Por [[IE - Teorico 11#^50208f]] tenemos
>$$ \sqrt{n}(g(X_n) - g(\mu)) \xrightarrow{\mathcal{D}} N_k(0_{k \times 1}, D \Sigma D^T)$$

^dd12f7

>[!Definition] Integral general
>Si tenemos $(\Omega, \mathcal{F}, \mu)$ un espacio de medida ($\mu$ no necesariamente es una medida de probabilidad).
>Sea $f: \Omega \to [0, \infty]$ una función $\mathcal{F}$-medible (o sea, la preimagen de cualquier conjunto de Borel está en $\mathcal{F}$).
> - Para definir la integral de $f$, tomamos una partición de $\Omega$, $P=\{A_1, \dots, A_n\}$. 
>($A_i \in \mathcal{F} \quad \forall i$, $A_i \cap A_j = \emptyset \quad \forall i \ne j$, $\bigcup_{j=1}^k A_i = \Omega$)
>
>Entonces definimos
>$$ S(P) = \sum_{j=1}^k \inf_{x \in A_j} f(x) \mu(A_j) $$
>tomando como convención:
>- $y \cdot \infty = \infty$ si $y > 0$
>- $0 \cdot \infty = 0$
>- $y \cdot \infty = -\infty$ si $y < 0$
>- $\infty \cdot \infty = \infty$
>
>Luego $\int_{\Omega} f d\mu = \sup_{P \in \Pi} S(P)$ donde $\Pi$ es el conjunto de todas las particiones de $\Omega$.
>- Si dicho supremo es finito, decimos que $f$ es integrable.
>- Si es infinito, $f$ tiene integral infinita, pero decimos que **no** es integrable.

^671211

>[!Remark]
>Si ahora $f: \Omega \to [-\infty, \infty] = \bar{\mathbb{R}}$ y $f$ es $\mathcal{F}$-medible entonces $f = f_1 - f_2 = f^+ - f^-$ con $f_1, f_2$ funciones $\mathcal{F}$-medibles que toman valores en $[0, \infty]$.
>(parte positiva y negativa: $f_1 = f^+ = \max(f,0)$, $f_2 = f^- = (-f)^+$)
>Podemos entonces definir $$ \int f^+ d\mu \quad \text{y} \quad \int f^- d\mu $$
>- Si al menos una de estas integrales es finita $\implies \int f d\mu = \int f^+ d\mu - \int f^- d\mu$
>- Si ambas son finitas $\implies f$ es integrable y tiene integral finita.
>- Si una es infinita $\implies f$ tiene integral infinita, pero no es integrable.
>- Si ambas son infinitas $\implies f$ no es integrable.

>[!Definition] Esperanza general
>Dado $(\Omega, \mathcal{A}, P)$ un espacio de probabilidad y $X: \Omega \to \mathbb{R}$ una v.a, entonces se define la esperanza de $X$ como
>$$ EX = \int_{\Omega} X dP = \int_{\Omega} X(\omega) P(d\omega) $$

^6169bd

>[!Remark]
>¿Son las viejas definiciones de esperanza consistentes con el concepto general recién planteado?

>[!Definition] Medida pushforward
>Sea $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico. Si $X: \Omega \to \mathbb{R}$ es una v.a., esto significa que $X^{-1}(B) \in \mathcal{A}$ para todo $B \in \mathcal{B}(\mathbb{R})$ (los conjuntos de Borel de $\mathbb{R}$).
>Entonces podemos definir una medida en $\mathbb{R}$ inducida por la v.a. $X$ del siguiente modo:
>$$ P_X(B) := P(X \in B)=P(X^{-1}(B)) \quad \forall B \in \mathcal{B}(\mathbb{R}) $$
>Y esto nos da un espacio de probabilidad $(\mathbb{R},\mathcal{B}(\mathbb{R}),P_{X})$ 
>(chequear que $P_X$ es una medida de probabilidad en $\mathbb{R}$).

^c214ed

>[!Lemma] Esperanza en medida pushforward
>Dado $(\Omega, \mathcal{A}, P)$ un espacio de probabilidad y $X: \Omega \to \mathbb{R}$ una v.a. $P_X(\cdot)$ es la medida inducida por $X$ en $\mathbb{R}$. Ahora, si $E(X)$ existe entonces
>$$EX = \int_{\Omega} X dP = \int_{\mathbb{R}} x P_X(dx)$$

^b24583

>[!Definition] Medidas absolutamente continuas
>Si $\mu, \nu: \mathcal{F} \to [0, \infty]$ son medidas. Decimos que $\nu$ es **absolutamente continua** respecto a $\mu$ si para todo $A \in \mathcal{F}$ tal que $\mu(A)=0$, entonces $\nu(A)=0$. (notación: $\nu \ll \mu$)
>Un resultado que caracteriza la continuidad absoluta es el siguiente:

^c61246

>[!Theorem]
>Sea $\Omega'$ un conjunto y $\mathcal{F}$ una $\sigma$-álgebra en $\Omega'$. Sean $\mu, D: \mathcal{F} \to [0, \infty]$ medidas $\sigma$-finitas tal que $D \ll \mu$ (absolutamente continuas).
>Sea $g: \Omega' \to [0, \infty)$ la densidad de $D$ respecto de $\mu$. Entonces se cumple que
> - a) $f$ es integrable respecto a $D$ sii $f \cdot g$ es integrable respecto a $\mu$.
> - b) $\int_{\Omega'} f dD = \int_{\Omega} f \cdot g d\mu$

^01c6e4

