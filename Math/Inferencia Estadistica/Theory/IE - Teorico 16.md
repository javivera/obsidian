---
dateCreated: 2025-05-11,20:37
---
>[!Example]- Ejemplos de estimadores
>($\Omega,\mathcal{F}$) espacio de probabilidad $(\mathbb{R}^{n},\mathcal{B}(\mathbb{R}^{n}))=(\Omega_{X},\mathcal{F}_{X})$ y $X=(X_{1},\ldots,X_{n})$ vector aleatorio
>- (a) *Media muestral* $T(X_{1},\ldots,X_{n})=\frac{1}{n}\sum^{n}_{i=1}X_{i}$ es un estadistico. Sea $$\mathcal{P}=\left\{  (X_{1},\ldots,X_{n})^{T}\sim\prod^{n}G(\cdot-\mu)\ |\ G \text{ cumple }E_{G}(\epsilon)=0   \right\}$$ ($X=EX_{i}+\epsilon_{i}$) $\Theta=\mathbb{R}\times\Gamma_{0}'$
>Entonces tenemos un modelo. Luego $T$ es un estimador por que su conjunto de llegada es donde se mueve el valor esperado de las variables aleatorias $X_{i}$
>- (b) *Varianza muestral* $T(X_{1},\ldots,X_{n})=\frac{1}{n+1}\sum^{n}_{i=1}(X_{i}-\overline{X}_{n})^{2}$ es un estadistico. Nuevamente $T$ es un estimador pues $Im(T)\subseteq (0,+\infty)$ donde se mueven las varianzas de las variables aleatorias
>- (c) *Funcion de distribucion empirica*
>$$\hat{F}_{n}(x_{1},\ldots,x_{n})(x)=\sum^{n}_{i=1} I_{(-\infty,x]}(x_{i})$$
>Notar: Si $(X_{1},\ldots,X_{n})^{T}$ es un vector aleatorio entonces $\hat{F}_{n}(X_{1},\ldots,X_{n})(x)$ con x fijo, es una variable aleatoria. 
>Por ejemplo si $X$ mapea personas a su altura y $X_{i}\sim X$ (osea son i.i.d) entonces $\hat{F}_{n}(X_{1},\ldots,X_{n})(x)$ recibe personas y dice en promedio cuantas de ellas son mas altas que $x$ 
>Notar: Si $X_{1}(w),\ldots,X_{n}(w)$ son fijos entonces $\hat{F}_{n}$ es una f.d.a
>- (d) *Mediana muestral* $\hat{m}_{n}:\mathbb{R}^{n}\rightarrow\mathbb{R}$. Si tenemos una muestra $x_{1},\ldots,x_{n}$ y la ordenamos $x_{(1)},\ldots,x_{(n)}$ entonces 
>$$\hat{m}_{n}(x_{1},\ldots,x_{n})=\begin{cases}x_{\left( \frac{n+1}{2} \right)}\quad & \text{si }n \text{ es impar}\\ \frac{1}{2}\left[ x_{\left( \frac{n}{2} \right)} + x_{\left( \frac{n}{2}+1 \right)} \right]\quad &\text{si }n \text{ es par}\end{cases}$$
>Recordemos que una mediana de una distribucion $f$ se define como un $m$ tal que 
>$$P(Y\geq m)\geq 0.5 \quad 1-F(m_{-})=1-P(Y<m)\geq0.5$$ donde $m-$ es el limitep or abajo
>$$P(Y\leq m)\leq 0.5$$
>Si ahora tomamos $\hat{F}_{n}$ se puede observar que $1-\hat{F}_{n}(\hat{m}_{n})=P(Y\geq m_{n})$
>

## Estadisticos Suficientes

>[!Definition] Estadistico suficiente
>Sea $T : \mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ estadistico, $X$ vector aleatorio en $\mathbb{R}^{n}$. Sea $\mathcal{P}=\{ P_{\theta} \}_{\theta\in \Theta}$ flia de distribuciones. Decimos que $T$ es suficiente $\mathcal{P}$ (o para $\Theta$) si la funcion distribucion condicional $$F(B,t)=P_{\theta}(X\in B\ | \ T=t)$$
>no depende de $\theta$ 
>Si $P_{\theta}(X\in B,T\in G)=P_{\theta}(B\cap T^{-1}(G))$ con $B\in \mathcal{B}(\mathbb{R}^{n}),G\in \mathcal{B}(\mathbb{R}^{m})$
>Osea $$P_{\theta}(X\cap T^{-1}(G))=\int_{T^{-1}(G)}F(B,t)P_{\theta}(dt)$$ para cualquier $P_{\theta}\in \mathcal{P}$ que elijamos
>Osea si $T$ es suficiente la funcion $F(B,t)$ no depende de $\theta$ (sirve la misma funcion para todas las distribuciones $P_{\theta}$)

