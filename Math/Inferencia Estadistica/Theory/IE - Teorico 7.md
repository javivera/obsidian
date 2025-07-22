>[!Definition] Funcion distriucion empirica
>Notos Ser {$X_n$} enc de n.iid det en ($Ω, A, P$) e.p. Ser $X_i$ F y n.os a definir une funcion de la invesra. eleastaria que llamemos funcion de distribucion empirica del siguiente modo: para $x\in \mathbb{R}$ y $ω∈\Omega$ 
>$$\begin{align}\hat{F_n}(x,\omega)&= \frac{1}{n}\#\{ 1\leq i\leq n:X_{i}(w)\leq x \} \\&=\frac{1}{n} \sum_{i=1}^{n} I_{(-∞,x]}(X_i(ω))\\&=\left[\frac{1}{n} \sum_{i=1}^{n} I_{(-∞,x]}(X_i)\right](\omega)\end{align}$$

^46c80c

>[!Proposition] Propiedades de la f distr empirica
>- i) $\omega \in \Omega$ fijo $\Rightarrow \hat{F}_n(\cdot,\omega): \mathbb{P} \rightarrow [0,1]$ cumple les propiedades de f.d.a
>- ii) $x \in \mathbb{R}$ fijo $\Rightarrow \hat{F}_n(x,\cdot): \Omega \rightarrow \mathbb{R}$ es v.a
>- iii) Las v.a ${} Y_j = I_{(-\infty,x]}(X_j) \sim Ber(p)$ con $p= P(X_j \leq x) = F_{X_{j}}(x)$
>- iii b) ${} \displaystyle \sum_{i=1}^n I_{(-\infty, x]}(X_{i}) \sim Bi(n, p) {}$
>- iv) ${} E(\hat{F}_n(x,\cdot)) = p= F(x) {}$
>- v) $P\left(\{\omega\in \Omega:\lim\limits_{n\rightarrow\infty} \big(\hat{F}_n(x,\cdot) - F(x)\big) = 0\}\right) = 1\quad\forall x\in \mathbb{R}$ 
>(osea $\hat{F}_{n}(x,\cdot)\xrightarrow{pp} F(x)$)
>- vi) $\sqrt{ n } [\hat{F}_n(x,\cdot) - F(x)]\xrightarrow{\mathcal{D}}N\bigg(0, F(x)\big(1-F(x)\big)\bigg)$

^99e20e

>[!Theorem] Glivenko-Cantelli
>Si $X_i$ suc de vaiid tales que $X_i \sim F$. Entonces se cumple que:
>$$P\left(\big\{\omega\in \Omega:\lim\limits_{n\rightarrow \infty}\sup_{x\in \mathbb{R}}|\hat{F}_n(x,\cdot) - F(x)| = 0\big\}\right) = 1$$
>Otra forma de verlo es $$||\hat{F}_{n}(x,\cdot)-F(x)||_{\infty}=\sup_{x\in \mathbb{R}}|\hat{F}_{n}(x,\cdot)-F(x)|\xrightarrow{pp} 0$$  

^a62509

>[!Theorem] Linberg
>Bajo ciertas supociciones se cumple 
>$$\frac{S_{n}-E(S_{n})}{\sqrt{ V(S_{n}) }}\xrightarrow{\mathcal{D}}N(0,1)$$
>con $S_{n}=\sum^{n}_{i=1}X_{i}$ 

^ab40f7

>[!Theorem] TCL a partir de Lingberg
>Si se cumple [[IE - Teorico 7#^ab40f7]] entonces se vale [[IE - Teorico 4#^25a7ae]]
>>[!Proof]-
>>1. $$\frac{S_{n}-E(S_{n})}{\sqrt{ V(S_{n}) }}=\frac{\sum^{n}_{i=1}X_{i}-nE(X_1)}{\sqrt{ nV(X_{1}) }}=\frac{n\big(\frac{1}{n}\sum^{n}_{i=1}X_{i}-E(X_{1})\big)}{\sqrt{ n }\sigma}=\sqrt{ n }\frac{\overline{X} -\mu }{\sigma}$$
>>2. Usando [[IE - Teorico 7#^ab40f7]] queda demostrado el [[IE - Teorico 4#^25a7ae]]

>[!Definition] Acotado en probabilidad
>Sea $\{X_n\}$ suc de v.a $(\Omega, \mathcal{A}, P)$ ep. Decimos que esta acotada en probabilidad si ${} \forall \epsilon>0  \quad\exists m>0 {}$ tal que 
>$$\sup_{n \in \mathbb{N}} P(|X_n| > m) < \epsilon$$

^8893d0

>[!Example] Contraejemplo acotado en probabilidad
>Si $X_n \sim U(-n, n)$ entonces $\{ X_{n} \}$ no esta acotada en probabilidad

^84ddac

>[!Theorem] Convergencia en distri implica acotado en proba
>Sea $\{ X_{n} \}$ suc de v.a en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico. Si ${} X_{n}\xrightarrow{\mathcal{D}}X_{0} {}$ entonces $\{ X_{n} \}$ esta acotado en probabilidad
>>[!Proof]-
>>1. Considerando $F_0(x) = P(X_0 \leq x)$ y ${} F_n(X) = P(X_n \leq x) {}$. Podemos elegir ${} m_0 > 0$ tal que $P(|X_0| > m_0)$ sea chico $$\begin{align} P(|X_0| > m_0) &= P(X_0 > m_0) + P(X_0 < -m_0)\\&= 1 - P(X_0 \leq m_0) + P(X_0 < -m_0)\\&=1-F_{0}(m_{0})+F(-m_{0})\leq \frac{\epsilon}{2}\end{align}$$
>>2. Y sabemos que podemos tomar $m_{0}$ suficientemente grande y de continuidad como para que $1-F_{0}(m_{0})$ sea "muy chico" y $F_{0}(-m_{0})$ tambien lo sea. Por eso la ultima desigualdad
>>3. Por hipotesis de convergencia en distribucion podemos tomar $n_{0}$ tal que $|F_{n}(m_{0})-F_{0}(m_{0})|< \frac{\epsilon}{4}\quad|F_{n}(-m_{0})-F_{0}(-m_{0})|\quad\forall n\geq n_{0}$
>>4. Finalmente $$\begin{align} P(|X_{n}|>m_{0})&=1-F_{n}(m_{0})-F_{n}(-m_{0})\\&=1-F_{n}(m_{0})+F_{0}(m_{0}) -F_{0}(m_{0})+F_{n}(-m_{0})-F_{0}(-m_{0})+F_{0}(-m_{0})\\&\leq \epsilon\quad\forall n\geq n_{0}\end{align}$$
>>5. Luego tenemos $m_{j}\quad j=1,\ldots,n_{0}-1$ tal que $P(|X_{j}|>m_{j})<\epsilon$ 
>>6. Y finalmente tomamos ${} m=max\{ m_{1},\ldots,m_{n_{0}-1},m_{0} \} {}$ 
>>7. Entonces definitiamente $\sup\limits_{n\in \mathbb{N}}P(|X_{n}|>m)\leq \epsilon$ osea $X_{n}$ esta acotada en probabilidad

^1cdda2

>[!Theorem] Helly-Bray
>Sea $\{ X_{n} \}$ suc de v.a definida en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico. Si $X_n$ esta acotada en proba entonces $\exists \{ X_{n_{j}} \}$ subsucesion tal que $X_{n_{j}}$ converge en distribucion.
>Ademas si todas las sub convergen a la misma distribucion $F$ la sucesion $X_{n}$ tambien converge a $F$    

^06187a

