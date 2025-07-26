---
dateCreated: 2025-05-06,09:07
---
>[!Definition] Equivalencia de estadisticos
>Si $\mathcal{S}$ y $T$ son estadisticos definidos en $\Omega_{x}$ se dicen *equivalentes* si existen funciones medibles $f$ y $g$ tales que $S=f(T)$ y $T=g(S)$ 

^ef52ee

>[!Lemma] Estadisticos equivalentes misma sigma
>Si $S$ y $T$ son estadisticos equivalentes entonces $\sigma(S)=\sigma(T)$ 
>>[!Proof]- 
>>1. pues $T=g(S)$ y $S=f(T)$ 
>>2. $T^{-1}(S^{-1}\circ g^{-1})$ y $S^{-1}=T^{-1}\circ f^{-1}$ 
>>3. $\sigma(T)=\{ T^{-1}(B):B\in \mathcal{F}_{T} \}$
>>4. $\sigma(S)=\{ S^{-1}(C):C\in \mathcal{F}_{S} \}$  
>>5. Luego $S^{-1}(C)=T^{-1}(f^{-1}(C))$ 
>>6. Pero $f^{-1}(C)\in \mathcal{F}_{T}$ por que $C\in \mathcal{F}_{S}$ y $f$ medible
>>7. Entonces $S^{-1}(C)\in \sigma(T)$ 
>>8. Por ende $\sigma(S)\subseteq \sigma(T)$
>>9. Analogamente $T^{-1}(B)=S^{-1}(g^{-1}(B))$ con $g^{-1}(B)\in \mathcal{F}_{S}$ 
>>10. Entonces $\sigma(T)\subseteq \sigma(S)$   

^763e2a

