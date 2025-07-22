>[!Definition] 
>Sea $R$ anillo. Un elemento $0\neq a\in R$ se dice *divisor de cero* a izquierda (derecha) si $\exists 0\neq b\in R$ tal que $ab=0$ (respectivamente $ba=0$ )
>Si $a$ es divisor de cero a izquierda y a derecha entonces se dice que $a$ es divisor de cero

>[!Example]
>1. En $\mathbb{Z}_{n}$ si $n$ no es primo tomamos $d|n$ entonces $\overline{d}$ es un divisor en $\mathbb{Z}_{n}$
>2. En $M_{n}(R)\quad n>1$ tomamos COPIAR MATRICES   

>[!Definition] Dominio de integridad
>Un anillo conmutativo con identidad $1\neq 0$ se dice de dominio integro (o de integridad) si no posee divisores de 0

>[!Example]
>1. $\mathbb{Z},\mathbb{R},\mathbb{Q},\mathbb{C}$ son dominios de integridad
>2. $\mathbb{Z}_{n}$ es dominio de integridad sii $n$ es primo observamos que ${} \mathbb{Z}/{n\mathbb{Z}}=n\mathbb{Z} {}$ 
>3. $\mathbb{Z}[x],\mathbb{Z} [x_{1},\ldots,x_{k}]$ etc , son dominios de integridad (Los polonomios con coficientes en $\mathbb{Z}$ y variables $x_{i}$ ) 

>[!Definition] Anillo de Division
>Sea $R$ un anillo con identidad y sea $0\neq a\in R$ se dice que $a$ es:
>1. Inversible a izquierda $\iff\exists b\in R$ tal que $ba=1$
>2. Inversible a derecha $\iff\exists b\in R$ tal que $ab=1$
>3. Inversible si lo es a derecha y a izquierda
Un anillo $D$ con $1\neq 0$ donde todo elemento es inversible se llama *anillo de division*. Si ademas $D$ es conmutativo se dice un *cuerpo*  

>[!Remark]
>Si $a\in R$ es inversible entonces el inverso a izquierda de $a$ coincide con su inverso a derecha y esta univocamente determiando por $a$ (Notacion: $a^{-1}$)
>>[!Proof]


>[!Definition]
>El conjunto de los elementos inversibles en un anillo $R$ (con $1\neq 0$ ) se llama *grupo de unidades de R*.
>(Notacion: $R^{X}$ o $R^{*}$ o $\mathcal{U}(R)$). Esto es un grupo con el producto de $R$  

>[!Example]
> 1. $\mathbb{Z}_{n}^{x}=\{ \overline{k}\in\mathbb{Z}_{n} \ |\ (k,n)=1\}$
> 2. $\mathbb{Z}^{x}=\pm 1$
> 3. $\mathbb{Q}^{x}=\mathbb{Q}-\{ 0 \}$
> 4. $(M_{n}(R))^{x}=GL(n,R)$
> 5. $End(\mathbb{Z})=\{ f:\mathbb{Z}\rightarrow\mathbb{Z},\ f\text{ es homo}\}$  
>> $(f+g)(x)=f(x)+g(x)$
>> $(f.g)(x)=(f\circ g)(x)=f(g(x))$
>> notar entonces que $End(\mathbb{Z})^{x}=Aut(\mathbb{Z})=\{ \pm1 \}$      

>[!Theorem]
>Sea $R$ anillo con $1\neq0$ y caracteristica $n>0$ entonces si $R$ no tiene divisor de $0$ entonces $n$ es primo  

>[!Remark]
>Sea $R$ anillo sin divisores de cero y $a,b,c\in R$ DUDA
>

>[!Theorem]
>Sea $R$ anillo entonces $R$ es isomorfo a un subanillo de un anillo $S$ con $1$    

>[!Definition]
>Un dominio de integridad tal que todos sus ideales son principales se dice un dominio de ideales principales

>[!Example]
>$\mathbb{Z},\mathbb{Z}_{n}$
>

>[!Theorem] Teorema de Isomorfismo
>Sea $R$ anillo $I,J\subseteq R$ ideales:
>1. Si $\psi: \mathbb{R}\rightarrow S$ homomorfismo de anillos $^R/_{Ker(\psi)}\cong Im(\psi)$ ($\psi$ inducie un iso de anillos) 
>2. $^{I+J}/_{J}\cong\ ^{I}/_{I\cap J}$ es iso de anillos
>3. Si $I\subseteq J$ entonces $^{J}/_{I}$ es ideal de $^{R}/_{I}$ y $^{^R/_I}/_{^J/_I}\cong\ ^R/_J$  
>Si un ideal contiene a la identidad entonces ese ideal es todo el anillo

>[!Definition]
>Sea $R$ anillo. Un ideal $P$ de $R$ tal que $P\neq R$ se dice primo si para cualquier par de ideales $I,J$ de $R$ vale que:
>$$IJ\subseteq P\Rightarrow I\subseteq P\quad\lor\quad J\subseteq P$$
>Donde $IJ=\left\{  \sum^{r}_{i=1}a_{i}b_{i} \ |\ r\in \mathbb{N},a_{i}\in I,b_{i}\in J \right\}$    

>[!Theorem] DUDA
>Sea $P\subset X$ ideal tal que para todo $a,b\in R$ se cumple que $ab\in P$ entonces $a\in P$ o $b\in P$. Entonces $P$ es primo. Si $R$ es conmutativo, vale la reciproca. ( Que seria la reciproca?) 

>[!Example]
>1. $R\neq 0$ anillo sin divisores de cero entonces $\{ 0 \}$ es un ideal primo. $ab\in \{ 0 \}$ entonces $a=0$ o $b=0$
>2. Si $R=\mathbb{Z}$ todo ideal es principal $P=(p)\neq\mathbb{Z}\iff p\neq\pm1$
>$I=(a),\quad J=(b)$ ideales de $\mathbb{Z}$ $IJ=(ab)\subseteq P=(p)\iff p|ab \Rightarrow p|a \quad\lor\quad p|b \iff p$ primo    
>
