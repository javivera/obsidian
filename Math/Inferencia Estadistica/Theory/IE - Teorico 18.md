---
dateCreated: 2025-05-06,09:07
---

>[!Definition] Equivalencia de estadisticos
>Si $\mathcal{S}$ y $T$ son estadisticos definidos en $\Omega_{x}$ se dicen *equivalentes* si existen funciones medibles $f$ y $g$ tales que $S=f(T)$ y $T=g(S)$ 

>[!Lemma] 
>Si $S$ y $T$ son estadisticos equivalentes la $\sigma(S)=\sigma(T)$ 
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

>[!Remark] 
>Si $S$ y $T$ son equivalentes luego 
>- Si $T$ es suficiente entonces $S$ es suficiente [[IE - Teorico 17#^04386c]]
>- Si $T$ es suficiente minimal entonces $S$ es suficiente minimal [[IE - Teorico 17#^3cd0e6]]

>[!Definition] Estadistico completo
>Sea $\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ conjunto de funciones distribucion en $\Omega_{X}$. Sea el estadistico $T : \Omega_{X}\rightarrow \mathcal{T}$. 
>$T$ se dice **completo para $\mathcal{P}$** si dada cualquier funcion $g : \mathcal{T}\rightarrow \mathbb{R}$ $\mathcal{F}_{\mathcal{T}}$-medible 
>($g^{-1}(B)\in \mathcal{F}_{\mathcal{T}}\quad\forall B\in \mathcal{B}(\mathbb{R})$) y tal que $g\circ T$ es integrable y $$E_{\theta}(g\circ T)=0\quad\forall P_{\theta}\in \mathcal{P}$$ entonces $$P_{\theta}(g(T)=0)=1\quad\forall P_{\theta}\in \mathcal{P}$$        

>[!Example]- Estadistico suficiente y completo
>1. Sean $X_{1},\ldots,X_{n}$ v.a.i.i.d $X_{1}\sim\mathcal{U}(0,\theta)$ con $\theta>0$ desconocido. Para encontrar un estadistico suficiente consideramos la funcion densidad conjunta 
>$$p(x_{1},\ldots,x_{n},\theta)=\frac{1}{\theta^{n} }\prod_{i=1}^{n} I_{[0,\theta]}(x_{i})=\frac{1}{\theta^{n} }I_{[0,\infty]}(x_{(1)})I_{[0,\theta]}(x_{(n)})=g(x_{(n)},\theta)h(x_{1},\ldots,x_{_{n}})$$
>con $g(x_{(n)},\theta)=\frac{1}{\theta^{n}}I_{[0,\theta]}x_{(n)}$ y $h(x_{1},\ldots,x_{n})=I_{[0,\infty)}(x_{(1)})$ 
>2. Luego $\max X_{n}:=X_{(n)}$ es suficiente por [[IE - Teorico 16#^0921f6]]. 
>3. Veamos que es completo
>4. Tomemos $g$ cualquiera tal que $E_{g}(X_{(n)})=0\quad\forall \theta$ 
>**DUDA aca no es $E(g\circ X_{(n)})=0$**
>5. Para calcular esa esperanza necesitamos la f.d.a (y la densidad luego)
>6. $P(X_{(n)}\leq t)=P(\max(X_{1},\ldots,X_{n})\leq t=P(X_{1}\leq t\cap\ldots\cap X_{n}\leq t)=\prod_{i=1}^{n}P(X_{1}\leq t)=(P(X_{1}\leq t))^{n}$
>7. = $\begin{cases}0 \quad & t\leq 0 \\ (\frac{t}{\theta})^{n}\quad &0\leq t\leq \theta \\ 1 \quad &t\geq0\end{cases}$  
>8. La densidad de $X_{(n)}$ la conseguimos derivando $H(t)= \frac{t}{\theta}\bigg(I_{[0,\theta]}(t)+I_{[\theta,\infty)}(t)\bigg)$  
>9. $h(t)=nF(t)^{n-1}f(t)$ con $f(t)=\frac{1}{\theta}I_{[0,\theta]}(t)$
>10. Entonces $E_{\theta}(g\circ X_{(n)})=\int_{\mathbb{R}} g(t)h(t)dt=\int_{[0,\theta]}g(t) \frac{t^{n-1}}{\theta^{n-1}} \frac{1}{\theta}dt=(\frac{1}{\theta})^{n}\int_{[0,\theta]}g(t)t^{n-1}dt$
>**DUDA No falta un n en la integral  y por otro lado , no era mas facil derivar paso 7 y listo**
>11. por 4. $g$ cumple que $0=E_{\theta}(g\circ X_{(n)})=G(\theta)=\int_{[0,\theta]}g(t)t^{n-1}dt\quad\forall \theta>0$ (aca cancelamos el $(\frac{1}{\theta})^{n}$ pasandolo dividiendo)  
>12. El teorema de diferenciacion de Lebesgue nos dice que $G(\theta)$ es derivable en $\theta$ salvo conjunto de medida 0 Lebesgue en $(0,\infty)$ y $G'(\theta)=g(\theta)\theta^{n-1}$
>**DUDA Por que en (0,infinito) y no en $[0,\infty]$**
>13. Pero entonces $G'(\theta)=g(\theta)\theta^{n-1}=0\quad\forall \theta$ salvo medida 0.     
>14. $g(.)$ se anula salvo conjunto de medida lebesgue 0 en $(0,\infty)$
>**DUDA** Con lo cual $P_{\theta}(g(T)=0)=P_{\theta}(\Omega)=1$ (si no fuera asi tendria algun conjunto $A\subseteq \Omega$ de medida no nula tal que $g(T(w))\neq 0\quad\forall w\in A$ pero $g$ es nula salvo conjunto de medida 0, con lo cual $T(A)$ tiene que tener medida 0 por que $0\not\in g(T(A))$ pero entonces como $T$ es medible $A$ tiene que ser de medida 0, y aca habria que pedir algo mas par que no sea medible $A$ yse llegue a una bsurdo  ) 
>15. Luego $T(x_{1},\ldots,x_{n})=x_{(n)}$ es un estadistico completo

^b792c7

>[!Example]- Estadistico suficiente no completo
>$X_{1},\ldots,X_{n}$ v.a.i.d $X_{1}\sim\mathcal{U}[\theta,\theta+1]$ con $\theta>0$ desconocido. Si buscamos algun estadistico suficiente para $\theta$ miramos la densidad conjunta,sea $p_{X_{i}}$ (que denota la desnidad marginal)
>$$\begin{align}p(x_{1},\ldots,x_{n},\theta)=\prod^{n} _{i=1}p_{X_{i}}(x_{i})& =\prod^{n}_{i=1}I_{[\theta,\theta+1]}(x_{i}) \\ &  =   I_{[\theta,\infty)}(x_{(1)}).I_{[0,\theta+1]}(x_{(n)})\\ & = g(T,\theta)h(x_{1},\ldots,x_{n})\end{align}$$
>con $h\equiv1$
>$T(x_{1},\ldots,x_{n})=(x_{(1)},\ldots,x_{(n)})$ $T$ es suficiente por el teorema de factorizacion y $T$ es minimal (no lo vemos pero lo es)
>**DUDA COPIE MAL? DEBERIA SER $T(X_{1},\ldots,X_{n})=(X_{(1)},X_{(n)})$**
>Pero $T$ no es completo
>>[!Proof]
>>1. Sea $g:[0,\infty)\times [0,\infty)\rightarrow\mathbb{R}$ tal que $E_{\theta}(g\circ T)=0\quad\forall \theta$. Veremos que no podemos concluir que $g\circ T\equiv 0$
>>2. Si se repitiera el razonamiento parecido a [[#^b792c7]] deberiamos construir una f.d.a conj de $(X_{(1)},X_{(n)})$ y luego derivar para obtener su densidad conjunta
>>3. ![[Pasted image 20250506100617.png|center|500]] El dibujo sugiere el razonamiento que $X_{(n)}-X_{(1)}$ deberia tener una distribucion que no depende de $\theta$ (no depende del intervalo que estamos considerando)
>>4. Calculemos la $f.d.a$ de $X_{(1)}$ $$\begin{align}P(X_{(1)}\leq t)&=1-P(X_{(n)}>t)\\ & =1-P(X_{1}>t\cap\ldots\cap X_{n}>t)\\ &=1-\prod^{n}_{i=1}P(X_{i}>t)\\ &=1-(1-P(X_{i}\leq t))\\ &=1-(1-F(t))^{n} \\ &= \begin{cases}0 \quad & t\leq \theta\\ (1-(t-\theta))^{n}\quad & \theta\leq t\leq \theta+1\\ 1\quad& t\geq\theta+1 \end{cases}\end{align}$$
>>En el ultimo paso usamos $X_{1}\sim F$ con $F = \begin{cases}0\quad&t<\theta \\ t-\theta\quad &\theta\leq t\leq \theta+1\\ 1 \quad &t\geq\theta+1\end{cases}$  
>>5. Entonces derivando la f.d.a obtenemos $h_{1}(t)=tn(1-t+\theta)^{n-1}I_{[\theta,\theta+1]}(t)$  
>>**DUDA ACA SOBRA UNA t la de adelante de la n**
>>6. Analogamente obtenemos $h_{n}(t)=n(t-\theta)^{n-1}$ 
>>7. Ahora podemos calcular $E_{\theta}(X_{(n)}-X_{(1)})=E_{0}(X_{(n)})-E_{\theta}X_{(1)}$
>>**DUDA ACA CREO QUE HAY QUE USAR QUE $P_{\theta}$ abs continuas con respecto a lebesgue?? esta en teo 11 en estos casos $E_{\theta}=E$ de toda proba**  
>>8. $E_{\theta}X_{(n)}=\int xh_{n}(x)dx=n\int_{\theta}^{\theta+1}x(x-\theta)^{n-1}dx$ y $E_{\theta}X_{(1)}=\int xh_{1}(x)dx=\int_{\theta}^{\theta+1}x(1-x+\theta)^{n-1}dx$ 
>>**DUDA FALTA UN n en h_1**
>>9. Completando las cuentas resulta $$E_{\theta}(X_{(n)}-X_{(1)})= \frac{n-1}{n+1}\quad \forall \theta$$
>>10. Si tomamos $g(t,s)=\begin{cases}s-t- \frac{n-1}{n+1}\quad&s\geq t \\ 0 \quad &s<t\end{cases}$ entonces $E_{\theta}(g\circ T)=0\quad\forall \theta>0$
>>11. Por que $g(T(X_{1},\ldots,X_{n}))=g(X_{(1)},X_{(n)})=\begin{cases}X_{(n)}-X_{(1)}- \frac{n-1}{n+1}\quad&X_{(n)}\geq X_{(1)} \\ 0 \quad &X_{(n)}<X_{(1)}\end{cases}=X_{(n)}-X_{(1)}- \frac{n-1}{n+1}$
>>(la ultima igualdad es por que siempre sucede que $X_{(n)}\geq X_{(1)}$) 
>>12. Como $g$ no es identicamente nula $T$ no es completo

>[!Remark]
>El concepto de completitud interviene en la minimalidad del siguiente modo

>[!Definition] Estadistico acotadamente completo
>Un estadistico $T$ se dice acotadamente completo si la $g$ utilizada en la definicion de completitud es acotada

>[!Theorem] Bahadur
>Si $T:\Omega_{X}\rightarrow\mathbb{R}^{k}$ es suficiente y acotado completo entonces es suficiente

>[!Theorem]
>es suficiente y acotado completo es suficiente minimal

>[!Remark]
>Si $T$ es completo entonces es acotado completo

**DUDA ESTA BIEN ESTE REMARK 11**

>[!Remark]
>Recien dijimos que $(X_{(1)},X_{(n)})$ en el ejemplo de la distribucion $\mathcal{U}[\theta,\theta+1]$ era un estadistico suficiente minimal (no completo) . Observemos que $$(x_{(1)},x_{(n)})\mapsto (x_{(1)},x_{(n)}-x_{1})$$
>$$\begin{pmatrix}1 \ &  0 \\-1 \  & 1 \end{pmatrix}\begin{pmatrix}x_{(1)}\\x_{(n)}\end{pmatrix}=\begin{pmatrix}x_{(1)}\\x_{(n)}-x_{1} \end{pmatrix}$$
>Luego $S(x_{1},\ldots,x_{n})=(x_{(1)},x_{(n)}-x_{(1)})$ es suficiente minimal

**DUDA ACA SERIAN $X_{1}$ en vez de $x_{1}$**
**DUDA ESTO ES POR QUE $S=f\circ T$ con $f$ LINEAL ?? Minimalidad sale asi, pero suficiecia , sera que puedo escribir $T=f^{-1}\circ S$ y usar que ${} p(x)=g(T(x),\theta).h(x)=g(f^{-1}\circ S(x),\theta).h(x)$ por que $T$ es suficiente**

>[!Example] Ejercicio
>Calcular la f.d.a de $X_{(n)}-X_{(1)}$ y comprobar que NO depende de $\theta\quad\forall \theta>0$  
>Luego $S$ es suficiente minimal pero tiene una componente que no tiene informacion sobre $\theta$ (por que su f.d.a) NO depende de $\theta$ 

**POR QUE ES MINIMAL? PORQUE ES SUFICIENTE?**

>[!Definition] Estadistico ancillar o auxiliar
>Sea $T : \Omega_{X}\rightarrow \mathcal{T}$ estadistico y sea $\mathcal{P}=\{ P_{\theta} :\theta\in \Theta\}$ familia de distribuciones sobre $(\Omega_{X},\mathcal{F}_{X})$. Si $P_{\theta}(T\in B)$ es independiente de ${} P_{\theta}\quad\forall B\in \mathcal{F}_{\mathcal{T}} {}$ ($\sigma$-algebra en $\mathcal{T}$) entonces $T$ se dice ancilar o auxiliar.

>[!Example]
>$X_{1},\ldots,X_{n}$ v.a.i.i.d $X_{1}\sim\mathcal{U}[\theta,\theta+1]$. Entonces $X_{(n)}-X_{(1)}$ es un estadistico ancillar

^14488c
**PORQUE ES ANCILLAR??**

>[!Theorem] Basu DUDA COMPLETO
>Si $T : \Omega_{X}\rightarrow \mathcal{T}$ estadistico suficiente y completo para una familia $\mathcal{P}=\{ P_{\theta}:\theta\in \Theta \}$ y $U : \Omega_{X}\rightarrow \mathcal{U}$ un estadistico auxiliar para $\mathcal{P}$. 
>Entonces $T$ y $U$ son independientes $\forall P_{\theta}\in \mathcal{P}$
>>[!Proof]
>>11. $U : \Omega_{X}\rightarrow \mathcal{U}$ con $\mathcal{F}_{\mathcal{U}}$ una $\sigma-algebra$ en $\mathcal{U}$.
>>12. Vamos a chequear que $$P(U\in B|T)=P(U\in B) \quad\forall B\in F_{\mathcal{U} }$$
>>13. Como $T$ es suficiente $P(U\in B|T)=k_{B}$ independientemente de la ${} P_{\theta} {}$ usada
>>14. Como $U$ es ansilar $P(U\in B)$ no depende de la $P_{\theta}$ usada
>>15. $$P(U\in B)=\int_{\Omega_{X}}P(U\in B|T)dP$$ Por definicion de probabilidad condicional 
>>16. $$0=\int_{\Omega_{X}}[P(U\in B|T)-P(U\in B)]dp=\int g(T)dp$$ con $g(T)=P(U\in B|T)-P(U\in B)]$ no dependiente de $P$  
>>17. Entonces $0=E_{P}(g\circ T)\quad\forall P\in \mathcal{P}$
>>18. Pero $T$ es completo entonces $$P\bigg(\big[P(U\in B|T)-P(U\in B)\big]=0\bigg)=1$$