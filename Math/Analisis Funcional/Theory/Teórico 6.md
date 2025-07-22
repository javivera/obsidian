---
dateCreated: 2024-09-27,19:41
---
>[!Definition] Composicion de Lineales
>Sean $X,Y,Z$ normados $T\in B(X,Y)$ y $S\in B(Y,Z)$ la composicion $S\circ T$ se llama producto y $S\circ T :=ST$

>[!Lemma]
>Sean $X,Y,Z$ normados $T\in B(X,Y)$ y $S\in B(Y,Z)$ entonces $$ST\in B(X,Z) \quad\text{ y }\quad\lVert ST \rVert\leq\lVert S \rVert\lVert T \rVert$$
>>[!Proof]
>> 1. Sabemos $\lVert ST(x) \rVert\leq \lVert S \rVert\lVert Tx \rVert\leq\lVert S \rVert\lVert T \rVert\lVert x \rVert$ 
>> 2. Usando supremos $\lVert x \rVert=1$ de ambos lados llegamos $\lVert ST \rVert\leq\lVert S \rVert\lVert T \rVert$ 
>> 3. $\lVert T \rVert=\sup\{ \lVert Tx \rVert :\lVert x \rVert \leq 1  \}=\inf\{ k:\lVert Tx \rVert \leq k\lVert x \rVert\quad \forall x\in X  \} \leq \infty$ por que $T\in B(X,Y)$
>> 4. (Analogo $\lVert S \rVert$) con lo cual $\lVert S \rVert\lVert T \rVert\leq\infty$
>> 5. Notar que $\lVert ST \rVert = k \leq \infty$ nos dice que $ST\in B(X,Z)$ por que  si $\lVert x \rVert=1$ entonces $\lVert ST(x) \rVert \leq k$ por que $k$ es supremo
>> 6. Si $\lVert x \rVert \neq 1$ entonces $\frac{x}{\lVert x \rVert}$ si tiene norma 1 entonces $\lVert ST(x) \rVert\leq k\lVert x \rVert$

>[!Definition]
>1. $B(X):=B(X,X)$
>2. $T^{n}= T\ldots T$ (n-veces)
>3. $p(x)=\sum^{N}_{n=1}a_{i}x^{i}$ entonces $p(T)=\sum^{N}_{n=1}a_{i}T^{i}$

>[!Lemma]
>X normado entonces
>1. $B(X)$ es algebra asociadativa con la identidad
>2. Si $\{ T_{n} \},\{ S_{n} \}\subseteq B(X)$ con $T_{n}\rightarrow T\quad S_{n}\rightarrow S$ entonces $S_{n}T_{n}\rightarrow ST$
>>[!Proof]
>>pendiente

>[!Lemma]
>$X$ normado $T\in B(X)$ si $p,q$ polinomios, $\lambda,\mu\in \mathbb{F}$ entonces
>1. $(\lambda p+\mu q)(T)=\lambda p(T)+\mu q(T)$
>2. $pq(T)=p(T)q(T)$

^c381db

## Inversa de operadores

>[!Definition]
>$X,Y$ normado, $T\in B(X,Y)$ se dice inversible si $\exists S\in B(X,Y)$ tal que $ST\in I_{X}$ y $TS\in I_{Y}$ y en tal caso se la llama inversa de $T$. $S:=T^{-1}$. (Si existe es unica)

>[!Lemma]
>$X,Y,Z$ normados $T\in B(X,Y)$ con $S\in B(X,Z)$ entonces
>1. Si $T,S$ son inversibles entonces $T^{-1}$ tiene inversa $T$ y $ST$ tiene inversa $T^{-1}S^{-1}$
>2. Si $X=Y=Z$ y $TS=ST$ (Conmutan) entonces 
>	- Si $T$ inversible vale $T^{-1}S=ST^{-1}$
>	- Si $TS$ inversible vale $T$ y $S$ inversibles
>>[!Proof]
>>pendiente

>[!Definition] Isomorfismos
>$X,Y$ normados. Si $\exists T\in B(X,Y)$ inversibles decimos que $X$ e $Y$ son isomorfos y que $T$ es isomorfismo

>[!Remark] Hecha por Mi
>Si $T$ es isomorfismo inversible entonces $T^{-1}$ es isomorfismo
>>[!Proof]
>>$\lVert T^{-1}y \rVert=\lVert T^{-1}Tx \rVert=\lVert x \rVert=\lVert Tx \rVert=\lVert x \rVert$

>[!Lemma]
>Si $X,Y$ normados isomorfos entonces:
>1. $dim (X)<\infty \iff dim (Y)<\infty$ y $dim (X)=dim(Y)$
>2. $X$ separable $\iff Y$ separable
>3. $X$ Banach $\iff Y$ Banach

^2cb23e

>[!Example] Operador inversible
>Sea $f\in C[0,1]$ entonces $T_{f} : L^{p}(0,1)\rightarrow L^{p}[0,1]$ dado por $T(f)(u)=T_{f}(u)=f.u$
>Es claro que es lineal y que esta bien definida (digamos $f.u\in L^{p}(0,1)$). Mas aun es continua pues 
>$$\lVert T_{f}(u) \rVert _{p}^{p} =\int\lvert f.u \rvert ^{p} \leq\lVert f \rVert _{\infty}\int\lvert u \rvert ^{p} =\lVert f \rVert _{\infty}\lVert u \rVert _{p}^{p}  $$
>Otra forma de decirlo $T_{f}\in B(L^{p}(0,1))$.
>Si ademas $\frac{1}{f}\in C[0,1]$ entonces $\exists (T_{f})^{-1} = T_{\frac{1}{f}}$
>Si $\frac{1}{f}\not\in C[0,1]$ entonces no sabemos que pasa ya que en gral $\frac{1}{f}.u\not\in L^{p}(0,1)$ (Pero podria ocurrir que $\exists (T_{f})^{-1}$) y que no sea de la forma $T_{h}$ para ningun $h$

