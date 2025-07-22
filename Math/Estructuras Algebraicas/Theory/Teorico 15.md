---
dateCreated: 2024-10-18,15:07
tags:
  - AlgebraicStructures
  - ringTheory
---
>[!Definition]
>Un anillo es un conjunto $R$ con dos operaciones
>$$+ : R\times R\rightarrow R$$
>$$* : R\times R \rightarrow R$$
>1. $(R,+)$ es abeliano 
>2. El producto $*$ es asociativo
>3. El producto distribuye
>- $a(b+c)=ab+ac$
>- $(a+b)c=ac+bc$
>${} \forall a,b,c\in R$  
>  

>[!Remark]
>Si $ab=ba\quad\forall a,b\in R$ entonces $R$ es anillo conmutativo
>Si $\exists 1\in R$ tal que $1.a=a=a.1\quad\forall a\in R$ entonces $R$ es anillo con identidad
>

>[!Proposition]
>$R$ anillo $a,b\in R$ entonces
>1. $0.a=a.0$
>2. $(-a)b=-ab=a(-b)$
>3. $(na)b=n(ab)=a(nb)\quad\forall n\in \mathbb{Z}$

>[!Definition] Caracteristica
>Sea $R$ anillo. Si existe $n\in \mathbb{N}$ tal que $n.a=0\quad\forall a\in R$. El minimo de estos $n\in \mathbb{N}$ se nombra caracteristica de $R$ 
>(Notar que aqui $\mathbb{N}$ no tiene al $0$  ) 

>[!Remark]
>Si $n.a=0\quad\forall a\in R$ entonces $n=0$ se dice que la caracteristica es 0

>[!Definition]
>Si $R,S$ anillos, un homomorfismo de anillos es una funcion $f : R\rightarrow S$ tal que 
>1. ${} f(a+b)=f(a)+f(b) {}$
>2. $f(a.b)=f(a).f(b)$

>[!Proposition]
>Sea $R$ anillo con identidad $1$ tal que la caracteristica de $R$ es $n>0$ entonces 
>1. La funcion $\phi:\mathbb{Z}\rightarrow R$ dada por $\phi(k)=k.1$ es un homormofismo de anillos con nucleo $n\mathbb{Z}$ 
>2. $n=\min\{ k\in \mathbb{N}:k.1=0 \}$ 
>>[!Proof]
>>ds

>[!Example]
>1. $\mathbb{Z},\mathbb{Q},\mathbb{R},\mathbb{C}$ son anillos con caracteristica 0
>2. $\forall n>2$ tenemos que $\mathbb{Z}_{n}$ es anillo conmutativo con $1\neq0$ y caracteristica $n$
>3. $\mathbb{Z}_{n}[x]$ polinomio en una indeterminada $x$ con coeficientes en $\mathbb{Z}_{n}$ es un anillo conmutativo con caracteristica $n$ con $1(=1\in \mathbb{Z}_{n})\neq0$
>4. $R$ anillo $d\in \mathbb{N}$ con $M_{d}(R)=\{ (A_{ij})_{1\leq i,j\leq d}:A_{ij}\in R \}$ es una nillo no conmutativo si $d>1$ y $R\neq0$. Si $R$ tiene identidad entonces $M_{d}(R)$ tiene identidad y es la matriz identidad.
>La caracteristica de $M_{d}(R)$ es la misma que $R$. Adema $M_{n}(\mathbb{Z}_{m})$ es un anillo conmutativo de caracteristica $m$ con identidad
>5. $2\mathbb{Z}$ anillo conmutativo sin idenridad de caracteristica 0
>6. $S$ conjunto y $R$ anillo $R^{2}=\{ f : S\rightarrow R :f \text{ es funcion}\}$  
>- $(f+g)(s)=f(s)+g(s)$ 
>- $(f.g)(s)=f(s)g(s)$
>$s\in S\quad f,g\in R^{S}$
>$R^{s}$ es anillo de caracteristica $R$. Si $1\in R$ entonces $R^{S}$ tiene identidad $1(s)=1\quad\forall s\in S$
>7. $R=\{ f : \mathbb{R}\rightarrow \mathbb{R}:sop(f) \text{ compacto },f\text{ continua}\}$ $R$ es anillo con las operaciones puntuales definidas en $6.$ $R$ no tiene identidad
>Que estas operaciones estan bien definidas pues suma y producto de funciones continuas con soporte compacto vuelven a ser continuas con coporte compacto

