---
dateCreated: 2024-10-11,20:30
---
>[!Proposition]
>Supongo $X$ es Banach separable $\{s_{k}\}_{k\in \mathbb{N} }\subseteq X$ denso. $s_{k}\neq 0\quad \forall k\in \mathbb{N}$. Sea $d_{W}:X'\times X'\longrightarrow \mathbb{R}$ dada por $$d_{W}(f,g)=\sum_{k=1}^{\infty} \frac{1}{2^k}\frac{f(s_{k})-g(s_{k})}{\lVert s_{k} \rVert }$$ entonces $d_{W}$ es metrica en $X'$ y si $\{f_{n}\}_{n\in \mathbb{N} }\subseteq X'$  y $f\in X'$ entonce son equivalentes:
>- (a) $\exists c>0$ tal que $\lVert f_{n}\leq c \rVert \quad \forall n\in W$ y $d_{W}(f,f_{n})\xrightarrow{n\rightarrow \infty } 0$  
>- (b) $f_{n}(x)\xrightarrow{n\rightarrow \infty }f(x)\quad \forall x\in X$ 
>>[!Proof]-
>>Tenemos que $d_{W}(f,g)\leq \lVert f-g \rVert$ entonces $d_{W}$ esta bien def y $d_{W}$ es metrica (ej)
>>Veamos $(a)\Rightarrow (b)$
>>1. Tenemos que $d_{W}(f,f_{n})\longrightarrow 0$ y $\frac{1}{2^k}\frac{\lvert f(s_{k})-f_{n}(s_{k}) \rvert}{\lVert s_{k} \rVert }\leq d_{W}(f,f_{n})\quad \forall k\in \mathbb{N}$ fijo y $\forall n\in \mathbb{N}$  
>>2. Luego como $\lvert f(s_{k})-f_{n}(s_{k}) \rvert \xrightarrow{n\rightarrow \infty}0$ entonces $f_{n}(s_{k})\longrightarrow f(s_{k})\quad \forall n\in \mathbb{N}$
>>3. Razonando como en el lema anterio (usando densidad, etc) se tiene que $f_{n}(x)\longrightarrow f(x)\quad \forall x\in X$V
>>
>>Veamos $(b)\Rightarrow (a)$
>>1. $\sup \{\lvert f_{n}(x) \rvert n \in N:  \}$ es finito $\forall x\in X$ 
>>2. Entonces  $\sup \{\lVert f_{n}\rVert n \in N:  \}$ es finito.  (Por Banach- Steinhaus)
>>3. Entonces existe $c>0$ con $\lVert f_{n} \rVert \leq c\quad \forall n\in \mathbb{N}$
>>4. Puedo suponer $f=0$ si no tomaria $g_{n}=f_{n}-f$. Es decir asumimos $\lim_{n=1}^{\infty}f_{n}(x)=0 \quad \forall x\in X$ 
>>5. Como $\lvert f_{n}(s_{k})\rvert \leq \lVert f_{n} \rVert \lVert s_{k} \rVert$ entonces $$d_{W}(f,f_{n})=\sum_{k=1}^{\infty} \frac{1}{2^k}\frac{\lvert f_{n}(s_{k}) \rvert}{\lVert s_{k} \rVert }\leq \lVert f_{k} \rVert \sum_{k=1}^{\infty} \frac{1}{2^k}=\lVert f_{k} \rVert $$ 
>>6. Entonces la serie converge (por ser positiva) por lo tanto puedo hacer la cola de la serie tan pequenia como quiera
>>7. Entonces $\exists k_{0}$ tal que $$\sum_{k=k_{0}+1}^{\infty} \frac{1}{2^k}\frac{\lvert f_{n}(s_{k}) \rvert }{\lVert s_{k} \rVert }\leq \frac{\epsilon }{2}$$ 
>>8. Ademas $\lvert f_{n}(s_{k}) \rvert \leq \frac{\epsilon }{2k_{0}}\lVert s_{k} \rVert \quad \forall k\in \{1,\ldots k_{0}\} \quad \forall n\geq n_{0}$ (Por $4.$) 
>>9. Finalmente $$d_{W}(f,f_{n})=\sum_{k=1}^{\infty} \frac{1}{2^k}\frac{\lvert f_{n}(s_{k}) \rvert }{\lVert s_{k} \rVert }\leq \frac{\epsilon }{2k_{0}}\sum_{k=1}^{k_{0}}\frac{1}{2^k} +\sum_{k=k_{0}+1}^{\infty}\frac{1}{2^k}\frac{\lvert f_{n}(s_{k}) \rvert }{\lVert s_{k} \rVert } \leq \bigg(\frac{\epsilon }{2k_{0}}\sum_{k=1}^{k_{0}} 1 \bigg) +\frac{\epsilon }{2}=\epsilon\quad \forall n\geq n_{0}  $$

