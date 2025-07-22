---
dateCreated: 2024-10-18,18:58
---
>[!Theorem]
>Sea $R$ anillo conmutativo con $1\neq0$ y sea $P\subseteq R$ ideal de $R$ entonces $P$ es primo $\iff$ $^{R}/_P$ es un dominio de integridad
>>[!Proof]
>>asd

>[!Example]
>![[Pasted image 20241018211456.png]]
>![[Pasted image 20241018211630.png]]
>![[Pasted image 20241018211644.png]]
>

>[!Remark]
>Realizar al grupo de los cuaterniones como subgrupo de $K^{*}=K-\{ 0 \}$  

>[!Theorem] Wedderburn
>Si $R$ es anillo de division tal que $R$ es finito entonces $R$ es conmutativo y por lo tanto es un cuerpo

>[!Definition]
>$R$ anillo con $1\neq0$ entonces $R^{X}=\{ a\in R:a \text{ unidad} \}$ (inversible) es grupo con el producto de $R$.

>[!Example]
>Sea $\mathbb{F}$ cuerpo con $F^{*}$ grupo abeliano.
>- Supongamos $\mathbb{F}$ finito 
>	$n=\lvert F \rvert-1=\lvert F^{*} \rvert$ entonces $\forall a\in \mathbb{F}^{*}$ tenemos $a^{n}=a^{\lvert F \rvert-1}=1$ por teorema de lagrange (DUDA) 
>	Ademas para todo divisor $d$ de $n$, un elemento de orden $d$ en $\mathbb{F}^{*}$ es exactamente lo mismo que una raiz disinta de 1 del polinomio $x^{d}-1\in F^{*}$.
>	Como este polinomio tiene a lo sumo $d$ raices en $\mathbb{F}$ entonces $\mathbb{F}^{*}$ tiene a lo sumo un subgrupo de orden $d$
>	Esto implica $\mathbb{F}^{*}$ es ciclico
>	En particular $(\mathbb{F}_{p})^{*}=\mathcal{U}(\mathbb{Z}_{p})=\{(a,p)=1 \}$ es ciclco de orden $p-1$
>	

>[!Example]
>Sea $X\neq\emptyset$ conjunto. $\mathbb{F}(X)=\{ f : X\rightarrow X: f \text{ es funcion} \}$.
>$\mathbb{F}(X)$ es monoide con la composicion ($e=Id_{X}$) 
>$f\in \mathbb{F}(X)$ tiene inversa a izquierda $g$ tal que $gf=Id_{X}\iff f$ inyectiva
>$f\in \mathbb{F}(X)$ tiene inversa a derecha $g$ tal que $fg=Id_{X}\iff f$ sobreyectiva  
>$f\in \mathbb{F}(X)$ es inversible $\iff f$ es biyectiva
>

>[!Remark]
>Una inversa a izquierda (derecha) no es unica en general. 
>Por ejemplo sea $X=\mathbb{Z}$ con $f : X\rightarrow X$ dada por $f(x)=2x$ es inyectiva pero no es inversible
>Sea $g : X\rightarrow X$ dada por
>$$g(y)=\begin{cases} 
\frac{y}{2} & \text{y par} \\ 
>0 & \text{y impar}
\end{cases}$$
>$g\circ f(x)=x\quad\forall x\in \mathbb{Z}$ entonces $g$ es inversa a izquierda de $f$
>Tambien tenemos $\tilde{g}:X\rightarrow X$ dada por
>$$g(y)=\begin{cases} 
\frac{y}{2} & \text{y par} \\ 
>y & \text{y impar}
\end{cases}$$    
>Y es directo ver que $\tilde{g}$ tambien es inversa a izquierda de $f$
>Tomemos un monoide $U$ como el anterior ($U=\mathbb{F}(X),X$ infinito) $\mathbb{F}U$ es anillo "de grupo" $\mathbb{F}$ cuerpo (o anillo) base $a_{g}:g\in U$
>$\mathbb{F}U\ni a=\sum_{g\in M}t_{g}a_{g}\quad t_{g}=0\quad\forall g,t_{y}\in \mathbb{F}$ entonces $a_{g}a_{g}=a_{gh}$
>Asi $\mathbb{F}U$ es anillo con $1\neq a_{l}\neq1=0$
>Si $g\in U$ inversible a izuiqerda (y no a derecha) $g_{1}g=l$
>$a_{g}\in \mathbb{F}M$ tiene inverso a izquierda $a_{g_{1}}$ pero no es a derecha (y no es unico si no lo es el inverso de $g$ a izquierda) 
>$a_{l}=a_{g}\left( \sum_{f\in U}t_{f}a_{f}\right)=\sum_{f\in U}t_{f}a_{g_{f}}$
>Como $\{ a_{h} \}_{h\in U}$ es una base entonces $\exists F$ tal que $gf=l$ pero esto es absurdo pues $g$ no es inversible a derecha           

