---
dateCreated: 2025-03-25,17:56
dg-publish: true
---
>[!Definition]
>Sea ${} (\Omega, \mathcal{A}, P) {}$ un espacio de probabilidad con $\Omega$ espacio muestral $\mathcal{A}$ sigma algebra $\mathcal{A} \subseteq \mathcal{P}(\Omega)$ $p$ medida (de probabilidad) 
>$$P : \Omega \rightarrow [0, 1] \text{ tal que }\quad P(\Omega)=1\quad(A_i)_{i \in I} \in \mathcal{A}$$
>con $I$ finito o numerable. Y ademas $$A_{i}\cap A_{j}=\emptyset\quad\text{ si }\quad a\neq j$$ y $$P\left( \bigcup A_{j} \right)=\sum_{i \in I}P(A_{i})$$ 

>[!Definition] Convergencia en casi todo punto
>Sea $\{ X_{n} \}_{n\in \mathbb{N}}$ sucesion de variables aleatorias ($X_{n}:\Omega\rightarrow\mathbb{R}$ medibles) y sea $X:\Omega\rightarrow\mathbb{R}$ variable aleatoria. Se dice que $\{ X_{n} \}$ converge en casi todo punto a $X$ si $$P(\{ w\in \Omega:\lim_{ n \to \infty } X_{n}(w)=X(w) \})=1$$

^cb3cdc

>[!Definition] Convergencia en Probabilidad
>Sea $\{ X_{n} \}_{n\in \mathbb{N}}$ sucesion de variables aleatorias ($X_{n}:\Omega\rightarrow\mathbb{R}$ medibles) y sea $X:\Omega\rightarrow\mathbb{R}$ variable aleatoria. Se dice que $\{ X_{n} \}$ converge en probabilidad a $X$ si 
>$$\forall \delta >0 \quad\lim_{ n \to \infty } P(|X_{n}-X|>\delta )=0$$
>

^60e0d8

