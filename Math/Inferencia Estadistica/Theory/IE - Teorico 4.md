---
dateCreated: 2025-04-02,17:25
---

>[!Proposition] Funciones continuas preservan convergencias
>Si $\{X_{n}\}$ sucesion de v.a en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico entonces si $g:\mathbb{R}\rightarrow\mathbb{R}$ es continua se cumple
>(1) Si $X_{n}\rightarrow^{pp} X_{0}$ entonces $g(X_{n})\rightarrow^{pp} g(X_{0})$
>(2) Si $X_{n}\rightarrow^{\mathcal{P}}X_{0}$ entonces $g(X_{n})\rightarrow^{\mathcal{P}}g(X_{0})$           
>(3) Si $X_{n}\rightarrow^{\mathcal{D}}X_{0}$ entonces $g(X_{n})\rightarrow^{\mathcal{D}}g(X_{0})$
>>[!Proof]
>>(a)
>>1.  Tenemos que $P(\{ w\in \Omega:\lim_{ n \to \infty } X_{n}(w)=X_{0}(w) \})=1$ entonces $P(\{ w\in \Omega:\lim_{ n \to \infty } g(X_{n}(w))=g(X(w)) \})=1$ por continuidad de $g$  
>>
>>(b)
>>
>>2. asd
>>3. 
>>
>>(c)
>>
>>4. Tenemos que $X_{n}\rightarrow^{\mathcal{D}}X_{0}$ entonces por teorema [[#^82f172]] $\exists \{ X_{n}^{*} \}$ suc de v.a tal que $X_{n}^{*}\rightarrow^{pp} X_{0}^{*}$ y $X_{n}\sim X_{n}^{*}\quad\forall n\in \mathbb{N}_{0}$      
>>5. Usando (1) $g(X_{n}^{*})\rightarrow^{pp} g(X_{0}^{*})$ 
>>6. Por lo tanto $g(X_{n}^{*})\rightarrow^{\mathcal{D}}g(X_{0}^{*})$
>>7. Entonces $g(X_{n})\rightarrow^{\mathcal{D}} g(X)$  (Por que $X_{n}\sim X_{n}^{*}$ entonces $g(X_{n})\sim g(X_{n}^{*})$ )

>[!Theorem] Ley Fuerte de los grandes numeros
Sea $\{ X_{n} \}$ suc de v.a iid en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico. Si $E|X_{1}|<\infty$ entonces $$\frac{1}{n}\sum^{n}_{i=1}X_{1}\longrightarrow^{pp} E(X_{1})$$
($X_{1}\sim X_{i}$)
(Version debil $\frac{1}{n}\sum^{n}_{i=1} X_{1}\longrightarrow^{\mathcal{P}}E(X_{1})$)

>[!Remark]-
>Si tenemos $X_{1},\ldots,X_{n}$ v.a.i.i.d tal que $X_{1}\sim N(\mu,\sigma^{2})$ sucede $$\sum^{n}_{i=1} X_{i}\sim N(\mu,\sigma^{2})$$
>luego $$\frac{1}{n}\sum^{n}_{i=1} X_{i}\sim N(n\mu,\frac{1}{n}\sigma^{2})$$
>por lo tanto $$\frac{\frac{1}{n}\sum^{n}_{i=1} X_{i}-\mu}{\sqrt{\frac{\sigma^{2}}{n} }} \sim N(0,1)$$
>Con lo cual $$\sqrt{ n }.\frac{(\frac{1}{n}\sum^{n}_{i=1} X_{i})-\mu }{\sigma}\sim N(0,1)$$

>[!Theorem] Teorema central del limite
>$\{X_{n}\}_{n\in\mathbb{N}}$ sucesion de variables aleatorias i.i.d en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico tal que $0<E(X_{1}^{2})<\infty$ entonces $$\lim_{ n \to \infty } P\left( \sqrt{ n }\frac{\frac{1}{n}\sum^{n}_{i=1} X_{i}-\mu }{\sigma}\leq t \right)=\Phi(t)$$
>Analogamente $$\sqrt{ n }.\left( \frac{\overline{X}_{n} -\mu}{\sigma}  \right)\rightarrow^{\mathcal{D}}\mathcal{N}(0,1)$$     

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
>>12. Veamos primero que converge en distribucion a $\theta$   y como es constante estariamos
>>13. $$F_{X_{(n)}}(x)=P(X_{(n)}\leq x)=\bigg[P(X_{1}\leq x)\bigg]^{n}=\begin{cases} 0 & \text{if } x < 0\\ (\frac{x}{\theta})^{n}   & \text{if } 0 \leq x\leq \theta \\ 1 & \text{if }\theta< x\end{cases}\longrightarrow^{n\rightarrow \infty} \begin{cases} 0 & \text{if } x \leq \theta \\ 1& \text{if } x> \theta \end{cases}=P(\theta\leq x)=F_{\theta}(x)$$
>>14. Mostrando convergencia en distribucion. Osea $X_{(n)}\rightarrow^{\mathcal{D}}\theta$ por lo tanto $X_{(n)}\rightarrow^{\mathcal{P}}\theta$  

\ref