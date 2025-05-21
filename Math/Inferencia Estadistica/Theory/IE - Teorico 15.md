---
dateCreated: 2025-05-11,20:37
---
## Modelos estadisticos de descripcion

>[!Remark]- Introduccion
>Supongamos que realizamos $n$ repeticion o ensayos de un cierto experimento (independientes) para obtener el valor de una cantidad fisica desconocida $\mu$. Obtenemos $x_{1},\ldots ,x_{n}$ que son realizaciones de las v.a $X_{1},\ldots , X_{n}$ tal que toman la forma $X_{j}=\mu +\epsilon_{j}$ con $\epsilon_{1},\ldots,\epsilon_{j}$ v.a (no observadas) que se suelen denominar errores aleatorios.
>Algunos supuestos, segun el fenomeno que estamos haciendo:
>- (i)  El valor de un error no afecta la aparicion de los errores cometidos en otros ensayos (osea $\epsilon_{1},\ldots,\epsilon_{j}$ son indeptes)
>- (ii) La distribucion de los errores se mantiene cte a lo largo de $n$ ensayos realizados (osea $\epsilon_{1},\ldots,\epsilon _{n}$ son identicamente distribuidas)
>- (iii) La distribucion del error no depende de $\mu$
>Con estos supuestos podemos hablar de que $X_{1},\ldots,X_{n}$ son v.a.i.i.d y que lo que queremos es estimar el paramtro $\mu$ de una variable aleatoria $X$ con $X\sim X_{i}$ 
>Ahora si tenemos $G$ f.d.a de $\epsilon_{i}$'s entonces que distribucion tienen $X_{i}$'s ?
>$$F_{X_{i}}(t)=F_{X_{1}}(t)=P(X_{1}\leq t)=P(\mu +\epsilon_{1}\leq t)=P(\epsilon_{1}\leq t-\mu )=G(t-\mu)$$
>Por lo tanto notemos $$P(X_{1}\leq t_{1}\cap\ldots\cap X_{n}\leq t_{n})=\prod^{n} P(X_{i}\leq t_{i})=\prod^{n} G(t_{i}-\mu)$$
>Ahora como no sabemos que valor real tiene el parametro $\mu$ armamos un conjunto 
>$$\mathcal{P}=\left\{X=\begin{pmatrix}X_{1}\\ \vdots\\X_{n}\end{pmatrix}\sim \prod^{n} G(\cdot-\tilde{\mu}): \tilde{\mu}\in \mathbb{R}\right\}$$
>Segun que $G$ tomemos tendremos diferentes conjuntos $\mathcal{P}$ de distribuciones que regulan a $X_{1},\ldots,X_{n}$.
>- (iv) Supongamos $G\sim N(0,\sigma^{2})$ con $\sigma^{2}$ desconocido (o no)
>Entonces el conjunto $\mathcal{P}$ de distribuciones que expresan los 4 supuestos del problema puede resumirse de la siguiente forma
>$$P(X_{1}\leq t_{1}\cap\ldots\cap X_{n}\leq t_{n})=\prod^{n} P(X_{i}\leq t_{i})=\prod^{n} G(t_{i}-\mu )=\prod^{n} \phi\left( \frac{t_{i}-\mu }{\sigma} \right)$$
>Por lo tanto $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots\\X_{n}\end{pmatrix}\sim N_{n}\bigg(\tilde{\mu} \mathbb{1},\sigma^{2} Id_{n}\bigg) : \tilde{\mu}\in \mathbb{R},\sigma^{2}>0\bigg\}\quad\mathbb{1}=\begin{pmatrix}1\\ \vdots \\ 1\end{pmatrix}$$

>[!Definition] Modelo y parametrizacion
>Se llamara *parametrizacion* a una funcion $\eta : \theta\rightarrow \mathcal{P}$ con $\mathcal{P}$ conjunto de funciones de distribucion que sea suryectiva. 
>*Modelo* se le dice a la parametrizacion con el conjunto $\mathcal{P}$. 
>$\Theta$ se denominara espacio de parametros.
>- Si $\Theta\subseteq \mathbb{R}^{k}$ para algun $k$ el modelo se denomina **parametrico**
>- Si $\eta$ es inyectiva entonces el modelo se denomina **identificable**  