>[!Example]
>$R=M_{n}(D)$, $D$ anillo de division $n\geq2$ o $D$ cuerpo. En $R$ son equivalentes
>1. $A$ es inversible a izquierda
>2. $A$ es inversible a derecha
>3. $A$ es inversible 
>(TEOREMA)
>Ideales de $R$
>$$AB=\begin{bmatrix}  
A_{11}B_{1} +A_{12}B_{2}+\ldots+A_{1n}B_{n}\\ 
 \vdots\\
A_{n1}B_{1}+A_{n2}B_{2}+\ldots+A_{n}B_{n}  
\end{bmatrix}$$
> Pensando $$B=\begin{bmatrix}  
B_{1}\\
B_{2}\\
\vdots \\
 B_{n}
\end{bmatrix}$$  
>- Sea $I_{j}=\{ B\in M_{n}(D)\ | \ B_{ik}, \forall k\neq j \}$. Asi $L_{j}$ son ideales a derecha pero no a izquierda de $R$
>- Que pasa con los ideales bilateros?. Sabemos que no puedne ser os dados recien ni combinacioens lineales de ellos
Afirmacion $R$ no contiene ideales no nulos propio ($\neq R$)
>>[!Proof]
>>(Idea, como ejercicio completar los detalles)
>>Supongamos $I\subseteq R$ ideal (bilatero) $I\neq\emptyset$ , $0\neq A\in I$.
>>$I$ es estable por operaciones elmentales tanto por filas como por columnas, que corresponden a multiplicar a izquierda o derecha por ciertas matrices.
>>A partir de $A$ puedo obtener cualquier $U\in M_{n}(D)$ mediante operaciones por filas y columnas: basta ver que puedo obtener todas las matrices $$E_{rs}=\begin{bmatrix}  
0 & \ldots & 0\\  
\vdots & 1 & \vdots \\
 0 &\ldots & 0
\end{bmatrix}$$     
>($s$ columnas, $r$ filas) 
>Entonces $I=R$. 
>Ademas $I\neq\{ 0 \}$ es el unico ideal propio que no es primo pues $R$ tiene divisores de $0$ ie $\exists A,B\in R-\{ 0 \}$ tales que $AB=0$
>Que $I$ sea primo, significa que $\exists U,V\subseteq R$ ideales tales que $UV\subseteq I$ 
>Entonces $U=0$ o $V=0$ con $U=0,R$      
>Entonces $U\subseteq I$ o $V\subseteq I$ con $V=0,R$    
>Este anillo (no conmutativo muestra que la condicion de ser pimo para un ideal $P$ no implica que $ab\in P$ entonces $a\in P$ o $b\in P$    )   

Vamos a considerar el conjunto de ideales (a izquierda) de un anillo $R$ que son propios osea distintos de $R$

>[!Definition]
>Un ideal (a izquierda, a derecha) $U$ se dice maximal (a izquierda,a derecha). Si $U\neq R$ y es maximal con respecto a la relacion de orden dada por inclusion.
>

>[!Example]
>1. En $U_{n}(D)$ , $(0)$ un ideal maximal (tambien si $n=1$)
>2. En $\mathbb{Z}_{n}$: ideales $(n)=n\mathbb{Z}$, con $n\in N_{0}$ $(n)\subseteq (m)\iff m|n$
>Por otro lado $(n)=\mathbb{Z}\iff n=\pm1$. Los ideales maximales de $\mathbb{Z}$ son $(p)$ con $p$ primo. Luego en $\mathbb{Z}$ primo $\iff$ maximal
>

>[!Theorem]
>Sea $R$ anillo con $1\neq0$ y sea $I\subseteq R$ ideal. Entonces existe un ideal maximal $U$ de $R$ tal que $I\subseteq U$. En particualr $R$ posee ideales maximales (Lo mismo ocurre agregando a izquierda y a derecha)
>>[!Proof]
>>asd

