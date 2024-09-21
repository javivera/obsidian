---
dateCreated: 2024-09-21,00:32
tags:
  - Riesz
  - FunctionalAnalysis
  - normEquivalences
  - banachSpace
  - vectorSpace
---
>[!Lemma]
>Sea $X$ espacio vectorial con norma $\lVert \cdot \rVert_{}$. Sea $d:X\times X\rightarrow \mathbb{R}$ por $d(x,y)=\lVert x-y \rVert_{}$ entonces
>$$(X,d)\text{ es metrico}$$ 
> Equivalentemente todo $X$ espacio vectorial normado es metrico con la metrica estandar

^59c764

>[!Theorem] 
>Sea $X$ espacio vectorial con norma $\lVert \cdot \rVert_{}$. Sea $x_{n}\rightarrow x$, $y_{n}\rightarrow y$ con $\{ \alpha_{n} \}\subseteq \mathbb{F}$ y $\alpha_{n}\rightarrow\alpha$ entonces:
>1. $\big\lvert \lVert x \rVert_{} -\lVert y \rVert_{}\big\rvert\leq \lVert x-y \rVert_{}$
>2. $\lim_{ n \to \infty }\lVert x_{n} \rVert_{}=\lVert x \rVert_{}$
>3. $\lim_{ n \to \infty }x_{n}+y_{n}=x+y$
>4. $\lim_{ n \to \infty }\alpha_{n} x_{n}=\alpha x_{n}$

>[!Proof]
>Sale todo usando 1. y 1. sale usando $\lVert x \rVert\leq \lVert x-y \rVert+\lVert y \rVert$

>[!Remark]
>Esto nos dice que en un espacio vectorial normado, la norma, la suma y producto por escalar son continuas.

>[!Definition] Equivalence of norms
>Sea $X$ espacio vectorial y  $\lVert \cdot \rVert_{1},\lVert \cdot \rVert_{2}$ normas en  $X$ decimos que son equivalentes si $$\exists\ m,M>0\quad /\quad m\lVert x \rVert _{1}\leq \lVert x \rVert _{2}\leq M\lVert x \rVert_{1} $$

>[!Remark]
>La equivalencia de normas es una relacion de equivalencia
---
>[!Lemma]
>Let $X$ be a vector space with $\lVert \cdot \rVert, \lVert \cdot \rVert_{1}$ and $d, d_{1}$ associated metrics. Suppose $\exists k>0$ such that $\lVert x \rVert \leq k \lVert x \rVert_{1}\quad \forall x \in X$. Let $\{ x_{n} \}\subseteq X$, then:
>1. $x_{n} \rightarrow x$ in $(X, d_{1}) \Longrightarrow x_{n} \rightarrow x$ in $(X, d)$  
>2. $\{ x_{n} \}$ is Cauchy in $(X, d_{1}) \Longrightarrow \{ x_{n} \}$ is Cauchy in $(X, d)$ 

^2230e0
>[!Proof]
>Trivial using the inequality

---
>[!Corollary]
>Sea $X$ espacio vectorial $\lVert \cdot \rVert_{}$ y $\lVert \cdot \rVert_{1}$ normas equivalentes en $X$ con $d,d_1$ metricas asociadas. Sea $\{ x_{n} \}\subseteq X$ entonces:
>1.$\quad x_{n}\rightarrow x$ en $(X,d)\iff x_{n}\rightarrow x$ en $(X,d_{1})$
>2.$\quad \{ x_{n} \}$ es de cauchy en $(X,d)\iff \{ x_{n} \}$ es de cauchy en $(X,d_{1})$ 
>3.$\quad (X,d)$  es completo $\iff (X,d_{1})$ es completo   

^cd6dc0