>[!Example]
>- (1) Bajo las suposiciones (i)(ii)(iii)(iv) podemos definir $$\begin{align}\eta:\mathbb{R}^{2}&\rightarrow \mathcal{P}\\ \eta:(\mu ,\sigma^{2})&\mapsto P_{\mu,\sigma^{2}}=\mathcal{N}_{n}(\mu\mathbb{1},\sigma^{2}Id_{n})\end{align}$$ con $\Theta=\mathbb{R}\times(0,+\infty)\quad\mu=E(X_{1})\quad\sigma^{2}=V(X_{1})$ se puede ver facilmente que es una parametrizacion *identificable*. Con esto tenemos un modelo indentificable.    
>- (2) Bajo los supuestos (i) (ii) (iii) tenemos $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots \\X_{n}\end{pmatrix}\sim \prod^{n}G(\cdot-\mu) :\mu\in \mathbb{R}\bigg\}$$
>entonces suponemos que $$\Gamma_{0}'=\{ G\text{ f.d.a }|\ G\text{ admite dens }g \ \land \ E_{G}(Z)=0 \text{ si }Z\sim G\}\cap\{ \mathcal{N}(0,\sigma^{2}) :\sigma^{2}>0\}$$
>(Osea segun que $G\in \Gamma_{0}'$ tomamos estamos fijando una $\sigma^{2}$) con lo cual $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots\\X_{n}\end{pmatrix}\sim N_{n}\bigg(\mu \mathbb{1},\sigma^{2} Id_{n}\bigg) : \mu\in \mathbb{R},\sigma^{2}\geq0\bigg\}\quad\mathbb{1}=\begin{pmatrix}1\\ \vdots \\ 1\end{pmatrix}$$
>Ahora sea $\Theta=\mathbb{R}\times\Gamma_{0}'$ y $\eta:\Theta\rightarrow \mathcal{P}$ con $(\mu,G)\mapsto P_{\mu,G}$ (esto se llama un modelo superparametrico) 
>Veamos que es identificable. Osea $P_{\mu_{1},G^{(1)}}=P_{\mu_{2},G^{(2)}}\Rightarrow(\mu_{1},G^{(1)})=(\mu_{2},G^{(2)})$
>>[!Proof]-
>>1. En este caso estamos intentnado describir $X=(X_{1},\ldots,X_{n})$ con $G^{(1)}=(G^{(1)},\ldots,G^{(1)})$ y $G^{(2)}=(G^{(2)},\ldots,G^{(2)})$     
>>2. Cuando fijo $G_{1}^{(1)},G_{2}^{(1)}$ estoy fijando $X_{1}^{(1)}$ que estoy mirando como $X_{1}^{(1)}=\mu_{1}+G_{1}^{(1)}$. Como $P_{\mu_{1},G^{(1)}}=P_{\mu_{2},G^{(2)}}$ entonces estoy mirando la misma distribucion en ambos casos 
>>3. Entonces $\mu_{1}=E(G_{1}^{(1)})=E(X_{1}^{(1)})=E(G_{2}^{(1)})=\mu_{2}$
>>4. Por hipotesis $P_{\mu_{1},G^{(1)}}\sim P_{\mu_{2},G^{(2)}}$ entonces $\prod^{n}_{i}G_{i}^{(1)}(t_{i}-\mu_{1})=\prod^{n}G_{i}^{(2)}(t_{i}-\mu_{2})\quad\forall (t_{1},\ldots,t_{n})\in \mathbb{R}^{n}$
>>5. Si suponemos $t_{j}\rightarrow+\infty$ para $j\neq1$ entonces todas las cosas en los productos de hacen 1 salvo los primeros terminos entonces $$G^{(1)}_{1}(t_{1}-\mu_{1})=G_{1}^{(2)}(t_{1}-\mu_{2})  \quad\forall t_{1}\in \mathbb{R}$$
>>6. Usando 4. y 5. tenemos ademas $$G_{1}^{(1)}(t_{1}-\mu_{1})=G_{1}^{(2)}(t_{1}-\mu_{2})=G_{1}^{(2)} (t_{1}-\mu_{1})$$ mostrando que $G^{(1)}_{1}=G^{(2)}_{1}$ por definicion $G^{(1)}=G^{(2)}$ osea $(\mu_{1},G^{(1)})=(\mu_{2},G^{(2)})$  
>- (3) Si ahora consideramos $$\Gamma_{0}''=\{ G\text{ f.d.a }|\ G\text{ admite dens }g\}$$
>Entonces asumiendo (i)(ii)(iii)      $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots \\X_{n}\end{pmatrix}\sim \prod^{n}G(\cdot-\mu) :\mu\in \mathbb{R},G\in \Gamma_{0}''\bigg\}$$  
>Y definimos $\eta:\Theta\rightarrow \mathcal{P}$ con $(\mu,G)\mapsto P_{\mu,G}$ entonces $\Theta=\mathbb{R}\times\Gamma_{0}''$ NO es identificable
>>[!Proof]-
>>7. Sean $(\mu_{1},G^{(1)})=(0,\mathcal{N}(0,1))$ y $(\mu_{2},G^{(2)})=(1,\mathcal{N}(-1,1))$  
>>8. Entonces $X_{1}^{(1)}=\mu_{1}+\epsilon_{1}^{(1)}=0+\epsilon_{1}^{(2)}\sim\mathcal{N}(0,1)$ (por que $\epsilon^{1}\sim\mathcal{N}(0,1)$) y $X_{1}^{(2)}=\mu_{2}+\epsilon_{1}^{(2)}\sim\mathcal{N}(0,1)$ (por que $\epsilon^{(2)}\sim\mathcal{N}(-1,1)$) 
>>9. Con lo cual $F_{X_{1}^{(1)} }(t_{1})=F_{X_{1}^{(2)} }(t_{1})\quad\forall t_{1}\in \mathbb{R}$ (Osea $X_{1}^{(1)}\sim X_{1}^{(2)}$) 
>>10. Y esto vale para cada coordenada ($X_{i}^{(1)}\sim X_{i}^{(2)}$) con lo cual ambos elementos fueron a parar a la misma distribucion en $\mathcal{P}$ 
>>11. O lo que es lo mismo $P_{\mu_{1},G^{(1)}}=P_{\mu_{2},G^{(2)}}$ 
>>12. Mostrando que el modelo no es indentificable
>- (4) Sea $$\Gamma_{0}'''=\{ G\sim \mathcal{N}(\Delta,\sigma^{2})\ |\ \Delta,\sigma^{2}\text{ desconocidos} \}$$ con $\theta=\mathbb{R}^{2}\times(0,+\infty)$ $\eta:(\mu,\Delta,\sigma)\mapsto P_{\mu,\Delta,\sigma}=\prod^{n}_{i=1}\Phi\left( \frac{\cdot-(\mu +\Delta)}{\sigma} \right)$ entonces el modelo es no identificable.
>>[!Proof]-
>>1. Sea $(\mu_{1},\Delta_{1},\sigma)=(-1,1,1)$ y $(\mu_{2},\Delta_{2},\sigma)=(0,0,1)$
>>2. $X_{1}^{(1)}=\mu_{1}+\epsilon_{1}^{(1)}=-1+\epsilon_{1}^{(2)}\sim\mathcal{N}(0,1)$ (por que $\epsilon^{1}\sim\mathcal{N}(1,1)$) y $X_{1}^{(2)}=\mu_{2}+\epsilon_{1}^{(2)}=0+\epsilon_{1}^{(2)}\sim\mathcal{N}(0,1)$ (por que $\epsilon^{(2)}\sim\mathcal{N}(0,1)$) 
>>3. Obviamente las varianzas van a coincidir (por que $Var(cte)=0$).
>>4. Esto lo puedo hacer con todas las coordenadas entonces $X^{(1)}=\left(X^{(1)}_{1},\ldots, X^{(1)}_{n}\right)\sim X^{(2)}$  
>>5. Entonces $P_{\mu_{1},\Delta_{1},\sigma}= P_{\mu_{2},\Delta_{2},\sigma}$. 
>>6. Con lo cual $\eta$ no es inyectiva mostrando que el modelo no es identificable   
>>7. Otra forma de pensarlo es $$P_{-1,1,1}=\prod\Phi(t_{i}-0)=\prod\Phi(t_{i}-(-1+1))=P_{0,0,1}$$
>>
>>

>[!Remark] concepto personal
> Notar que en general lo que hace $\eta$ es asignarme a producto de alguna densidad de un conjunto $\Gamma$ determinado pero posiblemente corrido. Digamos manda cosas de $\Theta$ a $G(\cdot-k)$ pero $G(\cdot-k)\sim G+k$.
> Entonces por ejemplo en el ejemplo (4) de arriba nuestro conjunto $\Gamma$ son normales de media $\Delta$. Osea $\eta$ me esta mandando a normales de media $\Delta$ corregidas por $\mu$ es por eso que no es identificable, por que puedo encontrar dos normales distintas que las corrigo con distintos $\mu$ y llego a una misman normal
> Y en el ejemplo (1) nuestro $\Gamma$ son normales estandar movidas por $\mu$ con lo cual es evidente que si $\eta$ nos mando dos elementos a la misma normal, es por que el corrimiento que le aplico a la estandar tiene que haber sido el mismo en ambos elementos          

>[!Definition] Parametro
>Si $\mathcal{P}$ es una familia de distribuciones y $\eta:\Theta\rightarrow \mathcal{P}$ una parametrizacion entonces $\phi:\mathcal{P}\rightarrow\mathcal{T}$ con $\mathcal{T}$ un conjunto se dice parametro.
>En particular si el modelo es identificable entonces $$\begin{align} \eta^{-1}:\mathcal{P}&\rightarrow \Theta \\ P_{\theta}&\mapsto\theta\end{align}$$
>es un parametro

^a24bcd

>[!Example] Cuantil
>- (i) En general un parametro sera una cantidad asociada a las distribuciones por ejemplo si $$\mathcal{P}=\{ G\ | \ E_{G}(|X|) \text{ es finita si }X\sim G \}$$
>entonces $$\begin{align}\nu:\mathcal{P}&\rightarrow\mathbb{R} \\ G&\mapsto E_{G}(|X|)\end{align}$$
>es una parametro (notar $X\sim G$ para $G\in \mathcal{P}$) 
>- (ii) $\mathcal{P}=\{ G \text{ f.d.a} \}$ y $\nu:\mathcal{P}\rightarrow\mathbb{R}$ dada por $\nu(G)=inf\{ x\in \mathbb{R}\ |\ G(x)\geq0.5 \}$ es una parametro (llamado cuantil 0.5) 

>[!Definition] Estadistico
>$(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico y $(\Omega_{X},\mathcal{F}_{X})$ con $\mathcal{F}_{X}$ $\sigma$-algebra en $\Omega_{X}$. Sean $$X:(\Omega,\mathcal{F})\rightarrow (\Omega_{X},\mathcal{F}_{X})$$
>$\mathcal{F}/\mathcal{F}_{X}$-medible (osea $X^{-1}(B)\in \mathcal{F}\quad\forall B\in \mathcal{F}_{X}$) 
>Sea $(\mathcal{T},\mathcal{F}_{\mathcal{T}})$ con $\mathcal{F}_{\mathcal{T}}$ $\sigma$-algebra de $\mathcal{T}$. Luego si $$T:(\Omega_{X},\mathcal{F}_{X})\rightarrow(\mathcal{T},\mathcal{F}_{\mathcal{T}})$$ es $\mathcal{F}_{X}/\mathcal{F}_{\mathcal{T}}$-medible entonces $T$ se denomina *estadistico*

>[!Definition] Estimador
>Si $\mathcal{P}$ es una familia de distribuciones parametrizables identificables $\eta:\Theta \rightarrow\mathcal{P}$ biyectiva (osea dado un *modelo estadistico* identificable y parametrizable) y $T : \Omega_{X}\rightarrow \Theta$ es medible. Entonces $T$ se denomina *estimador*
