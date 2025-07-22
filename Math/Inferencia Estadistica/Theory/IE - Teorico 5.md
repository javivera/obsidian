---
dateCreated: 2025-04-09,18:24
---
>[!Theorem] Lema de Slutzky
>$\{X_{n}\}_{n\in\mathbb{N}}$ y $\{ Y_{n} \}_{n\in \mathbb{N}}$ sucesiones de variables aleatorias. definidas en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico. Entonces
>(a) Si $X_{n}\rightarrow^{pp}$ y $Y_{n}\rightarrow^{pp}Y_{0}$ entonces $$X_{n}+Y_{n}\longrightarrow^{pp} X_{0}+Y_{0}$$  $$X_{n}.Y_{n}\rightarrow^{pp}X_{0}.Y_{0}$$
>
>(b) Si $X_{n}\rightarrow^{\mathcal{P}}X_{0}$ e $Y_{n}\rightarrow^{\mathcal{P}}Y_{0}$ entonces $$X_{n}+Y_{n}\rightarrow^{\mathcal{P}}X_{0}+Y_{0}$$  $$X_{n}Y_{n}\rightarrow^{\mathcal{P}}X_{0}Y_{0}$$ 
>(c) Si $X_{n}\rightarrow^{\mathcal{D}}X_{0}$ e $Y_{n}\rightarrow^{\mathcal{D}}Y_{0}$ con $P(Y_{0}=y_{0})=1\quad y_{0}\in \mathbb{R}$ entonces
>$$X_{n}+Y_{n}\rightarrow^{\mathcal{D}}X_{0}+Y_{0}$$ $$X_{n}.Y_{n}\rightarrow^{\mathcal{D}}X_{0}.Y_{0}$$
>>[!Proof]-
>>(a) 
>>Suma
>>1. Sea $A = \{\omega \in \Omega : \lim_{n\to\infty} X_n(\omega) = X_0(\omega)\}$ entonces $P(A) = 1$ por hipotesis
>>2. Analogamente $B = \{\omega \in \Omega : \lim_{n\to\infty} Y_n(\omega) = Y_0(\omega)\}$ entonces $P(B)=1$  
>>2. Entonces $P(A\cap B)=P(A)+P(B)-P(A\cup B)\geq 1 + 1 - 1=1$ por lo tanto $P(A\cap B)=1$  
>>3. Notemos ${} \lim\limits_{n\to\infty} (X_n(\omega) + Y_n(\omega)) = \lim\limits_{n\to\infty} X_n(\omega) + \lim\limits_{n\to\infty} Y_n(\omega) = X_0(\omega) + Y_0(\omega). {}$
>>4. Entonces si ${} C=\left\{  \lim\limits_{n\to\infty} (X_n(\omega) + Y_n(\omega)) =X_{0}(w)+Y_{0}(w)\right\} {}$ tenemos $A\cap B\subseteq C$  
>>5. Por lo tanto $P(C)\geq P(A\cap B)=1$ mostrando $P(C)=1$  
>>6. O diciendolo de otra forma $X_{n}+Y_{n}\xrightarrow{pp} X_{0}+Y_{0}$
>>
>>Multiplicacion
>>1. La misma idea que suma pero en 3. tendriamos $\lim_{n\to\infty} X_n(\omega) Y_n(\omega) = \left(\lim_{n\to\infty} X_n(\omega)\right) \left(\lim_{n\to\infty} Y_n(\omega)\right) = X_0(\omega) Y_0(\omega).$
>>
>>(b)
>>Suma
>>1. Dado $w\in \Omega$ sucede ${} \big\{w\in \Omega:|(X_n + Y_n)(w) - (X_0 + Y_0)(w)| >\epsilon\big\} \subseteq \{w:|(X_n(w) - X_0(w)| >\epsilon /2\} \cup \{w: |Y_n(w) - Y_0(w)|> \epsilon /2\} {}$ 
>>2. Por lo tanto $P(|X_n - X_0| + |Y_n - Y_0| \geq \epsilon)\leq P(|X_n - X_0| > \epsilon/2) +P(|Y_{n}-Y_{0}|> \epsilon/2)$ 
>>3. Y por hipotesis $P(|X_{n}-X_{0}|> \epsilon /2) \rightarrow 0$ y $P(|Y_{n}-Y_{0}|> \epsilon /2) \rightarrow 0$ 
>>4. Mostrando que $P(|X_n - X_0| + |Y_n - Y_0| \geq \epsilon) \rightarrow 0$ 
>>
>>Multiplicacion (Podiamos hacer esto para la suma) 
>>1. Dada sub $X_{n_{j}}Y_{n_{j}}$ usamos que $X_{n}$ e $Y_{n}$ convergen en distribucion para encontrar $X_{n_{j_{k}}}Y_{n_{j_{k}}}$ que converge puntual a $X_{0}Y_{0}$
>>2. Como esto lo podemos hacer para cualquier sub sucede que $X_{n}Y_{n}\xrightarrow{\mathcal{D}}X_{0}Y_{0}$ 
>>
>>(c)
>>1. Como $Y_{n}\rightarrow^{\mathcal{D}}Y_{0}$ (que es constante) entonces $Y_{n}\rightarrow^{\mathcal{P}}Y_{0}$ osea $\forall \varepsilon>0$ sucede $P\left(\left|Y_{n}-Y_{0}\right|>\varepsilon\right) \xrightarrow{n \rightarrow \infty} 0$
>>2. $P(|Y_{n}-Y_{0}|>\epsilon)=P(Y_{n}-Y_{0}>\epsilon) + P(Y_{n}-Y_{0}< -\epsilon) - P([Y_{n}-Y_{0}< - \epsilon] \cap [Y_{n}-Y_{0}> \epsilon]) = P(Y_{n}-y_{0}>\epsilon)+P(Y_{n}-y_{0}<-\epsilon)$ 
>>3. Osea $\lim_{ n \to \infty }P(Y_{n}-y_{0}>\epsilon)=0=\lim_{ n \to \infty }P(Y_{n}-y_{0}<-\epsilon)$ (ambos son mayores iguales que 0) 
>>4. Por otro lado tomando $g(x)=x+Y_{0}$ es continua por lo tanto $X_{n}+Y_{0}=g(X_{n})\rightarrow^{\mathcal{D}}g(X_{0})=X_{0}+Y_{0}$    
>>5. Ahora $$[X_{n}+Y_{n}\leq t]=\bigg([X_{n}+Y_{n}\leq t]\cap[Y_{n}\geq y_{0}-\epsilon]\bigg)\bigcup\bigg([X_{n}+Y_{n}\leq t]\cap[Y_{n}<y_{0}-\epsilon]\bigg)$$
>>6. Por lo tanto considerando $\big([X_{n}+Y_{n}\leq t]\cap[Y_{n}\geq y_{0}-\epsilon]\big)\bigcap \big([X_{n}+Y_{n}\leq t]\cap[Y_{n}<y_{0}-\epsilon]\big)=\emptyset$ y ${} [X_{n}+Y_{n}\leq t]\cap[Y_{n}<y_{0}-\epsilon]\subseteq [Y_{n}<y_{0}-\epsilon] {}$  
>>$$P(X_{n}+Y_{n}\leq t)\leq P\big([X_{n}+Y_{n}\leq t] \ \cap \ [Y_{n}\geq y_{0}-\epsilon]\big)+P(Y_{n}<y_{0}-\epsilon)$$
>>7. Sea $A=[X_{n}+Y_{n}\leq t]\cap[Y_{n}\geq y_{0}-\epsilon]$. Sea $w\in A$ entonces $$X_{n}(w)+Y_{n}(w)\leq t \\\ \land \\\ Y_{n}(w)\geq y_{0}-\epsilon \Longrightarrow  X_{n}(w)+y_{0}-\epsilon\leq t \Longrightarrow X_{n}(w)+y_{0}\leq t+\epsilon$$  
>>8. Por lo tanto de 6. usando 7. llegamos a $$P(X_{n}+Y_{n}\leq t)\leq P(X_{n}+y_{0}\leq t+\epsilon)+P(Y_{n}-y_{0}<-\epsilon)$$
>>9. Luego $$\overline{\lim_{ n \to \infty } } P(X_{n}+Y_{n}\leq t)\leq \overline{\lim_{ n \to \infty } } P(X_{n}+y_{0}\leq t+\epsilon)+ \overline{\lim_{ n \to \infty } } P(Y_{n}-y_{0}\leq -\epsilon)\underset{3.}{=}P(X_{0}+y_{0}\leq t+\epsilon)$$
>>10. Con un razonamiento analogo. Usando $$[X_{n}+Y_{n}> t]=\bigg([X_{n}+Y_{n}> t]\cap[Y_{n}\leq  y_{0}+\epsilon']\bigg)\bigcup\bigg([X_{n}+Y_{n}>t]\cap[Y_{n}>y_{0}+\epsilon']\bigg)$$ y de forma similar a 7. 8. llegamos a $$P(X_{n}+Y_{n}>t)\leq P(X_{n}+y_{0}>t-\epsilon')+P(Y_{n}>y_{0}+\epsilon')$$
>>11. Por lo tanto $$\overline{\lim_{ n \to \infty } } P(X_{n}+Y_{n}>t)\leq \overline{\lim_{ n \to \infty } } P(X_{n}+y_{0}>t-\epsilon')+\overline{\lim_{ n \to \infty } } P(Y_{n}-y_{0}\geq\epsilon')\underset{3.}{=} P(X_{0}+y_{0}>t-\epsilon')$$
>>12. Luego $$1+\overline{\lim_{ n \to \infty } } - P(X_{n}+Y_{n}<t)\leq 1-P(X_{0}+y_{0}\leq t-\epsilon')$$ por lo tanto $$-\underline{\lim_{ n \to \infty } }P(X_{n}+Y_{n}<t)\leq -P(X_{0}+y_{0}\leq t-\epsilon')$$
>>13. Finalmente $$\underline{\lim_{ n \to \infty } }P(X_{n}+Y_{n}<t)\geq P(X_{0}+y_{0}\leq t-\epsilon')$$
>>14. Ahora si juntamos 9. y 12. llegamos a $$P(X_{0}+y_{0}\leq t+\epsilon')\underset{12.}{\leq}\underline{\lim_{ n \to \infty } }P(X_{n}+Y_{n}<t)\leq \overline{\lim_{ n \to \infty } } P(X_{n}+Y_{n}<t)\underset{9.}{\leq}P(X_{0}+y_{0}\leq t+\epsilon)$$
>>15. Como esto vale $\forall \epsilon,\epsilon'>0$ entonces $$\lim_{ n \to \infty }P(X_{n}+Y_{n}\leq t)=P(X_{0}+y_{0}\leq t)=P(X_{0}+Y_{0}\leq t)$$

^d08ce4

^f9e71a

>[!Example] Contraejemplo a Slutzky
>1. Sea $X_{n}\sim Ber\left( \frac{1}{2} \right)$ definimos $Y_{n}=1-X_{n}$ 
>2. Es trivial ver que $X_{0},Y_{0}\sim Ber\left( \frac{1}{2} \right)$ son los limites respectivos
>3. Y por lo tanto $X_{n}+Y_{n}\sim Bin\left( 2, \frac{1}{2} \right)$ 
>4. Sin embargo $X_{n}+Y_{n}\equiv1$ 
>5. Mostrando que la convergencia no se da

^2febbc

>[!Example] Una especie de Teorema Central Limite
>Sea $\alpha < \frac{1}{2}$ entonces $n^{\alpha }(\overline{X}_{n}-\mu )=\frac{n^{\alpha }}{n^{1/2}}\sqrt{n }(\overline{X_{n}}-\mu )\rightarrow^{\mathcal{D}}0$ usando Slutzky y [[IE - Teorico 4#^25a7ae]]

>[!Theorem] Metodo Delta
>Sea $\{X_{n}\}$ sucesion de v.a en $(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico tales que $$a_{n}(X_{n}-b)\rightarrow^{\mathcal{D}}X_{0}$$
>con $\{ a_{n} \}\subseteq \mathbb{R}$ tal que $a_{n}\rightarrow\infty$ entonces:
>(a) ${} X_{n}\rightarrow^{\mathcal{D}}b {}$
>(b) Si $g:\mathbb{R}\rightarrow\mathbb{R}$ derivable entonces $$a_{n}\bigg(g(X_{n})-g(b)\bigg)\rightarrow^{\mathcal{D}}g'(b)X_{0}$$
>>[!Proof]-
>>(a)
>>1. $(X_{n}-b)=\frac{1}{a_{n}}a_{n}(X_{n}-b)\rightarrow^{\mathcal{D}}0$. Esto vale por que $\frac{1}{a_{n}}\rightarrow^{\mathcal{P}}0$ entonces $\frac{1}{a_{n}}\rightarrow^{\mathcal{D}}0$ y $a_{n}(X_{n}-b)\rightarrow^{\mathcal{D}}X_{0}$
>>2. Multiplicando llegamos a que ${} X_{n}-b\xrightarrow{\mathcal{D}}0 {}$ por lo tanto ${} X_{n}\rightarrow^{\mathcal{D}}b {}$
>>
>>(b)
>>1. $g:\mathbb{R}\rightarrow\mathbb{R}$ derivable entonces definimos $h:\mathbb{R}\rightarrow\mathbb{R}$ dada como
>>$$h(x)=\begin{cases} \frac{g(x)-g(b)}{x-b} \quad & x\neq b\\ g'(b)\quad & x=b\end{cases}$$
>> que es continua por que $g$ es derivable.
>>2. Luego $g(X_{n})-g(b)=\frac{g(X_{n})-g(b)}{X_{n}-b}(X_{n}-b)$ (Si $X_{n}\neq b$) por lo tanto $$a_{n}(g(X_{n})-g(b))=h(X_{n})a_{n}(X_{n}-b)$$
>>3. Ahora notamos $h(X_{n})\rightarrow^{\mathcal{D}}h(b)=g'(b)$ por que $h$ es continua y por (a).
>>4. Ademas $a_{n}(X_{n}-b)\rightarrow^{\mathcal{D}}X_{0}$ por hipotesis
>>5. Por lo tanto usando [[IE - Teorico 5#^f9e71a]] ($g'(b)$ es una constante) llegamos a   $$a_{n}(g(X_{n})-g(b))\rightarrow^{\mathcal{D}}g'(b)X_{0}$$

^a03e90


