---
dateCreated: 2025-05-17,11:28
tags:
  - inferencia
---

>[!Definition] Refinamiento
>Sean $S : \Omega_{X}\rightarrow \mathcal{S}$ y $T:\Omega_{X}\rightarrow \mathcal{T}$ estadisticos y sean $\sigma(S),\sigma(T)$ las menores $\sigma$-algebras que vuelven medibles a $S$ y $T$ respectivamente ($\sigma(S)=S^{-1}(\mathcal{F}_{\mathcal{S}}),\sigma(T)=T^{-1}(\mathcal{F}_{\mathcal{T}})$). 
>Si $\sigma(T)\subseteq \sigma(S)$ entonces decimos $S$ refina a $T$

^7c1e8d

>[!Definition] Estadistico suficiente minimal
>Sea $T : (\Omega_{X},\mathcal{F}_{X})\rightarrow (\mathcal{T},\mathcal{F}_{\mathcal{T}})$ estadistico y sea $\mathcal{P}$ familia de funciones de distribucion sobre $\mathcal{F}_{X}$. $T$ se dice estadistico suficiente minimal para $\mathcal{P}$ sii
>- (i) $T$ es suficiente para $\mathcal{P}$
>- (ii) Si $\mathcal{S}$ es otro estadistico suficiente para $\mathcal{P}$ entonces $S$ refina a $T$

^edeb62


