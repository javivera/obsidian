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
>- (iv) Asumir una distribucion para $G$ 

>[!Example]
>Si suponemos $G\sim N(0,\sigma^{2})$ con $\sigma^{2}$ desconocido (o no). Entonces el conjunto $\mathcal{P}$ de distribuciones que expresan 3 supuestos del problema puede resumirse de la siguiente forma
>$$\begin{align}P(X_{1}\leq t_{1}\cap\ldots\cap X_{n}\leq t_{n})&=\prod^{n} P(X_{i}\leq t_{i})=\prod P(\epsilon_{i}\leq t_{i}-\mu )\\&=\prod P\left( \frac{\epsilon_{i}}{\sigma}\leq \frac{t_{i}-\mu}{\sigma}  \right)\\&=\prod^{n} \phi\left( \frac{t_{i}-\mu }{\sigma} \right)\end{align}$$
>Y recordemos $\phi\left( \frac{t_{i}-\mu}{\sigma}  \right)$ es la acumulada de ${} X\sim N(\mu ,\sigma^{2}) {}$  
>Por lo tanto $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots\\X_{n}\end{pmatrix}\sim N_{n}\bigg(\tilde{\mu} \mathbb{1},\sigma^{2} Id_{n}\bigg) : \tilde{\mu }\in \mathbb{R} \ ,\ \sigma^{2}>0\bigg\}\quad\mathbb{1}=\begin{pmatrix}1\\ \vdots \\ 1\end{pmatrix}$$
>Si fijamos $\sigma^{2}$ estariamos fijando el error. En ese caso
>$$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots\\X_{n}\end{pmatrix}\sim N_{n}\bigg(\tilde{\mu} \mathbb{1},\sigma^{2} Id_{n}\bigg) : \tilde{\mu }\in \mathbb{R} \ \bigg\}$$
>Osea solo tendriamos $\mu$ (lo que estabamos buscando incialmente) 

^457e8a

>[!Definition] Parametrizacion y modelos
>Se llamara *parametrizacion* a una funcion $\eta : \theta\rightarrow \mathcal{P}$ con $\mathcal{P}$ conjunto de funciones de distribucion que sea suryectiva. 
>*Modelo* se le dice a la parametrizacion con el conjunto $\mathcal{P}$. 
>$\Theta$ se denominara espacio de parametros.
>- Si $\Theta\subseteq \mathbb{R}^{k}$ para algun $k$ el modelo se denomina **parametrico**
>- Si $\eta$ es inyectiva entonces el modelo se denomina **identificable**  

^15e866