>[!Definition]
>Sea $R$ un anillo, un subconjunto $T$ de $R$ se dice subanillo si $T$ subgrupo de el grupo abeliano $R$ y ademas $T$ cerrado para el producto
>1. $T\leq (R,+)$
>2. $a.b\in T\quad\forall a,b\in T$

>[!Remark]
>Un sub anillo es un anillo con las operaciones inducidas por la restriccion

>[!Example]
>$\mathbb{G}$ grupo de $R$ anillo. Para cada $g\in G$ $R_{g}\cong R$ ($R_{g}$ grupo abeliano) (Para cada $g\in G$ tomo una copia de $R$)
>$$x\in R[G]\quad x=\sum^{N}_{k}x_{i}g_{i}\quad x_{i}\in \mathbb{G}\quad g_{i}\in R  $$
Con $xg_{i}$ que no es el producto ni ninguna operacion, es una expresion.
>Definimos la suma $$x+y = \sum^{N}_{n=1}(x_{i}+y_{i})g_{i} $$ con $N$ el maximo entre los dos exponenetes de ambas sumatorias
>Definmos el producto $$xy=\sum^{k}\bigg[\sum_{i,j\  |\ g_{i} g_{j}= g_{k}} x_{i}y_{j}\bigg]g_{k}  $$   
>Luego $\mathbb{G}[R]$ es anillo llamado el anillo de grupo $\mathbb{G}$ con coeficientes en $R$      
>

>[!Example]
>$\mathbb{Z}[\mathbb{S}_{3}]$. Demos un ejemplo de su operacion
>$x=id + (12) -2(123)$ 
>$y=(23)-(12)+Id$
>$$
\begin{align} x.y& =id(23)-id(12)+id+(12)(23)-(12)(12)+2(12)(123)+Id+Id(12)-2Id(123) \\
&=(23)-(12)+Id+(123)-Id+2(23)+Id+(12)-2(123) \\
&=(2+1)(23)+Id+(-2+1)(123) \\
&=Id+3(23)-(123)
\end{align}$$

>[!Definition]
>$f : R\rightarrow S$ homomorfismo de anillos. 
>1. $f$ se dice monomorfismo si $f$ inyectivo    
>2. $f$ se dice epimorfismo si $f$ sobreyectivo
>3. $f$ se dice isomorfismo si $f$ biyectiva
>$Im(F)\subseteq S$ es subrgrupo abeliano (pues $f : (R,+)\rightarrow (S,+)$ homo). 
>Ademas $f(a)f(b)=f(a.b)\in Im(f)$ entonces $Im(f)$ sub anillo de $S$
>

>[!Remark]
>El nuclero de $f$ $\ker{f}=\{ a\in R\ |\ f(a)=0 \}$ tambien es sub anillo
>Ademas 
>- $a.b\in Ker(f)\quad \forall b\in\ker f\quad\forall a\in R$
>- $a.b\in Ker(f)\quad \forall a\in\ker f\quad\forall b\in R$  
>Es decir que $\ker f \subseteq R$ es un ideal de $R$ de acuerdo con la siguiente definicion

>[!Definition] Ideal
>Sea $R$ anillo. Un subgrupo $(I,+)\leq (R,+)$ se dice: 
>un ideal a izquierda si 
>$$ax\in I\quad\forall a\in R\quad\forall x\in I$$
>Ideal a derecha si:
>$$xa\in I\quad\forall a\in R\quad\forall x\in I$$        
>Ideal (bilatero) si:
>$$ax,xa\in I\quad\forall a\in R\quad\forall x\in I$$        
>

>[!Definition]
>$I\subseteq R$ ideal definimos en el grupo abeliano $^{R}/_I$ la operacion 
>$$(a+I)(b+I)=ab+I\quad a,b\in R$$

>[!Proposition]
>$^{R}/_{I}$ es anillo con esta operacion
>>[!Proof]
>>asd
>

^083674

