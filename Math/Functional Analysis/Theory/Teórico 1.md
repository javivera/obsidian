---
dateCreated: 2024-09-21,00:32
tags:
  - Riesz
  - FunctionalAnalysis
  - normEquivalences
  - banachSpace
  - vectorSpace
---
>[!Theorem] 
>Sea $X$ espacio vectorial normado de dim finita con norma $\lVert \cdot \rVert$. Sea $\{ e_{1},\ldots,e_{n} \}$ base para $x=\sum\alpha_{j}e_{j}$ y sea $\lVert x \rVert_{1}=\left( \sum|\alpha_{j}|^{2} \right)^{\frac{1}{2}}$ entonces $\lVert \cdot \rVert_{1}$ y $\lVert \cdot \rVert$ son equivalentes

>[!proof]
>1. $M=(\sum \lVert e_{j} \rVert^2)^{\frac{1}{2}}>0$
>2. $\lVert x \rVert=\left\lVert  \sum\alpha_{j}e_{j}  \right\rVert\leq \sum \lVert \alpha_{j}e_{j} \rVert=\sum|\alpha_{j}|\lVert e_{j} \rVert \leq ( \sum|\alpha_{j}|^2)^{\frac{1}{2}} (\sum\lVert e_{j} \rVert^2)^{\frac{1}{2}} = \lVert x \rVert_{1}M$
>3. $f:\mathbb{F}\rightarrow \mathbb{R}\quad f(\alpha_{1},\ldots,\alpha_{n})=\left\lVert  \sum\alpha_{j}e_{j}\right\rVert =\lVert x \rVert$
>4. Ver que es continua $\bigl\lvert \left\lVert  \sum\alpha_{j}-e_{j}  \right\rVert-\left\lVert  \sum\beta_{j}-e_{j}  \right\rVert \bigl\rvert$
>5. $S=\left\{  (\alpha_{1},\dots,\alpha_{n}):\sum|\alpha_{j}|^2 = 1  \right\}$ es compacto
>6. Existe $m = f(u_{1},\dots,u_{n})$ minimo porque $\mathrm{Im}f =\mathbb{R}$ 
>7. $m >0$ porque $\{ e_{j} \}$ es base
>8. Si $\lVert x \rVert_{1}=1 \iff \sum|\alpha_{j}|^2=1 \Rightarrow(\alpha_{1},\dots,\alpha_{n})\in S$ 
>9. $\quad m\lVert x \rVert_{1} = m\leq f(\alpha_{1},\dots,\alpha_{n})=\lVert x \rVert$ por ser m minimo
>10. Si no $\left\lVert  \frac{x}{\lVert x \rVert}_{1}  \right\rVert=1$ luego $m \leq \left\lVert  \frac{x}{\lVert x \rVert}_{1}  \right\rVert$ por el caso de arriba

> [!remark]
>Esto no vale en dimension infinita $X=C^1[0,\pi]$ tenemos dos normas no equivalentes 
>$$\lVert \cdot \rVert_{\infty} \quad \text{ y }\quad \lVert u \rVert =\lVert u \rVert_{\infty}+\left\lVert  u'  \right\rVert_{\infty}$$
>Considerando la funcion $u_{n}(x)=sen(nx)$ se puede ver facilmetend
>
---
>[!Corollary]
>En dimension finita todas las normas son equivalentes
---
>[!Lemma] Riesz
>Sea $X$ normado, $Y$ subespacio con $Y\neq X$. Sea $\alpha \in(0,1)$. Entonces $\exists X_{\alpha}\in X$ con $\lVert X_{\alpha} \rVert=1$ tal que $\lVert X_{\alpha}-y \rVert >\alpha \quad \forall y\in Y$ 

>[!Proof]
>1. $d=\inf\{ \lVert x-z \rVert:z\in Y \}>0$
>2. $0<\alpha<1  \Rightarrow d<d\alpha ^{-1}$
>3.  (Def infimo) $\lVert x-z \rVert<d\alpha ^{-1}$
>4. $x_{\alpha}=\frac{x-z}{\lVert x-z \rVert}\quad \lVert x_{\alpha} \rVert=1$
>5. $\lVert x_{\alpha}-y \rVert =\left\lVert  \frac{x-z}{\lVert x-z \rVert }-y  \right\rVert = \frac{1}{\lVert x-z \rVert }\lVert x-(z+\lVert x-z \rVert y) \rVert > \frac{d}{d\alpha ^{-1}}$
---
>[!Lemma]
> X espacio vectorial de dim finita y $\lVert \cdot \rVert_{1} =\left( \sum \lvert \alpha_{j} \rvert^2 \right)^{\frac{1}{2}}$ y $d_{1}$ la metrica asociada, entonces $(X,d_{1})$ es completo (Banach)

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