>[!Example] Ejemplos de modelos parametricos
>- (1) Bajo las suposiciones (i)(ii)(iii)(iv) asumiendo $G\sim N(0 ,\sigma^{2})$ con $\sigma^{2}$ desconocido. Estariamos en [[IE - Teorico 15#^457e8a]]. Entonces podemos definir la siguiente parametrizacion: $$\begin{align}\eta:\mathbb{R}^{2}&\rightarrow \mathcal{P}\\ \eta:(\mu ,\sigma^{2})&\mapsto P_{\mu,\sigma^{2}}=\mathcal{N}_{n}(\mu\mathbb{1},\sigma^{2}Id_{n})\end{align}$$ con $\Theta=\mathbb{R}\times(0,+\infty)$ se puede ver facilmente que es una parametrizacion *identificable*. Con esto tenemos un modelo indentificable.    
>- (2) Bajo los supuestos (i) (ii) (iii) tenemos $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots \\X_{n}\end{pmatrix}\sim \prod^{n}G(\cdot-\mu) :\mu\in \mathbb{R}\bigg\}$$
>Y podemos dar la condicion (iv) supniendo que $G\in\Gamma'_{0}$  $$\Gamma_{0}'=\{ G\text{ f.d.a }|\ G\text{ admite dens }g \ \land \ E_{G}(Z)=0 \text{ si }Z\sim G\}$$
>Ahora sea $\Theta=\mathbb{R}\times\Gamma_{0}'$ y $\eta:\Theta\rightarrow \mathcal{P}$ con $(\mu,G)\mapsto P_{\mu,G}$ (esto se llama un modelo superparametrico) 
>Veamos que es identificable. Osea $P_{\mu_{1},G_{1}}=P_{\mu_{2},G_{2}}\Rightarrow(\mu_{1},G_{1})=(\mu_{2},G_{2})$
>>[!Proof]-
>>1. Tenemos que ${} X^{1}=P_{\mu_{1},G_{1}}=P_{\mu _{2},G_{2}}=X^{2} {}$ entonces 
>>2. Entonces $\mu _{1}+E_{G_{2}}(\epsilon_{1})=E(X^{1})=E(X^{2})=\mu _{2}+E_{G_{2}}(\epsilon_{2})$ 
>>3. Como $G_{1},G_{2}\in \Gamma_{0}'$, $\epsilon_{1}\sim G_{1}$ y $\epsilon_{2}\sim G_{2}$ su esperanza es 0 entonces $\mu _{1}=\mu _{2}$  
>>4. Por hipotesis $P_{\mu_{1},G_{1}}=P_{\mu_{2},G_{2}}$ entonces $\prod^{n}_{i}G_{1}(t_{i}-\mu_{1})=\prod^{n}G_{2}(t_{i}-\mu_{2})\quad\forall (t_{1},\ldots,t_{n})\in \mathbb{R}^{n}$
>>5. Si suponemos $t_{j}\rightarrow+\infty$ para $j\neq1$ entonces todas las cosas en los productos de hacen 1 salvo los primeros terminos entonces $$G_{1}(t_{1}-\mu_{1})=G_{2}(t_{1}-\mu_{2}) =G_{2}(t_{1}-\mu _{1}) \quad\forall t_{1}\in \mathbb{R}$$
>>6. Mostrando que $G_{1}=G_{2}$ 
>- (3) Si ahora consideramos $$\Gamma_{0}''=\{ G\text{ f.d.a }|\ G\text{ admite dens }g\}$$
>Entonces asumiendo (i)(ii)(iii)      $$\mathcal{P}=\bigg\{ X=\begin{pmatrix}X_{1}\\ \vdots \\X_{n}\end{pmatrix}\sim \prod^{n}G(\cdot-\mu) :\mu\in \mathbb{R},G\in \Gamma_{0}''\bigg\}$$  
>Y definimos $\eta:\Theta\rightarrow \mathcal{P}$ con $(\mu,G)\mapsto P_{\mu,G}$ entonces $\Theta=\mathbb{R}\times\Gamma_{0}''$ NO es identificable
>>[!Proof]-
>>1. Sean $(\mu_{1},G_{1})=(0,\mathcal{N}(0,1))$ y $(\mu_{2},G_{2})=(1,\mathcal{N}(-1,1))$  
>>2. Entonces $X^{(1)}=\mu_{1}+\epsilon_{1}=0+\epsilon_{1}\sim\mathcal{N}(0,1)$ (por que ${} \epsilon_{1}\sim G_{1}\sim\mathcal{N}(0,1)$) y ${} X^{(2)}=\mu_{2}+\epsilon_{2}\sim\mathcal{N}(0,1) {}$ (por que ${} \epsilon_{(2)}\sim G_{2}\sim\mathcal{N}(-1,1) {}$) 
>>3. Con lo cual $F_{X^{(1)} }(t_{1})=F_{X^{(2)} }(t_{1})\quad\forall t_{1}\in \mathbb{R}$ (Osea $X^{(1)}\sim X^{(2)}$) O lo que es lo mismo ${} P_{\mu_{1},G_{1}}=P_{\mu_{2},G_{2}} {}$ 
>>4. Mostrando que el modelo no es indentificable
>- (4) Sea $$\Gamma_{0}'''=\{ G\sim \mathcal{N}(\Delta,\sigma^{2})\ |\ \Delta,\sigma^{2}\text{ desconocidos} \}$$ con $\theta=\mathbb{R}^{2}\times(0,+\infty)$ $\eta:(\mu,\Delta,\sigma)\mapsto P_{\mu,\Delta,\sigma}=\prod^{n}_{i=1}\Phi\left( \frac{\cdot-(\mu +\Delta)}{\sigma} \right)$ entonces el modelo es no identificable.
>>[!Proof]-
>>5. Sea $(\mu_{1},\Delta_{1},\sigma)=(-1,1,1)$ y $(\mu_{2},\Delta_{2},\sigma)=(0,0,1)$
>>6. ${} X^{(1)}=\mu_{1}+\epsilon_{1}=-1+\epsilon_{1}\sim\mathcal{N}(0,1) {}$ (por que $\epsilon_{1}\sim\mathcal{N}(1,1)$) y ${} X^{2}=\mu_{2}+\epsilon_{2}=0+\epsilon_{2}\sim\mathcal{N}(0,1) {}$ (por que ${} \epsilon_{2}\sim\mathcal{N}(0,1) {}$) 
>>7. Obviamente las varianzas van a coincidir (por que $Var(cte)=0$).
>>8. Entonces $P_{\mu_{1},\Delta_{1},\sigma}= P_{\mu_{2},\Delta_{2},\sigma}$. 
>>9. Con lo cual $\eta$ no es inyectiva mostrando que el modelo no es identificable   
>>10. Otra forma de pensarlo es $$P_{-1,1,1}=\prod\Phi(t_{i}-0)=\prod\Phi(t_{i}-(-1+1))=P_{0,0,1}$$
>>
>>

^5798ed

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

^817fef

>[!Definition] Estadistico
>$(\Omega,\mathcal{A},\mathcal{P})$ espacio probabilistico y $(\Omega_{X},\mathcal{F}_{X})$ con $\mathcal{F}_{X}$ $\sigma$-algebra en $\Omega_{X}$. Sean $$X:(\Omega,\mathcal{F})\rightarrow (\Omega_{X},\mathcal{F}_{X})$$
>$\mathcal{F}/\mathcal{F}_{X}$-medible (osea $X^{-1}(B)\in \mathcal{F}\quad\forall B\in \mathcal{F}_{X}$) 
>Sea $(\mathcal{T},\mathcal{F}_{\mathcal{T}})$ con $\mathcal{F}_{\mathcal{T}}$ $\sigma$-algebra de $\mathcal{T}$. Luego si $$T:(\Omega_{X},\mathcal{F}_{X})\rightarrow(\mathcal{T},\mathcal{F}_{\mathcal{T}})$$ es $\mathcal{F}_{X}/\mathcal{F}_{\mathcal{T}}$-medible entonces $T$ se denomina *estadistico*

^d1ec15

>[!Definition] Estimador
>Si $\mathcal{P}$ es una familia de distribuciones parametrizables identificables $\eta:\Theta \rightarrow\mathcal{P}$ biyectiva (osea dado un *modelo estadistico* identificable y parametrizable) y $T : \Omega_{X}\rightarrow \Theta$ es medible. Entonces $T$ se denomina *estimador*

^21cf6b

>[!Example] Ejemplos de estimadores
>($\Omega,\mathcal{F}$) espacio de probabilidad $X=(X_{1},\ldots,X_{n})$ entonces $(\mathbb{R}^{n},\mathcal{B}(\mathbb{R}^{n}))=(\Omega_{X},\mathcal{F}_{X})$ vector aleatorio
>- (a) *Media muestral* $T(X_{1},\ldots,X_{n})=\frac{1}{n}\sum^{n}_{i=1}X_{i}$ es un estadistico. Sea $$\mathcal{P}=\left\{  (X_{1},\ldots,X_{n})^{T}\sim\prod^{n}G(\cdot-\mu)\ |\ G \text{ cumple }E_{G}(\epsilon)=0   \right\}$$ ($X=EX_{i}+\epsilon_{i}$) $\Theta=\mathbb{R}\times\Gamma_{0}'$
>Entonces tenemos un modelo. Luego $T$ es un estimador por que su conjunto de llegada es donde se mueve el valor esperado (que es uno de los parametros) de las variables aleatorias $X_{i}$
>- (b) *Varianza muestral* $T(X_{1},\ldots,X_{n})=\frac{1}{n+1}\sum^{n}_{i=1}(X_{i}-\overline{X}_{n})^{2}$ es un estadistico. Nuevamente $T$ es un estimador pues $Im(T)\subseteq (0,+\infty)$ donde se mueven las varianzas de las variables aleatorias. En este caso el $\cal{P}$ seria algo donde la varianza sea un parametro 
>- (c) *Funcion de distribucion empirica*
>$$\hat{F}_{n}(X_{1},\ldots,X_{n})(t)=\sum^{n}_{i=1} I_{(-\infty,t]}(X_{i})$$
>Notar: Si $(X_{1},\ldots,X_{n})^{T}$ es un vector aleatorio entonces $\hat{F}_{n}(X_{1},\ldots,X_{n})(x)$ con $x$ fijo y $(X_{1},\ldots,X_{n})$ moviendose, es una variable aleatoria.
>Por ejemplo si $X$ mapea personas a su altura y $X_{i}\sim X$ (osea son i.i.d) entonces $\hat{F}_{n}(X_{1},\ldots,X_{n})(x)$ recibe personas y dice en promedio cuantas de ellas son mas altas que $x$ 
>Notar: Si $X_{1}(w),\ldots,X_{n}(w)$ son fijos. Osea si fijamos una muestra entonces $\hat{F}_{n}$ es una f.d.a
>- (d) *Mediana muestral* $\hat{m}_{n}:\mathbb{R}^{n}\rightarrow\mathbb{R}$. Si tenemos una muestra $x_{1},\ldots,x_{n}$ y la ordenamos $x_{(1)},\ldots,x_{(n)}$ entonces 
>$$\hat{m}_{n}(x_{1},\ldots,x_{n})=\begin{cases}x_{\left( \frac{n+1}{2} \right)}\quad & \text{si }n \text{ es impar}\\ \frac{1}{2}\left[ x_{\left( \frac{n}{2} \right)} + x_{\left( \frac{n}{2}+1 \right)} \right]\quad &\text{si }n \text{ es par}\end{cases}$$
>Recordemos que una mediana de una distribucion $f$ se define como un $m$ tal que 
>$$P(Y\geq m)\geq 0.5 \quad 1-F(m_{-})=1-P(Y<m)\geq0.5$$ donde $m-$ es el limite por abajo
>$$P(Y\leq m)\leq 0.5$$
> donde $Y \sim F$.
>Si ahora tomamos la distribución empírica $\hat{F}_n$ se puede observar que la mediana empírica $\hat{m}_n$ cumple: $$ 1 - \hat{F}_n(\hat{m}_n) = P(Y \ge \hat{m}_n) \ge 0.5 $$
>$$ \hat{F}_n(\hat{m}_n) = P(Y \le \hat{m}_n) \le 0.5 $$
>donde $Y \sim \hat{F}_n$.
>

^24cad2

