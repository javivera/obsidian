---
dateCreated: 2024-09-22,22:22
---


>[!Definition] Convexidad
> Sea $A\subset X$ espacio vectorial. $A$ es convexo si $\forall x,y\in A$
> $$t x+(1-t)y\in A\quad\forall t\in[0,1]$$

> [!Remark]-
>  Todo espacio vectorial es convexo

^0636e2

^cc7fed
>[!Proposition]
> $A$ convexo y cerrado y $p\in\mathcal{H}$ Hilbert entonces $\exists q\in A \ / \ \lVert p-q \rVert=\inf\{ \lVert p-a \rVert\ :\ a\in A \}$ 
>>[!Proof]-
>>Existencia
>>1. $\gamma = \inf\{ \lVert p-c \rVert:c\in A \}$ usar def de infimo $\gamma^2\leq\lVert p-q_{n} \rVert \leq \gamma^2 + \frac{1}{n}$
>>2. Ver $f_{n}=p-q_{n}$ es cauchy
>>3.    $\lVert 2p-(q_{n}-q_{m})\rVert^2+\lVert q_{n}-q_{m} \rVert = \lVert (p-q_{n}) + (p-q_{m})\rVert^2 + \lVert (p-q_{n})-(p-q_{m}) \rVert^2$ 
>>   (R.Paralelogramo) $= 2\lVert p-q_{n} \rVert^2+2\lVert p-q_{m} \rVert^2 \leq 4\gamma^2+2\left( \frac{1}{n}+\frac{1}{m} \right)$
>>5. Como $A$ conexo $\frac{1}{2}(q_{n}+q_{m})\in A$
>>6. $4\gamma^2 \leq 4\left\lVert  p-\frac{1}{2}(q_{n}+q_{m})  \right\rVert^2 = \lVert 2p-(q_{n}+q_{m}) \rVert^2$ (Por 1.)
>>7. $\lVert f_{n}-f_{m} \rVert=\lVert q_{n}-q_{m} \rVert < 2\left( \frac{1}{n} +\frac{1}{m}\right)$
>>8. Converge por que $H$ Hilbert
>>9. $A$ cerrado entonces $q\in A$
>>10. $\gamma^2 \leq \lVert p-q \rVert^2=\lim_{ n \to \infty }\lVert p-q_{n} \rVert^2\leq\lim_{ n \to \infty }\gamma^2 + \frac{1}{n}=\gamma^2$ (Norma es continua entonces limite entra)
>>
>>Unicidad
>>1. Supongo $w\in A$ tal que $\lVert p-w \rVert=\gamma$
>>2. Entonces $\frac{1}{2}(q+w)\in A$ digamos $\left\lVert  p- \frac{1}{2}(q+w)  \right\rVert\geq\gamma$
>>3. (Regla Paralelo) $\lVert (p-w) + (p-q) \rVert^2 + \lVert (p-w)-(p-q) \rVert^2 =4\gamma^2$
>>4. $4 \lVert q-w \rVert^2=4\gamma^2-4\left\lVert  p- \frac{1}{2}(q+w)  \right\rVert\leq 0$

^1741ed

>[!Remark]-
>En dim finita la existencia de $q$ es cierta inclusive sin que $A$ sea convexo pues $\{ q_{n} \}$ es acotada entonces tiene un sub convergente. Pero si $A$ no es convexo la unicidad en general no es cierta ej. $A$ circunferencia y $p$ el centro