>[!Lemma] Caracterizacion estadistio suf minimal DUDA EN IDA
>Sea $T : \Omega_{X}\rightarrow \mathbb{R}^{k}$ estadistico suficientes. Entonces $T$ es suficiente minimal si y solo si para todo $S : \Omega_{X}\rightarrow \mathbb{R}^{k'}$ estadistico suficiente $\exists r: \mathbb{R}^{k}\rightarrow \mathbb{R}^{k'}$ medible tal que $T=r\circ S$ 
>![[Pasted image 20250517134031.png|600]]
>>[!Proof]-
>>- Ida
>>	1. $T$ suficiente minimal entonces $\sigma(T)\subseteq \sigma(S)$
>>	2. Entonces $T$ es $\sigma(S)$-medible. 
>>	3. Luego definimos $T_{i}=\Pi_{i}\circ T$ (Con $\Pi_{i}:(\mathbb{R}^{k},\mathcal{B}(\mathbb{R}^{k}))\rightarrow(\mathbb{R},\mathcal{B}(\mathbb{R}))$ proyeccion de componenete $i$ y trivialmente medible) 
>>	4. Por lo tanto $T_{i}$ es $\sigma(S)$-medible porque $T_{i}^{-1}=T^{-1}\circ\Pi_{i}^{-1}\in \sigma(T)\subseteq \sigma(S)$
>>	5. Luego $\exists r_{i} : \mathbb{R}^{k'}\rightarrow \mathbb{R}$ medible tal que $T_{i}=r_{i}\circ S$ (No es trivial, lo demostramos en algun lado?? DUDA) 
>>	6. Finalmente $T=r\circ S$ con $r=(r_{1},\ldots,r_{k})$
>>- Vuelta
>>	1. $T=r\circ S$. Sea $B\in \mathcal{B}(\mathbb{R}^{k})$ luego $T^{-1}(B)=(r\circ S)^{-1}(B)=S^{-1}(r^{-1}(B))$
>>	2. Pero $r$ es medible asi que $r^{-1}(B)\in \mathcal{B}(\mathbb{R}^{k'})$
>>	3. Finalmente $\sigma(T)=\{ T^{-1}(B):B\in \mathcal{B}(\mathbb{R}^{k}) \}\subseteq \{ S^{-1}(C):C\in \mathcal{B}(\mathbb{R}^{k'}) \}=\sigma(S)$

^3cd0e6

>[!Lemma] Condiciones para suficiencia
>Sea $\mathcal{P}=\{ P_{\theta}: \theta\in \Theta\}$ flia de funciones de distribucion sobre $\mathcal{F}_{X}$ $\sigma$-algebra de $\Omega_{X}$. Supongamos existe medida $\sigma$-finita $\lambda$ sobre $\mathcal{F}_{X}$ tal que $P_{\theta}<<\lambda$ (Randon-Nikodin nos dice $P_{\theta}(B)=\int_{B}p_{\theta}d\lambda$ con $p_{\theta}\geq 0$).
>Sea $U:\Omega_{X}\rightarrow\mathcal{T}$ estadistico. Entonces una condicion necesaria y suficiente para que $U$ sea suficiente para $\mathcal{P}$ es que si $x\in \Omega_{X}$ entonces $\frac{p_{\theta}(x)}{p_{\theta_{0}}(x)}=g_{\theta,\theta_{0}}(U(x))$ son funciones de $U(x)$ para cada $\theta,\theta_{0}$ fijos
>>[!Proof]- Ejercicio
>>Usar lema facto

^04386c

>[!Lemma] Estadistico minimal en base a familia de distr
>Sea $\mathcal{P}=\{ P_{0},\ldots,P_{k} \}$ y $\Theta=\{ 0,1,\ldots,k \}$ flia de funciones de distribucion con densidad (o derivada R-N) $p_{0},\ldots p_{k}$ respecto de una medida $\sigma$-finita $\lambda$ (osea $P_{\theta}(B)=\int_{B}p_{\theta}(x)\lambda(dx)\quad B\in \mathcal{F}_{X}$ $\sigma$-algebra de $\Omega_{X}$). 
>El *estadistico* definido como $T : \Omega_{X}\rightarrow \mathbb{R}^{k}$ $$T(x)=\left( \frac{p_{1}(x)}{p_{0}(x)},\ldots,\frac{p_{k}(x)}{p_{0}(x)} \right)$$ (podemos elegir cualquier $p_{j}$ para dividir) Es suficiente y minimal para $\mathcal{P}$
>>[!Proof]-
>>- Suficiente
>>	1. $$p_{\theta}(x)=\left[ I_{\{ 0 \}}(\theta)+\frac{p_{1}(x)}{p_{0}(x)}I_{\{ 1 \}}(\theta)+\ldots+\frac{p_{k}(x)}{p_{0}(x)}I_{\{ k \}}(\theta) \right]p_{0}(x)=g(T(x),\theta).p_{0}(x)$$
>>	2. Por lo tanto es suficiente por [[IE - Teorico 16#^0921f6]]
>>- Minimal
>>	1. Debemos ver $\sigma(T)\subseteq \sigma(U)\quad\forall U$ estadistico suficiente
>>	2. Pero es mas directo usar [[IE - Teorico 17#^3cd0e6]] osea ver que $T=g\circ U\quad\forall U$ estadistico suficiente
>>	3. Sea $U$ estadistico suficiente el [[IE - Teorico 17#^04386c]] nos dice $$\frac{p_{1}(x)}{p_{0}(x)}=g_{1}(U(x)),\ldots,\frac{p_{k}(x)}{p_{0}(x)}=g_{k}(U(x))$$
>>	4. Entonces $T=g\circ U$ con $g=(g_{1},\ldots,g_{k})$ como queriamos.
>>	5. Mostrando que es $T$ es minimal

^724d5e

>[!Lemma] Suficiente en el grande y minimal en el chico DUDA 
>Sea $\mathcal{P}$ familia de funciones distribucion y $\mathcal{P}_{0}\subseteq \mathcal{P}$  tal que $T:\Omega_{X}\rightarrow\mathbb{R}^{k}$ es un estadistico suficiente minimal para $\mathcal{P}_{0}$. Luego si $T$ es suficiente para $\mathcal{P}$ entonces es suficiente minimal para $\mathcal{P}$
>>[!Proof]
>>1. Si $U:\Omega_{X}\rightarrow\mathbb{R}^{k}$ es suficiente para $\mathcal{P}$ entonces $U$ es suficiente para $\mathcal{P}_{0}$ 
>>2. Y por hipotesis tenemos $T$ suficiente y minimal para $\mathcal{P}_{0}$ 
>>3. **NO PODEMOS DIRECTO ACA DECIR POR DEF DE MINIMAL** $\sigma(T)\subseteq \sigma(U)$ 
>>4. Por [[IE - Teorico 17#^3cd0e6]] $T=r\circ U$ con $r : \mathbb{R}^{k}\rightarrow \mathbb{R}^{k}$ 
>>5. Por lo tanto $\sigma(T)\subseteq \sigma(U)$ misma demo que en [[IE - Teorico 17#^3cd0e6]]
>>6. Mostrando que $T$ es minimal para $\mathcal{P}$ y por hipotesis tambien es suficiente

^78ab84

>[!Example] Aplicacion del lema DUDA
>$X_{1},\ldots,X_{n}$ vaiid tal que $X_{1}\sim \mathcal{N}(\mu,\sigma^{2})$ con $(\mu,\sigma^{2})\in \mathbb{R}\times(0,\infty)=\Theta$ y $$\mathcal{P}=\{ (X_{1},\ldots,X_{n})\sim\mathcal{N}_{n}(\mu\mathbb{1},\sigma^{2} I_{n\times n}) \ |\ (\mu,\sigma^{2})\in \Theta)\}$$
>Notar que dados parametros ${} (\mu,\sigma^{2}) {}$ $$f(x_{1},\ldots,x_{n})=\frac{1}{(\sqrt{ 2\pi\sigma^{2} })^{n} }exp\left( -\frac{1}{2}\left[ \frac{\sum x_{i}^{2}}{\sigma^{2}}-\frac{2\mu\sum x_{i}}{\sigma^{2}} +\frac{n\mu^{2}}{\sigma^{2}}  \right] \right)*1$$
>Y de ahi es facil ver que $$T(X_{1},\ldots,X_{n})=\left( \sum_{i=1}^{n}  X_{i},\sum_{i=1}^{n}  X_{i}^{2}   \right)$$es suficiente, usando teorema de factorizacion (ej 11 pr 4)
>Ejercicio $$U(X_{1},\ldots,X_{n})=\left( \frac{1}{n}\sum X_{n} ,\frac{1}{n-1}\sum (X_{i}-\overline{X})^{2} \right)$$
>Es suficiente (Por que que hay biyeccion entre U y T osea $U=s(T)$  (ej 1 pr 5))
>Ver que $U=G\circ T$ sale expandiendo el cuadrado no se si es facil ver que es biyectiva
>Veamos que $T$ es minimal
>>[!Proof]
>>1. Sea $\mathcal{P}_{0}=\{ p_{0,1},p_{1,1},p_{0,2} \}\subseteq \mathcal{P}$ sub familia finita de distribuciones normales. Con $p_{0,1}$ densidad de $\mathcal{N}(0,1)$, $p_{1}$ densidad de $\mathcal{N}(1,1)$ y $p_{0,2}$ densidad de $\mathcal{N}(0,2)$
>>2. Ahora miremos 
>$$\frac{p_{1,1}}{p_{0,1}}= \frac{exp\left( -\frac{1}{2}\left[ \sum^{n}_{i=1}X_{i}-2\sum^{n}_{i=1}X_{i}  +n\right] \right)}{exp\left( -\frac{1}{2}\sum^{n}_{i=1}X_{i}^{2} \right)}=exp\left( -\frac{1}{2}\left[\sum^{n}_{i=1}X_{i}+n\right] \right)$$
>$$\frac{p_{0,2}}{p_{0,1}}= \frac{\frac{1}{(\sqrt{ 4\pi })^{n} }exp\left( -\frac{1}{4}\sum^{n}_{i=1} X_{i}^{2} \right)}{\frac{1}{(\sqrt{ 2\pi })^{n} }exp\left( -\frac{1}{2}\sum^{n}_{i=1} X_{i}^{2} \right)}=\frac{1}{(\sqrt{ 2 })^{n} }exp \left( \frac{1}{4}\sum^{n}_{i=1} X_{i}^{2} \right)$$
>3. Entonces $$S=\left(\frac{p_{1,1}}{p_{0,1}},\frac{p_{0,2}}{p_{0,1}}\right)$$es suficiente minimal para $\mathcal{P}$ /// **no veo por que de hecho lema 4 sugiere que no, para usar lema 6 deberia ver que ademas es suficiente para $\mathcal{P}$ (que es suficiente minimal para $\mathcal{P}_{0}$ tengo por lema) E inclusibve teniendo que $S$ suficiente minmal para $\mathcal{P}$ por que $T=r(S)$ imlpica que t es minimmal y $T=r(S)$ entonces $T$ es minimal** 
>Creo que seria algo asi
>4. Por [[IE - Teorico 17#^724d5e]] $S$ es suficiente minimal para $\mathcal{P}_{0}$
>5. Por definicion de $S$ sucede $T$ y $S$ son equivalentes (Mas aun $\exists f$ biyectiva tal que $T=f(S)$. 
>6. Entonces $T$ es suficiente y minimal para $\mathcal{P}_{0}$ 
>7. Como $T$ es suficiente para $\mathcal{P}$ entonces por [[IE - Teorico 17#^78ab84]] es suficiente minimal para $\mathcal{P}$

^1d1193

