---
dateCreated: 2025-05-04,18:30
---
>[!Lemma]
>Sea $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico y sea $\{Z_{n}\}$ sucesion de v.a
>(a) Si $\{Z_{n}\}$ sucesion de v.a discretas y $P(Z_{n}=z)=f_{Z_{n}}(z)$ que es su funcion de proba (o densidad) entonces si $\lim_{ n \to \infty }f_{Z_{n}}=f_{Z_{0}}$ (limite puntual para casi todo punto) $$Z_{n}\rightarrow^{\mathcal{D}}Z_{0}$$
>(b) Si $\{Z_{n}\}$ sucesion de v.a continuas con $f_{n}$ la densidad y $\lim_{ n \to \infty }f_{n}=f_{0}$ entonces
>- (i) $\lim_{ n \to \infty }\int_{\mathbb{R}}|f_{n}(t)-f_{0}(t)|d\mu(t)=0$
>- (ii) $\underset{n\rightarrow\infty}{\lim}\underset{A\subseteq \mathbb{R}}{\sup}|\int_{A}f_{n}d\mu -\int_{A}fd\mu |=0$
>- (iii) $Z_{n}\rightarrow^{\mathcal{D}}Z$ 
>>[!Proof]
>>falta copiar

^5e0f31

>[!Definition] Varianza muestra y Media muestral
> - Llamamos varianza muestral a $$\hat{\sigma^{2} }=\frac{1}{n-1}\sum^{\infty}_{i=1} (X_{i}-\hat{\mu })^{2}$$
>Abriendo el cuadrado es facil ver que $E(\hat{\sigma^{2}})=\sigma^{2}$ 
>- Llamamamos media muestra a 
>$$\hat{\mu }=\frac{1}{n}\sum^{\infty}_{i=1} X_{i}$$
>Tambien es directo ver $E(\hat{\mu })=\mu$ 

^9238a3

>[!Proposition] TCL Para Var Muestral
>$$\sqrt{ n }(\hat{\sigma^{2}} - \sigma^{2} )\xrightarrow{\mathcal{D}}N(0,V(X_{1}^{2}))$$  
>>[!Proof]-
>>1. Notar que $$\sum^{\infty}_{i=1} (X_{i}-\overline{X} )^{2}=\sum^{\infty}_{i=1} [(X_{i}-\mu )-(\overline{X} -\mu )]^{2}$$
>>Donde $E(X_{i}-\mu )=0$. Con lo cual podemos asumir que $X_{i}$ son v.a de esperanza 0 
>>2. $\sum^{n}_{i=1}(X_{i}-\overline{X})^{2}=[\sum^{n}_{i=1}X_{i}^{2}]-n\overline{X}^{2}$ (haciendo cuentas faciles)
>>3. Luego $$\hat{\sigma^{2}}=\frac{1}{n-1}\sum^{n}_{i=1} (X_{i}-\mu )^{2}=\frac{1}{n-1}\left( \left[\sum^{n}_{i=1} X_{i}^{2}\right]-n\overline{X} ^{2} \right)$$
>>4. $$\begin{align}\sqrt{ n }(\hat{\sigma^{2}}-\sigma^{2})&=\sqrt{ n }\left[ \frac{1}{n-1}\left( \sum^{n}_{i=1} X_{i}^{2}-n\overline{X} ^{2} \right)-\sigma^{2} \right]\\&=\frac{n}{n-1}\left[ \sqrt{ n }\left( \sum^{n}_{i=1} \frac{X_{i}^{2}}{n}-\sigma^{2} \right)  \right]+\frac{\sqrt{ n }}{n-1}\sigma^{2}-\frac{n}{n-1}\sqrt{ n } \frac{1}{n}(\sqrt{ n }\overline{X} )^{2}\end{align}$$
>>5. Ahora notemos que por TCL (considerando $EX_{i}^{2}=V(X_{i}^{2})-(EX_{i})^{2}=V(X_{i}^{2})$ ) $$\sqrt{ n }\left( \sum^{n}_{i=1} \frac{X_{i}^{2}}{n}-\sigma^{2} \right)\xrightarrow{\mathcal{D}}N(0,V(X_{i}^{2}))$$
>>6. Usando esto y Slutzky en 4. llegamos a lo que queriamos

^e30273


>[!Theorem] Berry-Essen
>Sea $(X_i)$ vaiid tal que $0 < V(X_i) < \infty$ y $\mu_{3}=E | X_i - \mu |^3 < \infty$
>Si $$F_n(t) = P\left(\sqrt{n}\frac{ (\overline{X} - \mu)}{\sigma}\leq t\right) $$
>entonces se cumple
>$$\sup_{t\in \mathbb{R}} |F_n(t) - \Phi(t)| \leq \frac{33}{4} \frac{\mu_3}{63\sqrt{n}}$$

^3ac48c

>[!Theorem] Polya
>Sea $X_n$ suc de v.a tales que $X_{n}\xrightarrow{\mathcal{P}}X$ $X_n \sim Fn$ y $F_{0}$ es continua entonces $$\lim_{n \to \infty} |F_n(t) - F_0(t)| = 0$$

^2efc95