>[!Theorem] 
>Sea $Y$ subespacio cerrado en $\mathcal{H}$ Hilbert entonces $\forall x \in H\quad\exists \ (y\in Y,z\in Y^{\perp})$ tal que $x=y+z$. Ademas $\lVert x \rVert^2=\lVert y \rVert^2+\lVert z \rVert^2$ (Generalizacion de Pitagoras)
>>[!Proof]-
>>Existencia
>>1. $x \in \mathcal{H}\quad Y\neq \emptyset$ convexo ([[Teórico 3#^0636e2]])  y cerrado entonces por [[Teórico 3#^1741ed]]
>>
>>3. $\exists y\in Y$ tal que $\lVert x-y \rVert\leq \lVert x-u \rVert\quad \forall u\in Y$
>>4. $z=x-y$
>>5. $\forall u\in Y\quad\lVert z-u \rVert=\lVert x-(y+u) \rVert\geq \lVert x-y \rVert=\lVert z \rVert$ ($y+u\in Y$ por ser subespacio)
>>6. Por [[Teórico 2#^75b372]] $z\in Y^{\perp}$
>>
>>Unicidad Trivial

^3686bc

>[!Corollary] 
>Si $Y$ subespacio cerrado en $\mathcal{H}$ hilbert entonces $Y=Y^{\perp\perp}$ 
>>[!Proof]-
>>1. $Y\subset Y^{\perp\perp}$. $x \in Y^{\perp\perp}$ entonces $x=y+z$ [[Teórico 3#^3686bc]]
>

>[!Corollary]
>Si $Y$ subespacio Hilbert entonces $Y^{\perp\perp}=\overline{Y}$
>>[!Proof]
>>trivial

^3660c8

## Base ortogonal de dimension infinita

>[!Definition] Sucesion Ortonormal
> Sea $X$ e.v.pi. Una sucesion $\{ e_{n} \}\subseteq X$ se dice ortonormal si $\lVert e_{n} \rVert=1\quad\forall {n}\in\mathbb{N}$ y $(e_{n},e_{m})=0\quad\forall n\neq m$

>[!Theorem] 
>Todo $X$ e.v.pi de dimension finita contiene una sucesion ortonormal 
>>[!Proof]-
>> Usando [[Teórico 1#^8db74f]] Tenemos una sucesion de $\{ x_{n} \}\subset X$ de vectores unitarios que linealmente independientes por construccion. Aplicamos Grahm-Schmidt y obtenemos sucesion ortonormal

>[!Remark]-
>Si $X$ es e.v.pi dimension k y $\{ e_{1},\ldots,e_{k} \}$ es base de $X$ entonces $x=\sum^{k}_{n=1}(x,e_{n})e_{n}$. Queremos ver si esto se puede generalizar en dimension infinita a $x=\sum^{\infty}_{n=1}(x,e_{n})e_{n}$

>[!Theorem] Desigualdad de Bessel
>$X$ e.v.pi $\{ e_{n} \}\subset X$ sucesion ortonormal entonces $\forall x \in X$ la serie $\sum^{\infty}_{n=1} \lvert (x,en) \rvert^{2}$ converge y $$\sum^{\infty}_{n=1}\lvert (x,e_{n}) \rvert^{2}\leq\lVert x \rVert^{2}$$
>>[!Proof]-
>>1. $y_{k} = \sum^{k}_{n=1}(x,e_{n})e_{n}$
>>2. $\lVert x-y_{k} \rVert^{2}=(x-y_{k},x-y_{k})=\ldots=\lVert x \rVert^{2}-\sum^{k}_{n=1}\lvert (x,e_{n}) \rvert^{2}$ 
>>3. $\sum^{k}_{n=1}\lvert (x,e_{n}) \rvert^{2} = \lVert x \rVert^{2} - \lVert x-y_{k} \rVert^{2}\leq\lVert x \rVert^{2}$
>>4. Usando limite se termina

^1a2dbf

>[!Theorem]
>Sea $\{ e_{n} \}\subseteq\mathcal{H}$ Una sucesion ortonormal y $\{ \alpha_{n} \}\subseteq\mathbb{F}$ entonces
>$$\sum^{\infty}_{n=1} \alpha_{n}e_{n} \text{ converge } \iff \sum^{\infty}_{n=1} \lvert \alpha_{n} \rvert ^{2} \text{ converge }\bigg(\iff \{ \alpha_{n} \}\in\ell^{2} \bigg) $$
>Si esto ocurre $$\left\lVert  \sum^{\infty}_{n=1} \alpha_{n}e_{n}   \right\rVert ^{2} =\sum^{\infty}_{n=1} \lvert \alpha_{n} \rvert ^{2} $$
>>[!Proof]-
>>1. $(\Rightarrow)$ Sea $x=\sum^{\infty}\alpha_{n}e_{n}\leq\infty$ 
>>2. $(x,e_{m})=\lim_{ k \to \infty }\left( <\sum^{k}_{n=1}\alpha_{n}e_{n},e_{m} >\right)=\alpha_{m}$ ($k\geq m$ cuando a partir de algun momento)
>>3. $\sum^{\infty}_{n=1}\lvert \alpha_{n} \rvert^{2}=\sum^{\infty}_{n=1}\lvert (x,e_{n}) \rvert^{2}\leq\lVert x \rVert^{2} = \left\lVert  \sum^{\infty}_{n=1}\alpha_{n}e_{n}  \right\rVert\leq\infty$ 
>> (Por [[Teórico 3#^1a2dbf]])
>>5. $(\Leftarrow)$ Sea $x_{k}=\sum^{k}_{n=1}\alpha_{n}e_{n}$
>>6. $\lVert x_{k}-x_{j} \rVert_{2}=\left\lVert  \sum^{k}_{n=1}\alpha_{n}e_{n}  \right\rVert^{2}=\sum^{k}_{n=j+1}\lvert \alpha_{n} \rvert^{2} \xrightarrow[j,k \to \infty]{} 0$ (Por que la serie converge)
>>7. Como $\{ x_{k} \}$ es de cauchy en un Hilbert converge
>>
>>Por ultimo como las series converge y como en finito ya tenemos la igualdad. 
>>$$\left\lVert  \sum^{\infty}_{n=1} \alpha_{n}e_{n}   \right\rVert ^{2} =\lim_{ k \to \infty }\left\lVert  \sum^{k}_{n=1}\alpha_{n}e_{n}  \right\rVert=  \lim_{ k \to \infty }\sum^{k}_{n=1}\lvert \alpha_{n} \rvert^{2}=\sum^{\infty}_{n=1} \lvert \alpha_{n} \rvert ^{2}$$
> Detalle de esta ultima parte 
> $$\left\lVert  \sum^{k}_{n=1} \alpha_{n}e_{n}  \right\rVert ^{2} =\left( \sum^{k}_{n=1} \alpha_{n}e_{n},\sum^{k}_{n=1} \alpha_{n}e_{n} \right)=\sum^{k}_{n=1} (\alpha_{n}e_{n},\alpha_{n}e_{n})=\sum^{k}_{n=1} \alpha_{n}\overline{\alpha_{n}}(e_{n},e_{n})=\sum^{k}_{n=1} \lvert \alpha_{n} \rvert ^{2} $$

^4e7cf9

>[!Corollary]
>Sea $\{ e_{n} \}\subseteq \mathcal{H}$ Hilbert una sucesion ortonormal entonces $\forall {x}\in{\mathcal{H}}$ sucede que $\sum^{\infty}_{n=1}(x,e_{n})e_{n}$ converge en $\mathcal{H}$
>>[!Proof]
>> 1. Por [[Teórico 3#^1a2dbf]] $\sum^{\infty}_{n=1}\lvert (x,e_{n}) \rvert^{2}$ converge
>> 2. Por [[Teórico 3#^4e7cf9]] esto implica $\sum^{\infty}_{n=1}(x,e_{n})e_{n}$ converge

>[!Remark]-
>Surge ahora la pregunta cuando sucede que $\sum^{\infty}_{n=1}(x,e_{n})e_{n}$ converge en particular a $x$
>

>[!example]- Contraejemplo 1
>Sea $\{ e_{n} \}\subseteq\mathcal{H}$ ortonormal y $\{ e_{2n} \}$ subsucesion. Se puede ver que $e_{1}\neq\sum^{\infty}_{n=1}\alpha_{2n}e_{2n}$. Por ende encontramos un $x\in\mathcal{H}$ que no se puede escribir como dicha suma

^9558c7

>[!Theorem] 3.47 Bon de Hilbert
>Sea $\{ e_{n} \}\subseteq\mathcal{H}$ Hilbert sucesions ortonormal son equivalentes
>1. $\{ e_{n}:n\in\mathbb{N} \}^{\perp}$ = $\{ 0 \}$
>2. $\overline{Sp}\{ e_{n}:n\in\mathbb{N} \}=\mathcal{H}$
>3. $\lVert x \rVert^{2}=\sum^{\infty}_{n=1}\lvert (x,e_{n}) \rvert^{2}$ (Teorema de Parseval)
>4. $x=\sum^{\infty}_{n=1}(x,e_{n})e_{n}$
>>[!Proof]-
>>$(1.\Rightarrow 4.)$ $x \in\mathcal{H}$, $y=x-\sum^{\infty}_{n=1}(x,e_{n})e_{n}$ entonces $\forall {m}\in\mathbb{N}$ vale $$(y,e_{m})=(x,e_{m})-\lim_{ N \to \infty } \left( \sum^{N}_{n=1} (x,e_{n})e_{n},e_{m} \right) = 0$$
>>Entonces $y \in\{ e_{n}:n\in\mathbb{N} \}^{\perp} = \{ 0 \}$  
>>$(4.\Rightarrow 3.)\quad x=\sum^{\infty}_{n=1}(x,e_{n})e_{n}=\lim_{ k \to \infty }\sum^{k}_{n=1}(x,e_{n})e_{n}= \lim_{ k \to \infty }x_{k}$
>>Entonces $\lVert x \rVert^{2}= \lim_{ k \to \infty }\lVert x_{k} \rVert^{2}=\lim_{ k \to \infty }\sum^{k}_{n=1}\lvert (x,e_{n}) \rvert^{2}$ (Por [[Teórico 3#^4e7cf9]])
>$(3\Rightarrow 1)$
>$(4\Rightarrow 2)$ $x=\lim_{ k \to \infty }(x,e_{n})e_{n}$ entonces $x \in Sp\{e_{n}\}\subseteq\overline{Sp\{ e_{n}\}}=\overline{Sp}\{ e_{n}\}$ 
>([[Teórico 1#^f320eb]])
>$(2\Rightarrow 1)$ Sea $y\in\{ e_{n} \}^{\perp}$ entonces $(y,e_{n})=0\quad\forall {n}\in\mathbb{N}$ por lo tanto $e_{n}\in\{ y \}^{\perp}$
>$Sp\{ e_{n} \}\subseteq\{ y \}^{\perp} \text{ (Por 2) }\Rightarrow\mathcal{H}=\overline{Sp}\{ e_{n} \}\subseteq\overline{\{ y \}^{\perp}}=\{ y \}^{\perp}$
>Entonces $y=0$

^f63eb1

>[!Remark]-
>Decimos que $\{ e_{n} \}$ es base ortonormal de $\mathcal{H}$ si cumple alguna de las condiciones anteriores. Notar que para una base ortonormal entonces se cumple la igualdad en la desigualdad de Bessel [[Teórico 3#^1a2dbf]]

>[!Remark]-
>$Sp\{ e_{n} \}$ tiene todas las combinaciones lineales **finitas** de vectores en $\{ e_{n} \}$ (Que es numerable infinito) pero para que valga [[Teórico 3#^f63eb1]] necesito considerar las sumas infinitas. Esto corresponde a considerar $\overline{Sp}\{ e_{n} \}$. En dimension finita el span es cerrado y por lo tanto igual a su clausura asi que no hace falta diferenciar entre estos conceptos.
>

>[!Theorem] 3.52 Hilbert dim infinita separable sii BON de Hilbert
>1. Espacios normados de dim finita son separables
>2. Un Hilbert de dim infinita es separable $\iff$ tiene una BON de Hilbert
>>[!Proof]-
>>1. $X$ finito $\{ e_{1},\ldots,e_{k} \}$ base. El conjunto de los vectores $\sum^{k}_{n=1}\alpha_{n}e_{n}$ donde $\alpha_{n}\in\mathbb{Q}$ es denso y numerable
>>2. 
>>- $(\Rightarrow)$ Tenemos $\{ x_{n} \}$ denso y numerable a partir de el armamos $\{ x_{n_{j}} \}$ dejando de lado los $x_{j}$ que son combinacion lineal de algun elemento anterior. 
>>- Por lo tanto $\{ x_{n_{j}} \}$ sera linealmente idependiente. 
>>- Aplicamos Grahm-Schmidt y obtenemos $Sp\{ e_{n} \}$ tal que $$Sp\{ e_{n} \}=Sp\{ x_{n_{j}} \}=Sp\{ x_{n} \}$$ 
>>- Como $\{ x_{n} \}$ era denso en $\mathcal{H}$ entonces $\overline{Sp\{ e_{n} \}}=\mathcal{H}$ basi ortonormal 
>>([[Teórico 3#^f63eb1]])
>>- $(\Leftarrow)$ Ahora tenemos BON. Afirmamos que el conjunto $A$ de $x\in\mathcal{H}$ que son expresables como sumas finitas $\sum^{k}_{n=1}\alpha_{n}e_{n}$ con $\alpha_{n}\in\mathbb{Q}$ (o $\mathbb{Q}+i\mathbb{Q})$ es denso y numerable.
>>- $A$ numerable es trivial.
>>- Sea $y\in\mathcal{H}$ entonces $y=\sum^{\infty}_{n=1}\beta_{n}e_{n}$ y sabemos que vale $\sum^{\infty}_{n=1}\lvert \beta_{n} \rvert^{2}\leq\infty$ ([[Teórico 3#^4e7cf9]]) entonces $\sum^{\infty}_{n=N+1}\lvert \beta_{n}^{2} \rvert< \frac{\epsilon^{2}}{2}$
>>- Para $n=1,\ldots,N$ elegimos $\alpha_{n}$ tales que $\lvert \beta_{n}-\alpha_{n} \rvert^{2}\leq \frac{\epsilon^{2}}{2}$ (Densidad en $\mathbb{Q}$)
>>- $\lVert y-x \rVert^{2}=\sum^{N}_{n=1}\lvert \beta_{n}-\alpha_{n} \rvert^{2}+\sum^{\infty}_{n=N+1}\lvert \beta_{n} \rvert^{2}\leq\epsilon^{2}$
>>- Entonces $A$ es denso en $\mathcal{H}$

^a44e0c

>[!Corollary]
$\ell^{2}$ es separable. $L^{2}[a,b]$ es separable. Veremos mas adelante que tienen BON de Hilber

>[!example]- Contraejemplo 2
>Hilbert que no es separable. $\tilde{\ell}^{2}(\mathbb{R})=\{ f:\mathbb{R}\rightarrow\mathbb{R} \ / \ f(x)\neq 0\text{ a lo sumo para numerables }x \ / \ \sum^{}_{x\in\mathbb{R}}f(x)^{2}<\infty\}$ 
>>[!Proof]
>>1. Es facil ver que es Hilbert con $(f,g)=\sum^{}_{x\in\mathbb{R}}f(x)g(x)$
>>2. Sea 
>>$$f_{Y}(x) = \begin{cases} 1 & y=1 \\ 0 & cc \end{cases}$$
>>Estan en el $\tilde{\ell}^{2}$. Ademas $\lVert f_{Y}-f_{Z} \rVert=2$. Si tuviese un denso para cada $f_{Y}$ me armo una bola de radio mas chico que 2 cada una de estas bolas tiene algun elemento del denso numerable, pero no se intersecan entre si. Absurdo porque tengo no numerables bolas.

^2e31bc