>[!Definition]
>Sean $X$ Banach $\{x_{n}\}_{n\in \mathbb{N} }\subseteq X$ y $\{f_{n}\}_{n\in \mathbb{N} }\subseteq X'$. Decimos que:
>1. $x_{n}$ converge debilmente a $x\in X$ si $f(x_{n})\xrightarrow{n\rightarrow \infty}f(x)\quad \forall f\in X'$. Lo denotamos $x_{n}\rightharpoonup x$
>2. $f_{n}$ converge debilmente-* a $f\in X'$ si $f_{n}(x)\longrightarrow f(x)\quad \forall x\in X$. Lo denotamos $f_{n}\buildrel\ast\over\rightharpoonup f$  

>[!Proposition]
>Sea $H$ Hilbert. Entonces
>1. $x_{n}\rightharpoonup x \iff (x_{n},y)\longrightarrow (x,y)\quad \forall y\in H$
>2. Si ${} dim(\mathcal{H}) {}$ infinita y ${} \{e_{n}\}\subseteq \mathcal{H} {}$ sucesion ortonormal entonces $e_{n}\rightharpoonup 0$ 
>Notar que $x_{n}\rightharpoonup x$ no implica $x_{n}\longrightarrow x$ (la vuelta si vale) 
>>[!Proof]
>>1. ${} x_{n}\rightharpoonup x \iff f(x_{n})\longrightarrow f(x)\quad \forall f\in \mathcal{H}' {}$. Por [[Teórico 7#^a49476]] dado ${} f\in \mathcal{H}' {}$ sabemos $\exists !y\in H$ con ${} f(z)=(z,y)\quad \forall z\in \mathcal{H} {}$ entonces ya estamos (DUDA como sabemos que cubrimos todos los y posibles)
>>2. Por $(a)$ basta ver $(e_{n},y)\longrightarrow 0\quad \forall y\in \mathcal{H}$. Esto es cierto por [[Teórico 3#^1a2dbf]] 

>[!Proposition]
>Sea $X$ Banach 
>- (a) Si existen los limites debil y debil-* entonces son unicos
>- (b) $x_{n}$ converge debil a $x$ o ${} f_{n}$ converge debil-* a $f$ entonces $x_{n},f_{n}$ acotados 
>- (c) $x_{n}\rightarrow x$ entonces $x_{n}\rightharpoonup x$ y $f_{n}\rightarrow f$ entonces $f_{n} \rightharpoonup f$. Si $\dim(X)$ es finita entonces valen las reciprocas.
>- (d) Si $M \subseteq X$ es cerrado y convexo y $\{x_{n}\}_{n\in \mathbb{N}}\subseteq M$ con $x_{n}\rightarrow x$ entonces $x\in M$
>>[!Proof]
>>(a)   
>>1. Como $y_{n}\rightharpoonup y$ y $x_{n}\rightharpoonup x$. Por [[Teórico 10#^8c080d]], $\exists  f\in 'X$ con $f(x-y)=\lVert x-y \rVert$
>>2. Entonces $\lVert x-y \rVert = f(x-y)=f(x) - f(y)=\lim_{ n \to \infty } f(x_{n})-\lim_{ n \to \infty } f(x_{n})=0$
>>
>>(b) 
>>1. Supongo $x_n\rightharpoonup x$. Entonces $f(x_{n})\xrightarrow{n\rightarrow \infty} f(x)$
>>2. Luego $\{ \lvert f(x_{n}) \rvert : n\in \mathbb{N} \}$ es acotado $\forall f\in X'$
>>3. Ademas se tiene que $\lVert J_{X}(x_{n}) \rVert=\lVert x_{n} \rVert$ y por def ${} \{ 0 \} {}$
>>