>[!Proof]
>Usando [[Teórico 1#^2230e0]]
---
>[!Theorem] Continua en compacto tiene maximo y minimo
>Sea $(X,d)$ metrico compacto y $f:M\rightarrow \mathbb{F}$ continua entonces $\exists c>0 \ / \ \lvert f(x) \rvert\quad\forall x \in M$ ($f$ acotada)
>En particular si $\mathbb{F}=\mathbb{R}$ los numeros
>$$a = \sup\{ \lvert f(x) \rvert :x \in M\}$$
>$$b = \inf\{ \lvert f(x) \rvert :x \in M\}$$
>Existen y son finitos. Mas aun 
>$$\exists \ x,y \in M \ f(x)=a \ \ \land f(y)=b$$

^8b9dd8

___
>[!Theorem] 
>Sea $X$ espacio vectorial normado de dim finita con norma $\lVert \cdot \rVert$. Sea $\{ e_{1},\ldots,e_{n} \}$ base para $x=\sum\alpha_{j}e_{j}$ y sea $\lVert x \rVert_{1}=\left( \sum|\alpha_{j}|^{2} \right)^{\frac{1}{2}}$ entonces $\lVert \cdot \rVert_{1}$ y $\lVert \cdot \rVert$ son equivalentes

>[!proof]
>1. $M=(\sum \lVert e_{j} \rVert^2)^{\frac{1}{2}}>0$
>2. $\lVert x \rVert=\left\lVert  \sum\alpha_{j}e_{j}  \right\rVert\leq \sum \lVert \alpha_{j}e_{j} \rVert=\sum|\alpha_{j}|\lVert e_{j} \rVert \leq ( \sum|\alpha_{j}|^2)^{\frac{1}{2}} (\sum\lVert e_{j} \rVert^2)^{\frac{1}{2}} = \lVert x \rVert_{1}M$
>3. $f:\mathbb{F}\rightarrow \mathbb{R}\quad f(\alpha_{1},\ldots,\alpha_{n})=\left\lVert  \sum\alpha_{j}e_{j}\right\rVert =\lVert x \rVert$
>4. Ver que es continua $\bigl\lvert \left\lVert  \sum\alpha_{j}-e_{j}  \right\rVert-\left\lVert  \sum\beta_{j}-e_{j}  \right\rVert \bigl\rvert$
>5. $S=\left\{  (\alpha_{1},\dots,\alpha_{n}):\sum|\alpha_{j}|^2 = 1  \right\}$ es compacto
>6. Existe $m = f(u_{1},\dots,u_{n})$ minimo porque $\mathrm{Im}f =\mathbb{R}$ [[#^8b9dd8]]
>7. $m >0$ porque $\{ e_{j} \}$ es base
>8. Si $\lVert x \rVert_{1}=1 \iff \sum|\alpha_{j}|^2=1 \Rightarrow(\alpha_{1},\dots,\alpha_{n})\in S$ 
>9. $\quad m\lVert x \rVert_{1} = m\leq f(\alpha_{1},\dots,\alpha_{n})=\lVert x \rVert$ por ser m minimo
>10. Si no $\left\lVert  \frac{x}{\lVert x \rVert}_{1}  \right\rVert=1$ luego $m \leq \left\lVert  \frac{x}{\lVert x \rVert}_{1}  \right\rVert$ por el caso de arriba
---
>[!Corollary]
>En dimension finita todas las normas son equivalentes

>[!Proof]
> Equivalencia de normas es equivalence entonces es transitiva
---
> [!remark] Contraejemplo
>Esto no vale en dimension infinita $X=C^1[0,\pi]$ tenemos dos normas no equivalentes 
>$$\lVert \cdot \rVert_{\infty} \quad \text{ y }\quad \lVert u \rVert =\lVert u \rVert_{\infty}+\left\lVert  u'  \right\rVert_{\infty}$$
>Considerando la funcion $u_{n}(x)=sen(nx)$ se puede ver facilmetend
>
---

>[!Lemma]
> X espacio vectorial de dim finita y $\lVert \cdot \rVert_{1} =\left( \sum \lvert \alpha_{j} \rvert^2 \right)^{\frac{1}{2}}$ y $d_{1}$ la metrica asociada, entonces $(X,d_{1})$ es completo (Banach)

^910368

>[!Proof]
> 1. Ya sabemos que es metrico (dim finita $N$)
> 2. $\{ x^{n} \}\subseteq X$ suc de cauchy
> 3. $x^{n}\in X,\quad x^{n}=\sum_{j}\alpha_{j}^n e_{j}\quad \alpha_{j}^n\in \mathbb{F}$
> 4. $\exists m_{0}\in \mathbb{N}$ tq $\sum \lvert \alpha_{j}^k-\alpha_{j}^m \rvert^{2}=\lVert x^{k}-x^{m} \rVert_{1}^{2}\leq \epsilon^2$
> 5. Fijando $j\in \mathbb{N}$ tenemos $\lvert \alpha_{j}^k-\alpha_{j}^m \rvert\leq\epsilon^2\quad \forall k,m\geq m_{0}$
> 6. $\{ \alpha_{j}^n \}$ es de cauchy en un completo tiene limite $\alpha_{j}$ (vale para cada $j$)
> 7. $\exists n_{j}\in \mathbb{N}$ tq $\lvert \alpha_{j}^n -\alpha_{j} \rvert < \frac{\epsilon^2}{N} \quad\forall n\geq n_{j}$ 
> 8. $\tilde{n}=max\{ n_{0},\dots,n_{N} \}$
> 9. para $m\geq \tilde{n}$ sucede $\lVert x^{n}-x \rVert_{1}^2=\sum_{j}^N\lvert \alpha _{j}^n-\alpha_{j} \rvert^2\leq \epsilon^2$
> 10. $\{ x_{n} \}$ converge por lo tanto $X$ es de completo

>[!Corollary]
>Todo espacio vectorial de dim finita es completo con la metrica asociada a cualquier norma

^26042d

>[!Proof]
>1. $(X,d)$ completa $\iff(X,d_{1})$ completa por [[#^cd6dc0]] y $d_{1}$ completa [[#^910368]]
---
>[!Theorem]
> Sea $(M,d)$ metrico y $A\subseteq M$ entonces:
> 1. $A$ completo $\Rightarrow A$ cerrado
> 2.  $M$ completo $\Rightarrow$ ($A$ completo $\iff A$ cerrado)
> 3. Si $A$ es compacto $\Rightarrow$ $A$ es cerrado y acotado
> 4. Cerrado y acotado en $\mathbb{F}^n \Rightarrow$ compacto

^83c633

>[!Proof]
---
>[!Corollary]
>Si $Y$ subespacio vectorial de dim finita $\Rightarrow$ $Y$ es cerrado

^3196e0

>[!Proof]
>1. Por ser $Y$ espacio vectorial es normado (norma estandar) por ser espacio vectorial normado es metrico [[#^59c764]]
>2. Por dim finita es completo
>3. Cerrado por 1. [[#^83c633]]
---
>[!Remark] Contraejemplo
> [[#^3196e0]] no es cierto si la dimension es infinita

>[!Proof]
>1. $S=\bigg\{ \{ x_{n} \} \subseteq\ell^{\infty}:\exists n_{0}\in \mathbb{N} \ / \ x_{n}=0 \ \forall n\leq n_{0} \bigg\}$
>2. S subespacio de dim infinita de $\ell^{\infty}$
>3. $x_{n} = (1, \frac{1}{2},\dots, \frac{1}{n+1},\dots) \in S$
>4. $x_{n}\rightarrow x=\left( 1, \frac{1}{2},\dots, \frac{1}{n},\dots \right)\in \ell^{\infty}-S$ usando $\lVert x-x_{n} \rVert_{\infty} = \frac{1}{n+1}\rightarrow 0$
>6. $S$ no es cerrado
^0676dc
---
>[!Lemma]
> $X$ espacio vectorial normado, $S$ subespacio de $X$ entonces $\overline{S} \text{ es subespacio vectorial de } X$

^4c773a

>[!Proof]
>1. $x,y\in \overline{S},\ \alpha \in \mathbb{F}$
>2. Por ser clausura existen $x_{n}\rightarrow x, \ y_{n}\rightarrow y$ en $S$
>3. $S$ subesp $x_{n}+y_{n}\in S$
>4. $x_{n}+y_{n}\rightarrow x+y$ entonces $x+y\in\overline{S}$
>5. Analogo $\alpha x_{n}$
---
>[!Definition] Span
> $E\subseteq X$ normado:
> $$Sp(E) = \{ \text{Todas las combinaciones lineales finitas de elmentos de } E\}$$
> $$\overline{Sp}(E)=\{\text{Todas las intersecciones de subespacios cerrados que contienen a }E \}$$
---
>[!Lemma]
>$X$ espacio vectorial normado $\emptyset\neq E \subseteq X$ entonces: 
>1. $\overline{Sp}(E)$ es un cerrado de $X$ que contiene a $E$
>2. $\overline{Sp}(E) = \overline{Sp(E)}$

>[!Proof]
>1.
>Interseccion de cerrados es cerrados y interseccion de subespacios es subespacio
>2. Pendiente preguntar
---
>[!Lemma] Riesz
>Sea $X$ normado, $Y$ subespacio cerrado  con $Y\neq X$. Sea $\alpha \in(0,1)$. Entonces $\exists X_{\alpha}\in X$ con $\lVert X_{\alpha} \rVert=1$ tal que $\lVert X_{\alpha}-y \rVert >\alpha \quad \forall y\in Y$ 

^ae7428

>[!Proof]
>1. $d=\inf\{ \lVert x-z \rVert:z\in Y \}>0$
>2. $0<\alpha<1  \Rightarrow d<d\alpha ^{-1}$
>3.  (Def infimo) $\lVert x-z \rVert<d\alpha ^{-1}$
>4. $x_{\alpha}=\frac{x-z}{\lVert x-z \rVert}\quad \lVert x_{\alpha} \rVert=1$
>5. $\lVert x_{\alpha}-y \rVert =\left\lVert  \frac{x-z}{\lVert x-z \rVert }-y  \right\rVert = \frac{1}{\lVert x-z \rVert }\lVert x-(z+\lVert x-z \rVert y) \rVert > \frac{d}{d\alpha ^{-1}}$
---
>[!Theorem]
>Sea $X$ espacio vectorial dimension infinita 
>$$D=\{ x \in X:\lVert x \rVert_{} \leq 1 \}\quad K=\{ x \in X: \lVert x \rVert_{} =1 \}$$
>no son compactos

>[!Proof]
>1. $x_{1}\in K$ como dim infinita $Sp(\{ x_{1} \})\neq X$ (Sp cerrado por ser de dim finita)
>2. [[#^ae7428]] $\exists x_{2}\in K$ tal que $\lVert x_{1}-x_{2} \rVert_{}\geq \frac{1}{2}$
>3. Generalizando $\exists x_{n}\in K$ tal que $\lVert x_{n}-x_{m} \rVert_{}\geq \frac{1}{2}\quad\forall n\neq m$
>4. Asi armamos una sucesion que no puede tener sub convergente en porque si fuese convergente seria de cauchy 

>[!Remark]
>$E$ y $K$ son compactos $\Rightarrow$ $X$ dim finita
---
>[!Definition] Banach Space
> Un espacio de Banach es un espacio normado que es completo con la metrica asociada a la norma
---
>[!Theorem]
>1. Todo normado de dim finita es Banach
>2. Si $X$ es metrico completo $C_{\mathbb{F}}$ es banach
>3. Si $(X,\sum,\mu)$ subespacio medible $\Rightarrow L^p \ (1\leq p\leq \infty)$ son banach
>(En particular $\ell^p \ (1\leq p\leq \infty$ son banach)
>4. $X$ Banach, $Y$ subespacio entonces $Y$ Banach $\iff Y$ cerrado

>[!Proof]
>1. Visto arriba [[#^26042d]]
>2. Se asume visto en Reales 
>3. Se asumen visto en Reales
>4. [[#^83c633]]