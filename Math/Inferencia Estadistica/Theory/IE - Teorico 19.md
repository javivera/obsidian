---
dateCreated: 2025-05-06,09:07
---
## Estimacion insesgada y optimalidad de estimadores

>[!Definition]
>$\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ modelo parametrico e identificable. Sea $\delta$ un estadistico de un parametro ${} q(P_{\theta}) {}$ tal que $\delta(X)$ tiene esperanza finita si $X\sim P_{\theta}$, $X : \Omega\rightarrow \Omega_{X}$ (osea $E_{\Omega}(|\delta (X)|)<\infty$).
>Se llama **sesgo** del estimador $\delta$ a una funcion definida en $\Theta$ como
>$$S_{\theta}(\delta)=E_{\theta}(\delta (X))-q(P_{\theta})$$
>Si $\delta$ es tal que $S_{\theta}(\delta)=0\quad\forall \theta\in \Theta$ $\delta$ se dice **insesgado** 

>[!Example]
>- $X_{1},\ldots,X_{n}$ iid tal que $E(X_{1}^{2})<\infty$ y $\mu=EX_{1}$. Osea estamos mirando el modelo parametrico de las normales con varianza fija y media como parametro y cuando decimos $\mu=EX_{1}$ estamos diciendo que estamos mirando $P_{\mu}$. Luego si $\delta_{1}(X_{1},\ldots,X_{n})=\frac{1}{n}\sum^{n}_{i=1}X_{i}$ entonces $E_{\mu}(\delta_{1} (X_{1},\ldots,X_{n}))=\mu$ y obviamente $q(P_{\mu})=\mu$ por que estamos tomando la inversa de la parametrizacion como [[IE - Teorico 15#^a24bcd]] (por que es identificable el modelo). Y esto lo podemos hacer para cualquier $P_{\mu}$ del modelo. Entonces $S_{\mu}(\delta_{1} )=0\quad\forall \mu\in \Theta$ por ende $\delta$ es insesgado para la media poblacional
>- Otro ejemplo seria si en cambio tomamos como modelo parametrico las normales con una media fija y varianza como parametro $\delta_{2}(X_{1},\ldots,X_{n})=\frac{1}{n-1}\sum^{n}_{i=1}(X_{i}-\overline{X_{n}})^{2}$ entonces $E_{\sigma^{2}}(\delta_{2}(X_{1},\ldots,X_{n}))=V(X_{1})=\sigma^{2} = q(P_{\sigma^{2}})$. Entonces $\delta_2$ es un estimador insesgado para la varianza poblacional

>[!Remark]
>Recordar $ECMP(Y,g(Z))=E(Y-g(Z))^{2}$. Vamos a usar esto mismo para evaluar en promedio la performance de $\delta$ para dar informacion sobre $q(\theta)$
>

>[!Definition] Error cuadratico medio del estimador
>Se llama **Error cuadratico medio del estimador $\delta$** a la funcion 
>$$ECM_{\theta}(\delta)=E_{\theta}\left[(\delta (X)-q(\theta))^{2}\right]$$
>si $E_{\theta}(\delta^{2}(X))<\infty\quad\forall \theta\in \Theta$

>[!Remark]
>Notemos que el $ECM_{\theta}$ se va a descomponer en dos terminos que representan propiedades del estimador $\delta$
>$$\begin{align}ECM_{\theta}(\delta(X))&=E_{\theta}\big(\delta (X)-E_{\theta}(\delta(X))+E_{\theta}\big(\delta(X))-q(\theta)\big)^{2} \\ & = E_{\theta}\big(\delta (X)-E_{\theta}\delta(X) \big)^{2}+2E_{\theta}\bigg[\big(\delta (X)-E_{\theta}\delta (X)\big)\big(E_{\theta}\delta(X)-q(\theta)\big)\bigg]+E_{\theta}\big(E_{\theta}(\delta(X))-q(\theta)\big)^{2}\\ &=E_{\theta}\big(\delta (X)-E_{\theta}\delta(X) \big)^{2}+2\big(E_{\theta}\delta(X)-q(\theta)\big)E_{\theta}\big(\delta (X)-E_{\theta}\delta (X)\big)+E_{\theta}\big(E_{\theta}(\delta(X))-q(\theta)\big)^{2}\\ & =V_{\theta}(\delta(X) )+S_{\theta}^{2}(\delta (X))\end{align}$$
>por que $E_{\theta}\big(\delta (X)-E_{\theta}\delta (X)\big)=0$ 
>Ahora si $\delta$ es insesgado entonces $$ECM_{\theta}(\delta(X) )=V_{\theta}(\delta (X))$$   
>Entonces vamos a ver si podemos obtener estimadores de minima varianza entre los estimadores insesgados. Osea obtener estimadores de min $ECM$ entre los insesgados.

>[!Remark]
>Sea $\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ con $\Theta\subseteq \mathbb{R}^{k}$ y $\lambda$ medida $\sigma$-finita para $\mathcal{F}_{X}$ tal que $P_{\theta}<<\lambda$. Sea $X : (\Omega,\mathcal{F},P)\rightarrow (\Omega_{X},\mathcal{F}_{X})$. Y $\delta:(\Omega_{X},\mathcal{F}_{X})\rightarrow(\mathbb{R}^{k},\mathcal{B}(\mathbb{R}^{k}))$ estadistico. Definimos
>$$\mathcal{U} =\{U=u\circ X \quad u : \Omega_{X}\rightarrow \mathbb{R}^{k} : E_{\theta}||u(x)||^{2}<\infty \quad\land E_{\theta}(U(x))=\theta\quad\forall \theta\in \Theta \}$$
>Observemos que vale una generalizacion de un resultado ya visto cuando estudiamos prediccion
>

>[!Lemma]
>Se $U$ vector aleatorio en $\mathbb{R}^{k}$ tal que $E||U||^{2}<\infty$ y $\mathcal{G}$ una sub $\sigma$-algebra de $\mathcal{F}$. Se cumple $$V(U)=E(V(U|\mathcal{G}))+V(E(U|\mathcal{G}))$$
>>[!Proof]
>>1. $\begin{align} V(U)&=E\big[(U-EU)(U-EU)^{T}\big] \\ &=E\big[(U-E(U|\mathcal{G})+E(U|\mathcal{G})-E(U))(U-E(U|\mathcal{G})+E(U|\mathcal{G})-E(U))^{T}\big]\\&= a \end{align}$
>>2. Terminar

>[!Theorem] Desigualdad Lao Bacarel
>Sea $u\in \mathcal{U}$ y $T$ un estadistico suficiente para $\mathcal{P}$ entonces $\forall \theta\in \Theta\subseteq \mathbb{R}^{k}$ se cumple que $E(U|T)\in \mathcal{U}$ y $V_{\theta}(E(U|T))\leq V_{\theta}(U)$. Donde $\leq$ entre $A$ y $B$ matrices simetricas def positivas significa que $B-A$ es simetrica definida no negativa
>>[!Proof]
>>1. $E(U|T)$ no depende del parametro desconocido por que $T$ es suficiente y por lo tanto la probabilidad condicional no depende del parametro desconocido por definicion
>>2. $E_{\theta}(E(U|T))=E_{\theta}U=\theta$ por que ${} U\in \mathcal{U}$ 
>>3. Por lema previo $\mathcal{G}=\sigma(T)$
>>4. $V_{\theta}(U)=E_{\theta}(V(U|T))+V_{\theta}(E(U|T))$
>>5. $V(U|T)=E(U-E(U|T)^{2}|T)\geq 0$
>>6. Por lo tanto $V_{\theta}(U)\geq V_{\theta}(E(U|T))\quad\forall \theta\in \Theta$

>[!Theorem] Lehmann - Scheffe 
>Sea $U\in \mathcal{U}$ y sea $T$ suficiente y completo para $\mathcal{P}$. Entonces $\forall \theta\in \Theta$ y $W\in \mathcal{U}$ se cumple que 
>$$(U|T)\in \mathcal{U} \quad\land\quad V_{\theta}(E(U|T))\leq V_{\theta}(W)$$
>>[!Proof]
>>1. Sean $W,U\in \mathcal{U}$ con $E(W|T),E(U|T)\in \mathcal{U}$  
>>2. Entonces $$E_{\theta}\left( \frac{E(W|T)-E(U|T)}{g(T)} \right)=0\quad\forall \theta\in \Theta$$
>>3. Osea $E_{\theta}g(T)=0\quad\forall \theta\in \Theta$
>>4. Como $T$ es completo 


