---
dateCreated: 2025-05-06,09:07
---
## Estimacion insesgada y optimalidad de estimadores

>[!Definition] Sesgo de estimador
>$\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ modelo parametrico e identificable. Sea $\delta$ un estadistico de un parametro ${} q(P_{\theta}) {}$ tal que $\delta(X)$ tiene esperanza finita si $X\sim P_{\theta}$, $X : \Omega\rightarrow \Omega_{X}$ (osea $E_{\Omega}(|\delta (X)|)<\infty$).
>Se llama **sesgo** del estimador $\delta$ a una funcion definida en $\Theta$ como
>$$S_{\theta}(\delta)=E_{\theta}(\delta (X))-q(P_{\theta})$$
>Si $\delta$ es tal que $S_{\theta}(\delta)=0\quad\forall \theta\in \Theta$ $\delta$ se dice **insesgado** 

^0e3602

>[!Example]
>- $X_{1},\ldots,X_{n}$ iid tal que $E(X_{1}^{2})<\infty$ y $\mu=EX_{1}$. Osea estamos mirando el modelo parametrico de las normales con varianza fija y media como parametro y cuando decimos $\mu=EX_{1}$ estamos diciendo que estamos mirando $P_{\mu}$. Luego si $\delta_{1}(X_{1},\ldots,X_{n})=\frac{1}{n}\sum^{n}_{i=1}X_{i}$ entonces $E_{\mu}(\delta_{1} (X_{1},\ldots,X_{n}))=\mu$ y obviamente $q(P_{\mu})=\mu$ por que estamos tomando la inversa de la parametrizacion como [[IE - Teorico 15#^a24bcd]] (por que es identificable el modelo). Y esto lo podemos hacer para cualquier $P_{\mu}$ del modelo. Entonces $S_{\mu}(\delta_{1} )=0\quad\forall \mu\in \Theta$ por ende $\delta$ es insesgado para la media poblacional
>- Otro ejemplo seria si en cambio tomamos como modelo parametrico las normales con una media fija y varianza como parametro $\delta_{2}(X_{1},\ldots,X_{n})=\frac{1}{n-1}\sum^{n}_{i=1}(X_{i}-\overline{X_{n}})^{2}$ entonces $E_{\sigma^{2}}(\delta_{2}(X_{1},\ldots,X_{n}))=V(X_{1})=\sigma^{2} = q(P_{\sigma^{2}})$. Entonces $\delta_2$ es un estimador insesgado para la varianza poblacional

^eff886

>[!Remark]
>Recordar $ECMP(Y,g(Z))=E(Y-g(Z))^{2}$. Vamos a usar esto mismo para evaluar en promedio la performance de $\delta$ para dar informacion sobre $q(\theta)$
>

>[!Definition] Error cuadratico medio del estimador
>Se llama **Error cuadratico medio del estimador $\delta$** a la funcion 
>$$ECM_{\theta}(\delta)=E_{\theta}\left[(\delta (X)-q(\theta))^{2}\right]$$
>si $E_{\theta}(\delta^{2}(X))<\infty\quad\forall \theta\in \Theta$

^cfb524

>[!Proposition] Descomposicion de error cuadratico medio
>Notemos que el $ECM_{\theta}$ se va a descomponer en dos terminos que representan propiedades del estimador $\delta$
>$$\begin{align}ECM_{\theta}(\delta(X))&=E_{\theta}\big(\delta (X)-E_{\theta}(\delta(X))+E_{\theta}\big(\delta(X))-q(\theta)\big)^{2} \\ & = E_{\theta}\big(\delta (X)-E_{\theta}\delta(X) \big)^{2}+2E_{\theta}\bigg[\big(\delta (X)-E_{\theta}\delta (X)\big)\big(E_{\theta}\delta(X)-q(\theta)\big)\bigg]+E_{\theta}\big(E_{\theta}(\delta(X))-q(\theta)\big)^{2}\\ &=E_{\theta}\big(\delta (X)-E_{\theta}\delta(X) \big)^{2}+2\big(E_{\theta}\delta(X)-q(\theta)\big)E_{\theta}\big(\delta (X)-E_{\theta}\delta (X)\big)+E_{\theta}\big(E_{\theta}(\delta(X))-q(\theta)\big)^{2}\\ & =V_{\theta}(\delta(X) )+S_{\theta}^{2}(\delta (X))\end{align}$$
>por que $E_{\theta}\big(\delta (X)-E_{\theta}\delta (X)\big)=0$
>

^f63e36

>[!Remark]
>Si $\delta$ es insesgado (usando [[IE - Teorico 19#^f63e36]]) entonces $$ECM_{\theta}(\delta(X) )=V_{\theta}(\delta (X))$$   
>Entonces vamos a ver si podemos obtener estimadores de minima varianza entre los estimadores insesgados. Osea obtener estimadores de min $ECM$ entre los insesgados.

>[!Remark]
>Sea $\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ con $\Theta\subseteq \mathbb{R}^{k}$ y $\lambda$ medida $\sigma$-finita para $\mathcal{F}_{X}$ tal que $P_{\theta}<<\lambda$. Sea $X : (\Omega,\mathcal{F},P)\rightarrow (\Omega_{X},\mathcal{F}_{X})$. Y $\delta:(\Omega_{X},\mathcal{F}_{X})\rightarrow(\mathbb{R}^{k},\mathcal{B}(\mathbb{R}^{k}))$ estadistico. Definimos
>$$\mathcal{U} =\{U=u\circ X \quad u : \Omega_{X}\rightarrow \mathbb{R}^{k} : E_{\theta}||u(x)||^{2}<\infty \quad\land E_{\theta}(U(x))=\theta\quad\forall \theta\in \Theta \}$$
>Este es basicamente el conjunto de estimadores insesgados con segundo momento finito
>

>[!Theorem] Desigualdad Rao Blackwell
>Sea $U\in \mathcal{U}$ y $T$ un estadistico suficiente para $\mathcal{P}$ entonces $\forall \theta\in \Theta\subseteq \mathbb{R}^{k}$ se cumple que $E(U|T)\in \mathcal{U}$ y $V_{\theta}(E(U|T))\leq V_{\theta}(U)$.
>Donde $\leq$ entre $A$ y $B$ matrices simetricas def positivas significa que $B-A$ es simetrica definida no negativa
>>[!Proof]-
>>1. $T$ es suficiente y por lo tanto la probabilidad condicional no depende del parametro desconocido por definicion.
>>2. Por ende $E(U|T)=g(T)$ entonces $E(U|T)$ no depende de el parametro desconocido tampoco 
>>(Esto lo pedimos por que estamos en el contexto de encontrar estimadores insesgados de minima varianza, por lo tanto queremos que $E(U|T)$ sea un estimador, con lo cual no puede cambiar con el parametro) 
>>3. $E_{\theta}(E(U|T))=E_{\theta}U=\theta$ por que ${} U\in \mathcal{U}$ mostrando que $E(U|T)\in \mathcal{U}$ 
>>4. Por lema previo $\mathcal{G}=\sigma(T)$
>>5. Y recordemos por [[IE - Teorico 13#^168226]] $$V_{\theta}(U)\geq V_{\theta}(E(U|T))\quad\forall \theta\in \Theta$$

^fcfa2d

>[!Theorem] Lehmann - Scheffe
>Sea $U\in \mathcal{U}$ y sea $T$ suficiente y completo para $\mathcal{P}$. Entonces $\forall \theta\in \Theta$ y $W\in \mathcal{U}$ se cumple que 
>$$E(U|T)\in \mathcal{U} \quad\land\quad V_{\theta}(E(U|T))\leq V_{\theta}(W)$$
>>[!Proof]-
>>1. Sean $W,U\in \mathcal{U}$ entonces $E(W|T),E(U|T)\in \mathcal{U}$ visto en [[IE - Teorico 19#^fcfa2d]] 
>>2. Si definimos $g(T)=E(W|T)-E(U|T)$ 
>>3. Como son insesgados $E_{\theta}(E(W|T))=q(P_{\theta})=E_{\theta}(E(U|T))$   $$E(g(T))=E_{\theta}\left(E(W|T)-E(U|T) \right)=E_{\theta}(E(W|T))-E_{\theta}(E(U|T))=0\quad\forall \theta\in \Theta$$
>>4. Osea $E_{\theta}(g(T))=0\quad\forall \theta\in \Theta$
>>5. Como $T$ es completo 
>>6. $$\mathbb{P}_\theta(g(T) = 0) = 1$$
>>7. $$\mathbb{P}_\theta \left( \mathbb{E}(W \mid T) = \mathbb{E}(U \mid T) \right) = 1 \quad \forall \theta \in \Theta$$
>>8. Y esto es basicamente como probar que ambas variables aleatorias son iguales (pp). Se puede pensar como que casi todos los eventos $w\in \Omega$ cumplen que $E(W|T)(w)=E(U|T)(w)$  
>>9. Pero si son pp la misma variable aleatoria, tienen la misma varianza. $$\mathbb{V}_\theta(\mathbb{E}(U \mid T)) = \mathbb{V}_\theta(\mathbb{E}(W \mid T)) \leq \mathbb{V}_\theta(W)$$
>>(La desigualdad es por [[IE - Teorico 19#^fcfa2d]] nuevamente) 

^b23d1a

> [!Definition] IMVU
> Un estadístico $U\in \mathcal{U}$  se dice **estimador insesgado de mínima varianza uniformemente** (**IMVU** o **UMVU**) si $\forall W\in \mathcal{U}$: $$\mathbb{V}_\theta(U) \leq \mathbb{V}_\theta(W) \quad \forall \theta \in \Theta$$

^68e6b5

>[!Corollary] Unicidad pp de IMVU
>Si tenemos $T$ estadístico suficiente y completo para $\mathcal{P}$ y $U\in \mathcal{U}$ entonces $E(U|T)$ es IMVU y es unico pp
>>[!Proof]-
>>1. Sabemos que es de menor varianza por [[IE - Teorico 19#^b23d1a]]
>>2. Y sabemos que dado cualquier otro $W\in \mathcal{U}$ $$\mathbb{P}_\theta\big(\mathbb{E}(U \mid T) = \mathbb{E}(W \mid T)\big) = 1 \quad \forall \theta \in \Theta$$
>>Por lo tanto son iguales pp
>>3. Entonces $\mathbb{E}(U \mid T)$ es el unico **IMVU** (Estadistico insesgado de minima varianza uniformemente) pp.

^5188e5

>[!Example] Ejemplo de IMVU
>Sea $X_1, \dots, X_n$ con $X_i \sim \mathcal{U}(0, \theta)$ $\theta > 0$ desconocido. Sabemos que:
>$$T(X_1, \dots, X_n) = \max_{1 \le i \le n} X_i$$
>es suficiente y completo para $\theta$.
>Calculemos la t.d.d. de $T$ que es:
>$$G_\theta(t) = F_\theta(t)^n \quad \text{con } X_i \sim F_\theta$$
>La densidad de $X_{(n)} = \max\{X_1, \dots, X_n\}$ es:
>$$g_\theta(t) = n \cdot F_\theta(t)^{n-1} f_\theta(t)$$
>donde $f_\theta$ es la densidad de $F_\theta$. Entonces:
>$$\mathbb{E}_\theta[T] = \int_{\mathbb{R}} t \cdot g_\theta(t) \, dt = \frac{n}{\theta^n} \int_0^\theta t^n \ dt = \frac{n}{\theta^n} \cdot \frac{\theta^{n+1}}{n+1} = \frac{n}{n+1} \cdot \theta$$
>Si tomamos: $U = \frac{n+1}{n} T$ entonces: $$\mathbb{E}_\theta(U) = \theta \quad \forall \theta$$
>Con lo cual $U$ es insesgado
>Y además: $$\mathbb{E}(U \mid T) = \mathbb{E} \left( \frac{n+1}{n} T \mid T \right) = \frac{n+1}{n} T$$
>Luego $U = \frac{n+1}{n} T$ es el **IMVU**
>Si queremos saber cuánto vale $\text{ECM}_\theta(U)$ necesitamos calcular $\mathbb{V}_\theta(T)$: $$\mathbb{E}_\theta(T^2) = \int_{\mathbb{R}} t^2 \cdot g_\theta(t) \, dt= \frac{n}{\theta^n} \int_0^\theta t^{n+1} \, dt= \frac{n}{\theta^n} \cdot \frac{\theta^{n+2}}{n+2}= \frac{n}{n+2} \cdot \theta^2$$
>La esperanza ya la tenemos: $$\mathbb{V}_\theta(T) = \frac{n}{n+2} \theta^2 - \frac{n^2}{(n+1)^2} \theta^2= \theta^2 \left( \frac{n}{n+2} - \frac{n^2}{(n+1)^2} \right)$$
>Entonces: $$\mathbb{V}_\theta(U) = \left( \frac{n+1}{n} \right)^2 \cdot \theta^2 \cdot \left( \frac{n}{n+2} - \frac{n^2}{(n+1)^2} \right)$$
>Esta es la **mejor varianza** que podemos obtener entre todos los estimadores insesgados de $\theta$.

^778f62

>[!Remark] Resumen
![[Pasted image 20250526192210.png]]
