---
dateCreated: 2024-10-27,13:06
---
>[!Lemma] DUDA
>Si $\mathcal{H}$ es un Hilbert complejo y $T\in B(\mathcal{H})$ es normal entonces $\sigma(T)$ es un subconjunto de la clausura de $V(T)$    
>>[!Proof]-
>>1. Sea $\lambda\in \sigma(T)$. Sabemos por [[Teórico 15#^81235c]] que $T-\lambda I$ es normal.
>>2. Entonces exite $\{ x_{n} \}\subseteq \mathcal{H}$ con $\lVert x_{n} \rVert=1$ $\forall n\in \mathbb{N}$ y $\lim_{ n \to \infty }\lVert (T-\lambda I) x_{n}\rVert=0$ (DUDA Dice por corolario 6.20) 
>>3. Entonces por C-S $\lim_{ n \to \infty }((T-\lambda I)x_{n},x_{n})=0$
>>4. Luego $\lim_{ n \to \infty }(Tx_{n},x_{n})-\lambda (x_{n},x_{n})=0$
>>5. Como $(x_{n},x_{n})=1\quad\forall n\in \mathbb{N}$ tenemo $\lim_{ n \to \infty }(Tx_{n},x_{n})=\lambda$ entonces $\lambda$ esta en la clausura de $V(T)$ 

^02812c

>[!Theorem]
>Sea $\mathcal{H}$ Hilbert Complejo y $S\in B(\mathcal{H})$ auto adjunto entonces:
>- (a) $V(S)\subseteq \mathbb{R}$ 
>- (b) $\sigma(S)\subseteq \mathbb{R}$ 
>- (c) Al menos $\lVert S \rVert$ o $-\lVert S \rVert$ esta en $\sigma(S)$
>- (d) $r_{\sigma}=\sup\{\lvert \tau \rvert:\tau\in V(S)  \}=\lVert S \rVert$ 
>- (e) $\inf\{ \lambda:\lambda\in \sigma(S) \}\leq \mu\leq \sup\{ \lambda:\lambda\in \sigma(S) \}\quad\forall \mu\in V(S)$
>>[!Proof]
>>(a)
>>

^021010

## Operadores positivos y proyecciones

>[!Corollary]
>Si $\mathcal{H}$ Hilbert y $S\in B(\mathcal{H})$ es auto adjunto son equivalentes:
>- (a) $\sigma(S)\subseteq [0,\infty)$ 
>- (b) $(Sx,x)\geq0\quad\forall x\in \mathcal{H}$ 
>>[!Proof]
>>1. La ida vale por [[Teórico 16#^021010]]
>>2.La vuelta vale por [[Teórico 16#^02812c]]

>[!Definition] Operador Positivo
>Sea $\mathcal{H}$ un Hilbert complejo y $S\in B(\mathcal{H})$. $S$ se dice positivo si es auto adjunto y 
>$$(Sx,x)\geq0\quad\forall x\in \mathcal{H}$$

>[!Lemma]
>Si $\mathcal{H}$ Hilbert complejo y $S\in B(\mathcal{H},Y)$ es auto adjunto entonces $S$ es positivo si y solo si $\sigma(S)\subseteq [0,\infty)$

>[!Example]
>