>[!Lemma] Propiedades estadisticos equivalentes
>Si $S$ y $T$ son equivalentes luego 
>- Si $T$ es suficiente entonces $S$ es suficiente [[IE - Teorico 17#^04386c]]
>- Si $T$ es suficiente minimal entonces $S$ es suficiente minimal [[IE - Teorico 17#^3cd0e6]]
>>[!Proof]
>>Ej 1 pr 5

^b19814

>[!Definition] Estadistico completo
>Sea $\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ conjunto de funciones distribucion en $\Omega_{X}$. Sea el estadistico $T : \Omega_{X}\rightarrow \mathcal{T}$. 
>$T$ se dice **completo para $\mathcal{P}$** si dada cualquier funcion $g : \mathcal{T}\rightarrow \mathbb{R}$ $\mathcal{F}_{\mathcal{T}}$-medible 
>($g^{-1}(B)\in \mathcal{F}_{\mathcal{T}}\quad\forall B\in \mathcal{B}(\mathbb{R})$) y tal que $g\circ T$ es integrable y $$E_{\theta}(g\circ T)=0\quad\forall P_{\theta}\in \mathcal{P}$$ entonces $$P_{\theta}(g(T)=0)=1\quad\forall P_{\theta}\in \mathcal{P}$$        

^400e12

>[!Example] Estadistico suficiente y completo
>1. Sean $X_{1},\ldots,X_{n}$ v.a.i.i.d $X_{1}\sim\mathcal{U}(0,\theta)$ con $\theta>0$ desconocido. Para encontrar un estadistico suficiente consideramos la funcion densidad conjunta 
>$$p(x_{1},\ldots,x_{n},\theta)=\frac{1}{\theta^{n} }\prod_{i=1}^{n} I_{[0,\theta]}(x_{i})=\frac{1}{\theta^{n} }I_{[0,\infty]}(x_{(1)})I_{[0,\theta]}(x_{(n)})=g(x_{(n)},\theta)h(x_{1},\ldots,x_{_{n}})$$
>con $g(x_{(n)},\theta)=\frac{1}{\theta^{n}}I_{[0,\theta]}x_{(n)}$ y $h(x_{1},\ldots,x_{n})=I_{[0,\infty)}(x_{(1)})$ 
>2. Luego $\max X_{n}:=X_{(n)}$ es suficiente por [[IE - Teorico 16#^0921f6]]. 
>3. Veamos que es completo
>4. Tomemos $g$ cualquiera tal que $E_{\theta}(g\circ X_{(n)})=0\quad\forall \theta\in \Theta$ 
>5. Para calcular esa esperanza necesitamos la densidad de proba. Calculemos primero la acumulada y derivemos para conseguir la densidad
>6. $$\begin{align}P(X_{(n)}\leq t)=P(\max(X_{1},\ldots,X_{n})\leq t& =P(X_{1}\leq t\cap\ldots\cap X_{n}\leq t)\\ & =\prod_{i=1}^{n}P(X_{1}\leq t)=(P(X_{1}\leq t))^{n} \\&= \begin{cases}0 \quad & t\leq 0 \\ (\frac{t}{\theta})^{n}\quad &0\leq t\leq \theta \\ 1 \quad &t\geq\theta\end{cases}\\ &=  \left(\frac{t}{\theta}\right)^{n}I_{[0,\theta]}(t)+I_{[\theta,\infty)}(t) \end{align}$$
>7. La densidad de $X_{(n)}$ la conseguimos derivando $H(t)= (\frac{t}{\theta})^{n}I_{[0,\theta]}(t)+I_{[\theta,\infty)}(t)$ lo que nos da $h(t)=n\frac{1}{\theta} (\frac{t}{\theta})^{n-1}$
>8. Entonces $$E_{\theta}(g\circ X_{(n)})=\int_{\mathbb{R}} g(t)h(t)dt=\int_{[0,\theta]}g(t) n\frac{t^{n-1}}{\theta^{n-1}} \frac{1}{\theta}dt=n\left(\frac{1}{\theta}\right)^{n}\int_{[0,\theta]}g(t)t^{n-1}dt$$
>9. por 4. $g$ cumple que $0=E_{\theta}(g\circ X_{(n)})=G(\theta)=\int_{[0,\theta]}g(t)t^{n-1}dt\quad\forall \theta>0$ (aca cancelamos el ${} n(\frac{1}{\theta})^{n}$ pasandolo dividiendo)  
>10. El teorema de diferenciacion de Lebesgue nos dice que $G(\theta)$ es derivable en $\theta$ salvo conjunto de medida 0 Lebesgue en $(0,\infty)$ y $G'(\theta)=g(\theta)\theta^{n-1}$
>11. Pero entonces $0=G'(\theta)=g(\theta)\theta^{n-1}\quad\forall \theta$ salvo medida 0 por lo cual $g(.)$ se anula salvo conjunto de medida lebesgue 0 en $(0,\infty)$
>12. Observacion mia. Con lo cual $P_{\theta}(g(X_{(n)})=0)=P_{\theta}(\Omega)=1$ (Si no fuera asi tendria algun conjunto $A\subseteq \Omega$ de medida no nula tal que ${} g(X_{(n)}(A))\neq 0 {}$ pero $g$ es nula salvo conjunto de medida 0 Lebesgue, con lo cual $B=X_{(n)}(A)$ tiene que tener medida $0$ Lebesgue osea $P_{X_{(n)}}(B)=0$ que es lo mismo que ${} P_{\theta}(X_{(n)}^{-1}(B))=P(A)=0 {}$ que es absurdo)
>**Notar que en este caso $\tau=\mathbb{R}$ por que la distribucion uniforme tiene imagen en reales por eso hablamos de medida Lebesgue**
>13. Luego $T(x_{1},\ldots,x_{n})=x_{(n)}$ es un estadistico completo

^b792c7

>[!Example] Estadistico suficiente no completo
>$X_{1},\ldots,X_{n}$ v.a.i.d $X_{1}\sim\mathcal{U}[\theta,\theta+1]$ con $\theta>0$ desconocido. Si buscamos algun estadistico suficiente para $\theta$ miramos la densidad conjunta,sea $p_{X_{i}}$ (que denota la desnidad marginal)
>$$\begin{align}p(x_{1},\ldots,x_{n},\theta)=\prod^{n} _{i=1}p_{X_{i}}(x_{i})& =\prod^{n}_{i=1}I_{[\theta,\theta+1]}(x_{i}) \\ &  =   I_{[\theta,\infty)}(x_{(1)}).I_{[0,\theta+1]}(x_{(n)})\\ & = g(T,\theta)h(x_{1},\ldots,x_{n})\end{align}$$
>con $h\equiv1$ y $T(X_{1},\ldots,X_{n})=(X_{(1)},X_{(n)})$ 
>Luego $T$ es suficiente por el teorema de factorizacion y $T$ es minimal (no lo vemos pero lo es). Pero $T$ no es completo
>>[!Proof]-
>>1. Sea $g:[0,\infty)\times [0,\infty)\rightarrow\mathbb{R}$ tal que $E_{\theta}(g\circ T)=0\quad\forall \theta$. Veremos que no podemos concluir que $g\circ T\equiv 0$
>>2. Si se repitiera el razonamiento parecido a [[#^b792c7]] deberiamos construir una f.d.a conj de $(X_{(1)},X_{(n)})$ y luego derivar para obtener su densidad conjunta
>>3. ![[Pasted image 20250506100617.png|center|500]]
>>El dibujo sugiere el razonamiento que $X_{(n)}-X_{(1)}$ deberia tener una distribucion que no depende de $\theta$ (no depende del intervalo que estamos considerando)
>>4. Calculemos la $f.d.a$ de $X_{(1)}$ $$\begin{align}P(X_{(1)}\leq t)&=1-P(X_{(1)}>t)\\ & =1-P(X_{1}>t\cap\ldots\cap X_{n}>t)\\ &=1-\prod^{n}_{i=1}P(X_{i}>t)\\ &=1-(1-P(X_{i}\leq t))\\ &=1-(1-F(t))^{n} \\ &= \begin{cases}0 \quad & t\leq \theta\\ (1-(t-\theta))^{n}\quad & \theta\leq t\leq \theta+1\\ 1\quad& t\geq\theta+1 \end{cases}\end{align}$$
>>En el ultimo paso usamos $X_{1}\sim F$ con $F = \begin{cases}0\quad&t<\theta \\ t-\theta\quad &\theta\leq t\leq \theta+1\\ 1 \quad &t\geq\theta+1\end{cases}$  
>>5. Entonces derivando la f.d.a obtenemos $h_{1}(t)=-n(1-t+\theta)^{n-1}I_{[\theta,\theta+1]}(t)$  
>>6. Analogamente obtenemos $h_{n}(t)=n(t-\theta)^{n-1}$ 
>>7. Ahora podemos calcular $E_{\theta}(X_{(n)}-X_{(1)})=E_{\theta}(X_{(n)})-E_{\theta}X_{(1)}$
>>8. $E_{\theta}X_{(n)}=\int xh_{n}(x)dx=n\int_{\theta}^{\theta+1}x(x-\theta)^{n-1}dx$ y $E_{\theta}X_{(1)}=\int xh_{1}(x)dx=-n\int_{\theta}^{\theta+1}x(1-x+\theta)^{n-1}dx$ 
>>9. Completando las cuentas resulta $$E_{\theta}(X_{(n)}-X_{(1)})= \frac{n-1}{n+1}\quad \forall \theta$$
>>10. Si tomamos $g(t,s)=\begin{cases}s-t- \frac{n-1}{n+1}\quad&s\geq t \\ 0 \quad &s<t\end{cases}$ entonces $E_{\theta}(g\circ T)=0\quad\forall \theta>0$
>>11. Por que $g(T(X_{1},\ldots,X_{n}))=g(X_{(1)},X_{(n)})=\begin{cases}X_{(n)}-X_{(1)}- \frac{n-1}{n+1}\quad&\text{si }X_{(n)}\geq X_{(1)} \\ 0 \quad &\text{si }X_{(n)}<X_{(1)}\end{cases}=X_{(n)}-X_{(1)}- \frac{n-1}{n+1}$
>>(la ultima igualdad es por que siempre sucede que $X_{(n)}\geq X_{(1)}$) 
>>12. Como $g$ no es identicamente nula $T$ (salvo medida 0) no es completo

^255a9d

>[!Remark]
>El concepto de completitud interviene en la minimalidad del siguiente modo

>[!Definition] Estadistico acotadamente completo
>Un estadistico $T$ se dice acotadamente completo si la $g$ utilizada en la definicion de completitud es acotada

^06946d

>[!Theorem] Bahadur
>Si $T:\Omega_{X}\rightarrow\mathbb{R}^{k}$ es suficiente y acotado completo entonces es suficiente minimal

^f1918a

>[!Lemma] Completo implica acotadamente completo
>Si $T$ es completo entonces es acotadamente completo

^8b7171

>[!Example] Estadistico suficiente no dependiente de theta
>Recien dijimos que $(X_{(1)},X_{(n)})$ en el ejemplo de la distribucion $\mathcal{U}[\theta,\theta+1]$ era un estadistico suficiente minimal (no completo) . Observemos que $$(x_{(1)},x_{(n)})\mapsto (x_{(1)},x_{(n)}-x_{1})$$
>$$\begin{pmatrix}1 \ &  0 \\-1 \  & 1 \end{pmatrix}\begin{pmatrix}x_{(1)}\\x_{(n)}\end{pmatrix}=\begin{pmatrix}x_{(1)}\\x_{(n)}-x_{1} \end{pmatrix}$$
>Luego $S(x_{1},\ldots,x_{n})=(x_{(1)},x_{(n)}-x_{(1)})$ es suficiente minimal por que $S$ es una biyeccion de un suficiente minimal 
>Calcular la f.d.a de $X_{(n)}-X_{(1)}$ y comprobar que NO depende de $\theta\quad\forall \theta>0$  DUDA
>Luego $S$ es suficiente minimal pero tiene una componente que no tiene informacion sobre $\theta$ (por que su f.d.a) NO depende de $\theta$ 
>![[Pasted image 20250526170113.png]]

^2211e6

>[!Definition] Estadistico ancillar o auxiliar
>Sea $T : \Omega_{X}\rightarrow \mathcal{T}$ estadistico y sea $\mathcal{P}=\{ P_{\theta} :\theta\in \Theta\}$ familia de distribuciones sobre $(\Omega_{X},\mathcal{F}_{X})$. Si $P_{\theta}(T\in B)$ es independiente de ${} P_{\theta}\quad\forall B\in \mathcal{F}_{\mathcal{T}} {}$ ($\sigma$-algebra en $\mathcal{T}$) entonces $T$ se dice ancilar o auxiliar.

^fad3dd

>[!Example] Ejemplo estadistico ancillar
>$X_{1},\ldots,X_{n}$ v.a.i.i.d $X_{1}\sim\mathcal{U}[\theta,\theta+1]$. Entonces $X_{(n)}-X_{(1)}$ es un estadistico ancillar. Justamente en el [[IE - Teorico 18#^2211e6]] comprobamos que la f.d.a no depende de $\theta$
>

^14488c

>[!Lemma] Previa Basu
>$P(A)=E(P(A|T))$
>>[!Proof]-
>>1. Sea $X=1_{A}$ entonces $E(X)=\int_{\Omega}XdP=\int_{\Omega}1_{A}dP=\int_{A}1dP=P(A)$ 
>>2. Ademas por [[IE - Teorico 12#^9e3b6b]] tenemos $E(X|T)=P(A|T)$ 
>>3. Entonces $P(A)=E(X)=E(E(X|T))=\int_{\Omega}P(A|T)$ 

^4fd306

>[!Theorem] Basu DUDA COMPLETO
>Si $T : \Omega_{X}\rightarrow \mathcal{T}$ estadistico suficiente y completo para una familia $\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ y $U : \Omega_{X}\rightarrow \mathcal{U}$ un estadistico auxiliar para $\mathcal{P}$. Entonces $T$ y $U$ son independientes $\forall P_{\theta}\in \mathcal{P}$
>>[!Proof]-
>>1. $U : \Omega_{X}\rightarrow \mathcal{U}$ con $\mathcal{F}_{\mathcal{U}}$ una $\sigma-algebra$ en $\mathcal{U}$.
>>2. Vamos a chequear que $$P(U\in B|T)=P(U\in B) \quad\forall B\in F_{\mathcal{U} }$$
>>3. Por [[IE - Teorico 18#^4fd306]] tenemos $$P(U\in B)=\int_{\Omega_{X}}P(U\in B|T)dP$$
>>4. Por lo tanto $$0=\int_{\Omega_{X}}[P(U\in B|T)-P(U\in B)]dP=\int g(T)dP$$
>>5. Como $T$ es suficiente $P(U\in B|T)=k_{B}$ independientemente de la $P_{\theta}$ usada. 
>>6. Como $U$ es ansilar $P(U\in B)$ no depende de la $P_{\theta}$ usada
>>7. Entonces $g(T)=P(U\in B|T)-P(U\in B)$ no depende de $P$  
>>8. Entonces $0=E_{P}(g\circ T)\quad\forall P\in \mathcal{P}$
>>9. Pero $T$ es completo entonces $$P\bigg(\big[P(U\in B|T)-P(U\in B)\big]=0\bigg)=1$$

^827fab