>[!Example]- 
>Definamos $X_{1},\ldots,X_{n}$ vaiid tales que $X_{1}\sim Bi(1,\theta)$ con $0<\theta<1$ entonces 
>$$\mathcal{P}=\{ (X_{1},\ldots,X_{n}):X_{i}\sim Bi(1,\theta) \}$$
>Con $$\begin{align} P_{\theta}(X_{1}=x_{1},\ldots,X_{n}=x_{n})=P(X_{1}=x_{1}\cap\ldots\cap X_{n}=x_{n})& = \prod^{n}_{i=1}P(X_{i}=x_{i})\\&=\prod\theta^{x_{i}} (1-\theta)^{1-x_{i}}  \\ &=\theta^{\sum^{n}_{i=1} x_{i}} (1-\theta)^{\sum^{n}_{i=1} 1-x_{i}}  \end{align}$$
>esto si $x_{i}=1 ,0$ si no $P_{\theta}=0$.
>Entonces $T(X_{1},\ldots,X_{n})=\sum^{n}_{i=1}X_{i}$ es suficiente.
>>[!Proof]-
>>1. Sabemos $T(X_{1},\ldots,X_{n})\sim Bi(n,\theta)$
>>2. $$\begin{align}P(X_{1}=x_{1}\cap\ldots\cap X_{n}=x_{n}\ | \ T=t)& =\frac{P(X_{1}=x_{1}\cap\ldots\cap T=t)}{P(T=t)}\\&=\begin{cases}0 \quad & t \neq \sum^{}_{} x_{i}\\ \frac{P(X_{1}=x_{1}\cap\ldots\cap X_{n}=x_{n})}{{n\choose t}\theta^{t}(1-\theta)^{n-t}} \quad& t=\sum x_{i}\end{cases}\end{align}$$
>>Obs la segunda rama vale por que $[X_{1}=x_{1}\cap\ldots\cap X_{n}=x_{n}]\subseteq [T=t]$ 
>>3. Reemplazando la probabilidad conjunta (numerador) y simplificando llegamos a $$\begin{cases}0\quad&t\neq\sum^{}_{} x_{i}\\ \frac{1}{n\choose t}\quad & t=\sum^{}_{} x_{i} \end{cases}$$
>>Que es independiente de $\theta$ mostrando que $T$ es suficiente.
>>Notar que no es estimador por que $Im(T)\not\subseteq (0,1)=\Theta$  

^6ea529

>[!Theorem] Teorema de Factorizacion DUDA
>Sea el modelo parametrico $\mathcal{P}=\{ P_{\theta} \}_{\theta\in \Theta}$ con $P_{\theta}$ f.d.a discretas o absolutamente continuas (respecto de la medida lebesgue) **POR QUE CON RESPECTO A MEDIDA LEBESGUE, NO PODRIA SER CUALQUIER OTRA MEDIDA TAL QUE $P_{\theta}<<\lambda$ **. Sea $X$ vector aleatorio $X : \Omega\rightarrow \mathbb{R}^{k}$ y $T : \mathbb{R}^{k}\rightarrow \mathbb{R}^{m}$ estadistico. Entonces $T$ es suficiente para $\mathcal{P}$ si y solo si existen funciones $g:\mathbb{R}^{m}\times\Theta\rightarrow\mathbb{R}$ y $h : \mathbb{R}^{k}\rightarrow\mathbb{R}$ medibles tales que $$p_{\theta}(x):=p(x,\theta)=g(T(x),\theta).h(x)$$
>donde $p_{\theta}$ es la densidad conjunta (derivada de $P_{\theta}$)       

^0921f6

>[!Example]-
>Si tomamos el [[IE - Teorico 16#^6ea529]] 
>$$\begin{align}P(X_{1}=x_{1},\ldots,X_{n}=x_{n})&=\begin{cases}\theta^{\sum^{n}_{i=1} x_{i}} (1-\theta)^{\sum^{n}_{i=1} 1-x_{i}} \quad & (x_{1},\ldots x_{n})\in \{ 0,1 \}^{n} \\ 0 \quad & (x_{1},\ldots x_{n})\not\in\{ 0,1 \}^{n} \end{cases}\\&=\left[\theta^{\sum x_{i}} (1-\theta)^{n-\sum x_{i}} \right]I_{\{ 0,1 \}^{n} }(x_{1},\ldots,x_{n})\\ &=g(T(x),\theta)h(x)\end{align}$$
>Entonces es suficiente por teorema de factorizacion

>[!Example]
>sin copiar

>[!Example]
>sin copiar

>[!Remark] Por que le decimos Estadistico Suficiente
>$F(B,t)=P_{\theta}(X\in B|T=t)$ no depende del parametro original $\theta$ si $T$ es suficiente.
>Digamos, si conocemos $F(B,t)$ podriamos simular y generar resultados de una vector. Supongamos
>$$Y_{t}\sim F(\cdot,t)\quad X|_{T=t}\sim F(\cdot,t)$$
>Entonces $P(Y_{t}\in B)=F(B,t)=P(Y_{t}\in B)$ y $P(X|_{T=t}\in B)=F(B,t)=P()$ 
> **DUDA**