>[!Theorem]
>$X$ Banach $T\in B(X)$ com $\lVert T \rVert\leq 1$ entonces $$I-T \text{ es inversible }\quad (I-T)^{-1}=\sum^{\infty}_{n=1}T^{n}$$
>>[!Proof]
>>pendiente

^aa4e9d

>[!Remark] Aplicacion
>$A\in \mathbb{C}$ con $k:[a,b]\times[a,b]\rightarrow\mathbb{C}$ dada por $k(x,y)=A\sin(x-y)$. Probar que si $|A|\leq \frac{1}{b-a}$ entonces $\forall f\in C[a,b]\quad\exists !g\in C[a,b]$ tal que 
>$$g(x)=f(x)+\int_{a}^{b} k(x,y)g(y)dy \tag{1}$$
>>[!Proof]-
>> Aca $X=C[a,b]$. Notar que ya probamos que $K:C[a,b]\rightarrow C[a,b]$ dada por 
>> $$K(g)(s)=\int k(s,y)g(y)dy$$
>> es acotado y $\lVert K(g) \rVert\leq\lvert A \rvert(b-a)\lVert g \rVert$ ([[Teórico 5#^33cdb2]]).
>> En particular $\lVert K \rVert\leq\lvert A \rvert(b-a)$ (Supremo cuando $\lVert g \rVert=1$ de ambos lados).
>> Entonces $\lVert K \rVert\leq 1$ por que $\lvert A \rvert\leq \frac{1}{b-a}$
>> Notar que la identidad para operadores que salen de continua y llegan a continuas es $I:C[a,b]\rightarrow C[a,b]$ tal que $I(g)=g$
>> Ahora si aplicamos el teorema de arriba. y usando $(1)$
>> $$(I-K)(g)(x) = g(x) -\int_{a}^{b} k(x,y)g(y)dy  =f(x)$$
>> Entonces $$g(x)=(I-K)^{-1} (f)(x)$$
>> y $g$ es unica por que $(I-K)^{-1}$ lo es (por ser inversa)

>[!Corollary]
>Sean $X,Y$ Banach entonces el conjunto $A$ de operadores inversibles es abierto en $B(X,Y)$
>>[!Proof]
>>pendiente

^efd74a

>[!Theorem] Baire
>Sea $(M,d)$ metrico completo si $M=\bigcup^{\infty}_{j=1}A_{j}$ con $A_{j}\subseteq M$ cerrado entonces al menos un $A_{j}$ contiene una bola abierta

>[!Theorem] Aplicacion abierta
>Sean $X,Y$ Banach. $T\in B(X,Y)$ sobreyectiva. Sea
>$$L=\{ Tx:x\in  X\text{ con } \lVert x \rVert \leq 1 \}$$
>Obs: $L = T(B(0,1)) \text{ Bola de centro 0, radio 1}$
>1. $\exists\ r>0$ tal que $\{ y\in Y :\lVert y \rVert\leq r\}\subseteq \overline{L}$
>2. $\left\{  y\in Y:\lVert y \rVert \leq \frac{r}{2}  \right\}\subseteq L$
>3. Si ademas $T$ inyectiva entonces $T$ es inversible ergo $T(X,Y)$ biyectiva luego $T^{-1}$ es continua (Teorema de la inversa continua)
>>[!Proof]
>>a

^c7bd75

>[!Remark]
>Si $X$ e $Y$ no son Banach el teorema en general no es cierto. Tomamos $S\subseteq \ell^{\infty}$ el subespacio de las sucesiones que tienen finitos terminos no nulos y sea $T:S\rightarrow T(S)$ dada por 
>$$T(x_{1},x_{2},\ldots,0) = (x_{1}, \frac{x_{1}}{2}, \frac{x_{3}}{3},\ldots,0)$$
>Entonces $T$ es lineal y acotada por que $\lVert Tx \rVert\leq \lVert x \rVert$ y biyectiva pero $T^{-1}(x)=(x_{1},2x_{2},3x_{3},\ldots)$ no es acotada.
>Tomamos $Id: (C[0,1],\lVert \cdot \rVert_{\infty})\rightarrow (C[0,1],\lVert \cdot \rVert_{1})$
>Entondes $Id$ es continua pues es acotada por que
>$$\begin{split}
\lVert Id \rVert =\sup\{ \lVert Id(f) \rVert _{1}:\lVert f \rVert _{\infty}\leq 1 \}& =\sup\{ \lVert f \rVert _{1}:\lVert f \rVert _{\infty}\leq 1 \} \\
 & = \sup\bigg\{ \int_{0}^{1} \lvert f \rvert :\lVert f \rVert _{\infty}\leq 1 \bigg\} \\
 & \leq\sup\{ \lVert f \rVert _{\infty}:\lVert f \rVert_{\infty} \leq 1 \} = 1
\end{split}$$
