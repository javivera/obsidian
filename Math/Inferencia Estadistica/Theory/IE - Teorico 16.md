---
dateCreated: 2025-05-11,20:37
---

## Estadisticos Suficientes

>[!Definition] Estadistico suficiente RARO
>Sea $T : \mathbb{R}^{n}\rightarrow \mathbb{R}^{m}$ estadistico, $X$ vector aleatorio en $\mathbb{R}^{n}$. Sea $\mathcal{P}=\{ P_{\theta} \}_{\theta\in \Theta}$ flia de distribuciones. Decimos que $T$ es suficiente $\mathcal{P}$ (o para $\Theta$) si la funcion distribucion condicional $$F(B,t)=P_{\theta}(X\in B\ | \ T=t)$$
>no depende de $\theta$ 
>Si $P(X\in B,T\in G)=P_{\theta}(X^{-1}(B)\cap T^{-1}(G))$ con $B\in \mathcal{B}(\mathbb{R}^{n}),G\in \mathcal{B}(\mathbb{R}^{m})$
>Osea $$P(X\in B,T\in G)=P_{\theta}\big(B\cap T^{-1}(G)\big)=\int_{T^{-1}(G)}F(B,t)P_{\theta}(dt)$$para cualquier $P_{\theta}\in \mathcal{P}$ que elijamos
>Osea si $T$ es suficiente la funcion $F(B,t)$ no depende de $\theta$ (sirve la misma funcion para todas las distribuciones $P_{\theta}$)

^4a508b

>[!Example] Ejemplo estadistico suficiente
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

>[!Example] Ejemplo teorema factorizacion
>Si tomamos el [[IE - Teorico 16#^6ea529]] 
>$$\begin{align}P(X_{1}=x_{1},\ldots,X_{n}=x_{n})&=\begin{cases}\theta^{\sum^{n}_{i=1} x_{i}} (1-\theta)^{\sum^{n}_{i=1} 1-x_{i}} \quad & (x_{1},\ldots x_{n})\in \{ 0,1 \}^{n} \\ 0 \quad & (x_{1},\ldots x_{n})\not\in\{ 0,1 \}^{n} \end{cases}\\&=\left[\theta^{\sum x_{i}} (1-\theta)^{n-\sum x_{i}} \right]I_{\{ 0,1 \}^{n} }(x_{1},\ldots,x_{n})\\ &=g(T(x),\theta)h(x)\end{align}$$
>Entonces es suficiente por teorema de factorizacion

^885a56

>[!Example] Otro ejemplo teorema factorizacion
>Sean $X1,\ldots,Xn​$ v.a.i.i.d. con $X_{1}∼U(0,θ)$ $θ>0$. Veamos la densidad conjunta de ${} X_{1},\ldots,X_{n} {}$
>La densidad de cada $X_i$ es:
>$$ f_{X_{1}}(x)=P(X_1=x) = \begin{cases} \frac{1}{\theta} & \text{si } x \in \{1,\ldots, \theta\} \\ 0 & \text{en otro caso} \end{cases}$$
>Por lo tanto la densidad conjunta de la muestra es:
>$$\begin{align*} f(x_1, \dots, x_n;\theta) &= \prod_{i=1}^n f_{X_1}(x_i) \\ &= \prod_{i=1}^n \frac{1}{\theta} I_{\{1,\theta\}}(x_i) \\ &= \frac{1}{\theta^n} \prod_{i=1}^n I_{\{1,\theta\}}(x_i) \end{align*}$$
>El producto de las indicadoras es 1 si y solo si todas las $x_i$ están en $(0, \theta)$, lo que es equivalente a que el mínimo sea mayor a 0 y el máximo sea menor a $\theta$.
>$$ f(x_1, \dots, x_n, \theta) = \frac{1}{\theta^n} I_{(0, \infty)}(\min x_i) I_{(-\infty, \theta)}(\max x_i) $$
>Podemos factorizar esta expresión como:
>$$ f(x_1, \dots, x_n, \theta) = \left( \frac{1}{\theta^n} I_{(-\infty, \theta)}(\max x_i) \right) \cdot \left( I_{(0, \infty)}(\min x_i) \right) $$
>donde la primera parte es $g(T(x), \theta)$ con $T(x)=\max x_i$, y la segunda es $h(x)$.
>Conclusion $T(X_1, \dots, X_n) = \max_i(X_i)$ es un estadístico suficiente para $\theta$

^0bac2c

>[!Remark] Inentendible
>¿Por qué le decimos suficiente a T?
>Porque si la distribución condicional $F(B,t) = P(X \in B | T=t)$ no depende del parámetro original $\theta$, entonces $T$ es suficiente.
>Digamos, si conocemos $F(B,t)$, podríamos simular y generar resultados de un vector.
>
>Si $Y_t \sim F(B,t)$ y la distribución de $X$ condicional a $T=t$ es $X|_{T=t} \sim F(B,t)$
>$\implies P(Y_t \in B | T=t) = P(X \in B | T=t)$
>Si integramos con respecto a la distribución de $T$ para el parámetro $\theta$, $P_\theta(dt)$:
>$$ \int P(Y_t \in B | T=t) P_\theta(dt) = \int P(X \in B | T=t) P_\theta(dt) $$
>Por la ley de probabilidad total, esto es:
>$$ P_\theta(Y_t \in B) = P_\theta(X \in B) $$
>Es decir, el estadístico $T$ es suficiente para regenerar la distribución no condicional de $X$.

^15e502
