---
dateCreated: 2025-04-02,17:25
---

>[!Proposition] Funciones continuas preservan convergencias
>Si $\{X_{n}\}$ sucesion de v.a en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico entonces si $g:\mathbb{R}\rightarrow\mathbb{R}$ es continua se cumple
>(a) Si $X_{n}\rightarrow^{pp} X_{0}$ entonces $g(X_{n})\rightarrow^{pp} g(X_{0})$
>(b) Si $X_{n}\rightarrow^{\mathcal{P}}X_{0}$ entonces $g(X_{n})\rightarrow^{\mathcal{P}}g(X_{0})$           
>(c) Si $X_{n}\rightarrow^{\mathcal{D}}X_{0}$ entonces $g(X_{n})\rightarrow^{\mathcal{D}}g(X_{0})$
>>[!Proof]-
>>(a)
>>1.  Tenemos que $P(\{ w\in \Omega:\lim_{ n \to \infty } X_{n}(w)=X_{0}(w) \})=1$ entonces $P(\{ w\in \Omega:\lim_{ n \to \infty } g(X_{n}(w))=g(X(w)) \})=1$ por continuidad de $g$  
>>
>>(b)
>>
>>1. Usaremos el siguiente resultado. $X_{n}\rightarrow^{\mathcal{P}} X$ si y solo si dado $X_{n_{j}}$ sub de $X_{n}$ existe $X_{n_{j_{k}}}$ sub de $X_{n_{j}}$ tal que $X_{n_{j_{k}}}\rightarrow^{pp} X$     
>>2. Tomemos $g(X_{n_{j}})$ una sub cualquiera de $g(X_{n})$
>>3. Ahora como $X_{n}\rightarrow^{\mathcal{P}}X$ y $X_{n_{j}}$ es sub de $X_{n}$ por el resultado tenemos $X_{n_{j_{k}}}\rightarrow^{pp}X$
>>4. Como $g$ es continua, por (a) $g(X_{n_{j_{k}}})\rightarrow^{pp}g(X)$   
>>5. Entonces dada cualquier sub de $g(X_{n})$ encontramos una sub sub que converge a $g(X)$ por lo tanto $g(X_{n})\rightarrow^{\mathcal{P}}g(X)$ usando el resultado nuevamente  
>>
>>(c)
>>
>>1. Tenemos que $X_{n}\rightarrow^{\mathcal{D}}X_{0}$ entonces por teorema [[IE - Teorico 3#^82f172]] $\exists \{ X_{n}^{*} \}$ suc de v.a tal que $X_{n}^{*}\rightarrow^{pp} X_{0}^{*}$ y $X_{n}\sim X_{n}^{*}\quad\forall n\in \mathbb{N}_{0}$
>>2. Usando (1) $g(X_{n}^{*})\rightarrow^{pp} g(X_{0}^{*})$ 
>>3. Por lo tanto $g(X_{n}^{*})\rightarrow^{\mathcal{D}}g(X_{0}^{*})$
>>4. Entonces $g(X_{n})\rightarrow^{\mathcal{D}} g(X)$  (Por que $X_{n}\sim X_{n}^{*}$ entonces $g(X_{n})\sim g(X_{n}^{*})$)

^b72136

>[!Theorem] Ley Fuerte de los grandes numeros
Sea $\{ X_{n} \}$ suc de v.a iid en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico. Si $E|X_{1}|<\infty$ entonces $$\frac{1}{n}\sum^{n}_{i=1}X_{i}\longrightarrow^{pp} E(X_{1})$$
Version debil $$\frac{1}{n}\sum^{n}_{i=1} X_{i}\longrightarrow^{\mathcal{P}}E(X_{1})$$

^d948e2

>[!Remark]-
>Si tenemos $X_{1},\ldots,X_{n}$ v.a.i.i.d tal que $X_{1}\sim N(\mu,\sigma^{2})$ sucede $$\sum^{n}_{i=1} X_{i}\sim N(\mu,\sigma^{2})$$
>luego $$\frac{1}{n}\sum^{n}_{i=1} X_{i}\sim N(n\mu,\frac{1}{n}\sigma^{2})$$
>por lo tanto $$\frac{\frac{1}{n}\sum^{n}_{i=1} X_{i}-\mu}{\sqrt{\frac{\sigma^{2}}{n} }} \sim N(0,1)$$
>Con lo cual $$\sqrt{ n }.\frac{(\frac{1}{n}\sum^{n}_{i=1} X_{i})-\mu }{\sigma}\sim N(0,1)$$

>[!Theorem] Teorema central del limite
>$\{X_{n}\}_{n\in\mathbb{N}}$ sucesion de variables aleatorias i.i.d en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico tal que $0<E(X_{1}^{2})<\infty$ y $E(X_{i})=\mu$ $V(X_{i})=\sigma^{2}$  entonces $$\lim_{ n \to \infty } P\left( \sqrt{ n }\frac{\overline{X_{n}} -\mu }{\sigma}\leq t \right)=\Phi(t)$$
>Analogamente $$\sqrt{ n }.\left( \frac{\overline{X}_{n} -\mu}{\sigma}  \right)\rightarrow^{\mathcal{D}}\mathcal{N}(0,1)$$
>O si no $$\sqrt{ n }(\overline{X_{n}} -\mu )\xrightarrow{\mathcal{D}}N(0,\sigma^{2})$$  

^25a7ae

>[!Remark]- Velocidad o Tasa de convergenicia
>El valor de $\sqrt{ n }$ se nombra tasa o velocidad de convergencia

>[!Remark]
>No todas las funciones de una muestra $X_{1},\ldots,X_{n}$ tienen tasa de convergencia $\sqrt{ n }$ ni convergen a la distribucion normal  

>[!Example] 
>Sea $\{X_{n}\}$ sucesion de v.a i.i.d tales que $X_{1}\sim\mathcal{U}(0,\theta)$ con $\theta>0$ entonces la funcion $n(\theta-X_{(n)})$ (con $X_{(n)}$ el maximo) no converge a una distribucion normal y tiene tasa de convergencia $n$         
>>[!Proof]-
>>1. Sea $\{X_{n}\}_{n\in\mathbb{N}}$ sucesion de variables aleatorias i.i.d tales que $X_{1}\sim \mathcal{U}(0,\theta)$ con $\theta>0$
>>2. Por definicion $X_{(1)}(w)\leq \ldots\leq X_{(n)}(w)\leq \theta$ ($X_{(n)}(w)$ va a ser el mas cercano a $\theta$)
>>3. $P(n(\theta-X_{(n)})\leq t)=0$ si $t\leq 0$ y $P(n(\theta-X_{(n)})\leq t)=P\left( X_{(n)}\geq\theta-\frac{t}{n} \right)=1-P\left( X_{(n)}\leq \theta-\frac{t}{n} \right)$
>>4. Como $X_{(n)}=max({X_{1},\ldots,X_{n}})$ 3. es igual a $1-(F_{X_{1}}\left( \theta-\frac{t}{n} \right))^{n}$ 
>>5. Notar que $F_{X_{1}}(x)=\frac{x}{\theta}I_{(0,\theta]}(x)+I_{(\theta,\infty]}(x)$ que es la f.d.a de $\mathcal{U}(0,\theta)$
>>6. Considerando que queremos ver comportamiento tendiendo a infinito asumimos un $N_{0}$ tal que $\forall n\geq N_{0}$ suceda $0\leq \theta-\frac{t}{n}\leq \theta$ 
>>7. Luego 4. es igual a $1-\left[ \frac{1}{\theta}\left( \theta-\frac{t}{n} \right) \right]^{n}=1-\left( 1-\frac{t}{\theta n} \right)^{n}$ que tiende a $1-e^{-t/\theta}$ cuando $n$ tiende a infinito  
>>8. Entonces $$P(n(\theta-X_{(n)})\leq t))\longrightarrow_{n\rightarrow\infty} H(t)= \begin{cases} 0 & \text{if } t < 0\\ 1-e^{-t/\theta}   & \text{if } t\geq 0\end{cases}$$
>>9. Y $$h(t)=H'(t)= \begin{cases} 0 & \text{if } t < 0\\ \frac{1}{\theta}e^{-t/\theta}  & \text{if } t\geq 0\end{cases}$$
>>10. Que es el caso conocido de una distribucion exponencial con parametro $\frac{1}{\theta}$  
>>11. Entonces $n(\theta -X_{(n)})\rightarrow^{\mathcal{D}}\mathcal{E}\left( \frac{1}{\theta} \right)$  

>[!Example]
>$X_{1},\ldots,X_{n}$ con $X_{i}\sim \mathcal{U}(0,\theta)$ entonces $X_{(n)}\rightarrow^{\mathcal{P}}\theta$ 
>>[!Proof]- 
>>1. Veamos primero que converge en distribucion a $\theta$   y como es constante estariamos
>>2. $$F_{X_{(n)}}(x)=P(X_{(n)}\leq x)=\bigg[P(X_{1}\leq x)\bigg]^{n}=\begin{cases} 0 & \text{if } x < 0\\ (\frac{x}{\theta})^{n}   & \text{if } 0 \leq x\leq \theta \\ 1 & \text{if }\theta< x\end{cases}\longrightarrow^{n\rightarrow \infty} \begin{cases} 0 & \text{if } x \leq \theta \\ 1& \text{if } x> \theta \end{cases}=P(\theta\leq x)=F_{\theta}(x)$$
>>3. Mostrando convergencia en distribucion. Osea $X_{(n)}\rightarrow^{\mathcal{D}}\theta$ por lo tanto $X_{(n)}\rightarrow^{\mathcal{P}}\theta$  