>[!Lemma] Convergencia puntual implica en probabilidad
>$(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico $\{X_{n}\}_{n\in\mathbb{N}}$ sucesion de variables aleatorias tal que 
>$$X_{n}\rightarrow^{ctp}  X$$
>Entonces $$X_{n}\rightarrow^{\mathcal{P}}X$$ 
>>[!Proof]-
>>1. Sea $A = \{\omega \in \Omega : X_n(\omega) \rightarrow X(\omega)\}$
>>2. Notemos que decir $X_{n}(\omega)\rightarrow X(\omega)$ es análogo a decir  $$\forall \epsilon>0 \quad\exists N\in \mathbb{N}  \ / \ \forall n\geq N\quad |X_N(\omega) - X(\omega)|\leq \epsilon$$
>>Que es lo mismo que $\forall r>0 \quad\exists N\in \mathbb{N}  \ / \ \forall n\geq N\quad |X_N(\omega) - X(\omega)|\leq \frac{1}{r}$
>>3. Entonces $$A = \bigcap_{r=1}^\infty \bigcup_{N=1}^\infty \bigcap_{n=N}^\infty \left\{w \in \Omega : |X_n(\omega) - X(\omega)| < \frac{1}{r}\right\}=\bigcap_{r=1}^\infty \bigcup_{n=1}^\infty B_{N,r}$$
>>4. Y notar $\{B_{N,r}\}_{r\in \mathbb{N}}$ es decreciente (por que achico la cota) entonces $\{ \bigcup_{n=N}^{\infty}B_{N,r} \}_{r\in \mathbb{N}}$ es decreciente
>>5. Entonces $$P(A) = P\left(\bigcap_{r=1}^{\infty} \left\{ \bigcup_{N=1}^\infty B_{N,r} \right\}_{r\in I}\right)=\lim_{ r \to \infty }P\left( \bigcup_{N=1}^{\infty}B_{N,r} \right)$$
>>6. Y de forma analoga (considerando $\{ \bigcup_{N=1}^{\infty}B_{N,r} \}_{N\in \mathbb{N}}$ es creciente) $$P\left(\bigcup_{N=1}B_{N,r}\right)=\lim_{ N \to \infty } P(B_{n,r})$$ 
>>7. Por lo tanto (usando hipotesis)  $$1=P(\{\omega \in \Omega : X_n(\omega) \rightarrow X(\omega)\})=P(A)  = \lim_{r\to \infty} P\left( \bigcup_{N=1}^\infty B_{N,r} \right)=\lim_{ r \to \infty } \lim_{ N \to \infty } P(B_{N,r})$$
>>8. Por lo tanto $$\lim_{ N \to \infty } P(B_{N,r_{0}})\geq 1-\epsilon$$ (vale $\forall r\geq r_{0}$ en particular para $r_{0}$) 
>>9. Luego $$P\left( |X_{N}-X|\leq \frac{1}{r_{0}} \right)\geq P\left( \bigcap_{j=N}^{\infty}\left\{  w\in \Omega:|X_{j}(w)-X(w)| \leq \frac{1}{r_{0}} \right\}  \right)=P(B_{N,r_{0}})\geq 1-\epsilon\quad\forall N\geq N_{0}$$
>>10. $$P\left( |X_{N}-X|\geq \frac{1}{r_{0}} \right)\leq\epsilon\quad\forall N\geq N_{0}\in \mathbb{N}$$
>>11. $$\lim_{ N \to \infty } P\left( |X_{N}-X|\geq \frac{1}{r_{0}} \right)=0$$ y esto valia $\forall r\geq r_{0}$ 
>>12. Ahora notar que dado $\delta$ existe $r\geq r_{0}$ tal que ${} \delta \geq \frac{1}{r} {}$ y ademas $$P(|X_{N}-X|\geq \delta )\leq P\left( |X_{N}-X|\geq \frac{1}{r} \right)$$
>>13. Considerando que el limite valia ${} \forall r\geq r_{0} {}$  mostramos finalmente que dado $\delta >0$ tenemos $$\lim_{ N \to \infty } P(|X_{N}-X|\geq \delta )=0$$   

^9d7c4a

>[!Remark] Convergencia en probabilidad no implica puntual contraejemplo
>No vale la reciproca
>>[!Proof]-
>>![[Pasted image 20250709184958.png|100px]]
>>1. Esta claro que podemos armar dos subsucesion $X_{n_{j}}$ y $X_{n_{k}}$ tales que $X_{n_{j}}(x_{1})=1 \quad\forall n_{j}$ osea converge a 1 y $X_{n_{k}}(x_{2})=0$ por lo tanto no convege ctp
>>2. Pero $P(|X_{n}|>\delta )=0$ si $\delta \geq1$ y $P(|X_{n}|\geq\delta )=0$ si $\delta <1$ esto ultimo por que es la medida del segmento que se hace cada vez mas chica tendiendo a 0

^10399c

>[!Definition] Convergencia en media cuadratica
>$\{ X_{n} \}_{n\in \mathbb{N}}$ se dice que $X_{n}$ converge en media cuadratica a $X$ v.a si $$\lim_{ n \to \infty } E((X_{n}-X)^{2})=0$$
>Notacion $X_{n}\rightarrow^{L^{2}}X$  

^588e8b

>[!Remark] Convergencia L2 implica convergencia en probabilidad 
>Si $X_{n}\rightarrow^{L^{2}}X$ entonces $X_{n}\rightarrow^{\mathcal{P}}X$
>>[!Proof]-
>>3. Usando Markov con $t=0$ tenemos que $$P(|X_{n}-X|>\epsilon)\leq \frac{E(|X_{n}-X|^{2})}{\epsilon^{2}}\longrightarrow  0$$
>>4. Por lo tanto $X_{n}\rightarrow^{\mathcal{P}}X$ 
>>5. Aca asumi que $E(|X|^{2})<\infty$ por que necesito eso para probar Markov o que $X$ es absolutamente convergente por que ahi se puede probar sin usar esa hipotesis

^d2a6c6

>[!Definition] Convergencia en distribucion
>$\{ X_{n} \}$ sucesion de v.a def en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico $X:\Omega\rightarrow\mathbb{R}$ v.a se dice que $X_{n}$ converge en distribucion a $X$ si la sucesion de funciones de distribucion $F_{n}$   de $X_{n}$ converge puntual a la funcion de distribucion $F$ de $X$ esto es $$F_{X_{n}}(t)=P(X_{n}\leq t)\longrightarrow P(X\leq t)= F_{X}(t)\quad \forall t\in \{ \text{Puntos de continuiad de }F_{X} \}$$
>

^8c18b3

>[!Remark]-
>Observacion de por que hay que omitir discontinuidades (consultar)
>Para tener una intuicion de porque hay que omitir las discontinuidades en la f.d.a de le v.a limite miremos: $\{X_n\}$ sucesion de v.a $X_n \sim N(0, \frac{1}{n})$
>1. $E X_n = 0 \quad V (X_n) = \frac{1}{n}$
>2. Viendo el grafico de esta sucesion un creeria que el limite es $X\equiv0$
>3. Veamos que $F_{X_n}(t) \rightarrow F_X(t)$ con $$F_X(t) = P(X \leq t) = \begin{cases}0 & t < 0 \\1 & t \geq 0\end{cases}$$
>4. $$F_{X_n}(t) = P(X_n \leq t) = P\left( \frac{X_n}{\sqrt{\frac{1}{n}}} \leq \frac{t}{\sqrt{\frac{1}{n}}} \right)=\Phi(\sqrt{ n }t)\rightarrow \begin{cases}0 & t < 0 \\ \frac{1}{2} & t = 0 \\ 1 & t > 0 
\end{cases}$$ 
>Esto vale por que $\Phi$ es la acumulada de una estandar osea $N(0,1)$  
>5. Entonces si omitimos $t=0$ que es el punto de discontinuidad de $F_{x}$ se cumple la convergencia en distribucion
