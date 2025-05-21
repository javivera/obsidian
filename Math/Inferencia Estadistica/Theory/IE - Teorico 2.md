---
dateCreated: 2025-03-25,17:56
dg-publish: true
---
>[!Definition] Convergencia en casi todo punto
>Sea $\{ X_{n} \}_{n\in \mathbb{N}}$ sucesion de variables aleatorias ($X_{n}:\Omega\rightarrow\mathbb{R}$ medibles) y sea $X:\Omega\rightarrow\mathbb{R}$ variable aleatoria. Se dice que $\{ X_{n} \}$ converge en casi todo punto a $X$ si $$P(\{ w\in \Omega:\lim_{ n \to \infty } X_{n}(w)=X(w) \})=1$$

>[!Definition] Convergencia en Probabilidad
>Sea $\{ X_{n} \}_{n\in \mathbb{N}}$ sucesion de variables aleatorias ($X_{n}:\Omega\rightarrow\mathbb{R}$ medibles) y sea $X:\Omega\rightarrow\mathbb{R}$ variable aleatoria. Se dice que $\{ X_{n} \}$ converge en probabilidad a $X$ si 
>$$\forall \delta >0 \quad\lim_{ n \to \infty } P(|X_{n}-X|>\delta )=0$$
>

>[!Lemma]
>$(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico $\{X_{n}\}_{n\in\mathbb{N}}$ sucesion de variables aleatorias tal que 
>$$X_{n}\rightarrow^{}  X$$
>Entonces $$X_{n}\rightarrow^{\mathcal{P}}X$$ 
>>[!Proof]
>>

>[!Remark]
>No vale la reciproca

>[!Definition] Convergencia en media cuadratica
>$\{ X_{n} \}_{n\in \mathbb{N}}$ se dice que $X_{n}$ converge en media cuadratica a $X$ v.a si $$\lim_{ n \to \infty } E((X_{n}-X)^{2})=0$$
>Notacion $X_{n}\rightarrow^{L^{2}}X$  

>[!Remark]
>Si $X_{n}\rightarrow^{L^{2}}X$ entonces $X_{n}\rightarrow^{\mathcal{P}}X$
>>[!Proof]-
>>1. Usando Markov con $t=0$ tenemos que $$P(|X_{n}-X|>\epsilon)\leq \frac{E(|X_{n}-X|^{2})}{\epsilon^{2}}\longrightarrow  0$$
>>2. Por lo tanto $X_{n}\rightarrow^{\mathcal{P}}X$ 
>>3. Aca asumi que $E(|X|^{2})<\infty$ por que necesito eso para probar Markov o que $X$ es absolutamente convergente por que ahi se puede probar sin usar esa hipotesis

>[!Definition] Convergencia en distribucion
>$\{ X_{n} \}$ sucesion de v.a def en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico $X:\Omega\rightarrow\mathbb{R}$ v.a se dice que $X_{n}$ converge en distribucion a $X$ si la sucesion de funciones de distribucion $F_{n}$   de $X_{n}$ converge puntual a la funcion de distribucion $F$ de $X$ esto es $$F_{X_{n}}(t)=P(X_{n}\leq t)\longrightarrow P(X\leq t)= F_{X}(t)\quad \forall t\in \{ \text{Puntos de continuiad de }F_{X} \}$$
>

>[!Remark]
>Observacion de por que hay que omitir discontinuidades (consultar)
>
