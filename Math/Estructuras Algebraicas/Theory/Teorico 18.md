---
dateCreated: 2024-10-30,09:10
---
$D[X]\subseteq F[X]\quad F[X,Y]=(F[X])[Y]$

>[!Definition]
>$R$ anillo un subconjunto no vacio $S$ de $R$ se dice multiplicativo si 
>$$\forall a,b\in S \Longrightarrow a.b\in S $$

>[!Definition]
>Dado $R$ anillo conmutativo y $S \subseteq R$ multiplicativo definimos en $R\times S$ la relacion
>$$(r,s)\sim (r',s')$$
>si y solo si existe $s_{1}\in \mathbb{S}$ tal que $\ s_{1}(rs'-r's)=0$
>>[!Remark]
>>$\sim$ es una relacion de equivalencia en $R\times S$ (ejercicio)
>

>[!Remark]
>Si $S\neq\{ 0 \}$ y no contiene divisores de 0
>$$(r,s)\sim(r',s')\iff rs'-r's=0\iff rs'=sr'$$
>El conjunto de clases de equivalencia se denota $S^{-1}R$ y la clase de un par $(r,s)$ se denota $\frac{r}{s}\in S^{-1}R$ 

>[!Proposition]
>$S^{-1}R$ es un anillo conmutativo con $1$ con las operaciones 
>$$\frac{r}{s}+\frac{r'}{s'}=\frac{rs'+r's}{ss'}\quad \frac{r}{s} \frac{r'}{s'}=\frac{rr'}{ss'}$$
>Se tiene ademas 
>- (a) Si $R\neq0 \ (0\not\in S)$ y $R$ no tiene divisores de $0$ entonces $S^{-1}R$ es un dominio de integridad
>- (b) Si $R\neq0$ no tiene divisores de $0$ y $S=R-\{ 0 \}$ entonces $S^{-1}R$ es cuerpo. Este se llama el cuerpo de fracciones de $R$
>>[!Proof]
>>1. La primera parte se deja como ejercicio (probar axiomas de anillos , pero antes ver que estan bien definidas las clases de eq(fracciones))
>>2. $1=\frac{s}{s} (s\in S)$ , $0=\frac{0}{s}$, $\frac{r}{s}=\frac{rs'}{ss'}: rss'-rss'=0$
>>
>>(a) 
>>1. $1_{S^{-1}R}=\frac{s}{s}$ con $s\in S$. $0\not\in S$ entonces $\frac{s}{s}\neq0=\frac{0}{s}$ pero $R$ no tiene divisores de $0$ mostrando que $1_{S^{-1}R}\neq0$
>>2. $\frac{rr'}{ss'}=\frac{r}{s} \frac{r'}{s'}=0=\frac{0}{s''}$ con $s''\in S\iff rr's''=0 \iff r=0 \quad\lor\quad r'=0$ (pues $0\not\in S$ entonces $s''\neq0$)  
>>
>>(b)
>>1. $0\neq \frac{r}{s}\in S^{-1}R$ entonces $r\neq0$ entonces $r\in S=R-\{ 0 \}$ entonces $\frac{s}{r}\in S^{-1}R$ es inverso de $\frac{r}{s}$

>[!Example]
>$P$ ideal primo, $R$ conmutativo con identidad, $R-\{ p \}=S_{p}$ es multiplicativo $(ab\in P \Rightarrow a\in P\quad\lor\quad b\in P)$  
>$S^{-1}_{P}R:=R_{P}$ y se llama la localizacion de $R$ en $P$. 
>Nos concentramos en lo que sigue en el cuerpo de fracciones $F$ de un dominio de integridad $R$ 
>$R\xhookrightarrow{i}F$ con $i(r)=\frac{r}{1}$ homo de anillos. $i$ inyectiva $\frac{r}{1}=0=\frac{0}{1}$ entonces $r.1=0$
>Identificamos a $R$ con su imagen en $F$ que es un subanillo

>[!Remark]
>El anillo $S^{-1}R$ esta caracterizado por la propiedad universal 
>$$\phi:R^{*} \longrightarrow A \quad \phi(s)\in A^{*} \quad\forall s\in S$$
>![[Pasted image 20241030094724.png]]
>$\tilde{\phi}(\frac{r}{s})=\phi(r)\phi(s)^{-1}$
>

$D$ dominio de integridad $F$ su cuerpo de fraciones $D\subseteq F$ , $D[X]\subseteq F[X]$ subanillos

>[!Proposition] 
>$D$ DFU. Si $\frac{r}{s}\in F$ con $s\neq0$ es raiz de $f=a_{0}+\ldots+a_{n}x^{n}$ con $f\in D[X]$ y $(r,s)=1$ (coprimos) entonces $s|a_{n}$ y $r|a_{0}$
>>[!Proof]
>>1. $f\left( \frac{r}{s} \right)=0$ $a_{0}+a_{1} \frac{r}{s}+\ldots+a_{n} \frac{r^{n}}{s^{n}}=0$
>>2. $S^{n}a_{0}=-(a_{1}rs^{n-1}+\ldots+a_{n} \tilde{r})$ entonces $r|s^{n}a_{0}$
>>3. Como $r,s$ coprimos entonces $r|a_{0}$
>>4. $a_{n}r^{n}=-(a_{0}s^{n}+a_{1}rs^{n-1}+\ldots a_{n-1}r^{n-1}s)$  
>>5. D DFU
>

>[!Definition]
>El contenido de un polinomio $0\neq f\in D[X]$ se define como
>$$C(F)=mcd(a_{0},\ldots,a_{n})$$
>esta bien definida salvo asociados. 
>

Denotamos $a\approx \iff a,b$ asociados $a,b\in D$

>[!Proposition]
>$a\in D$ $f,\in D[X]$ entonces
>$$C(af)=aC(f)$$ prop del mcd.

>[!Definition] (Polinomio primitivo) 
>$f$ se dice primitivo si $C(f)\in D^{*}$ (Unidades) (ie los coeficientes de $f$ tienen a "$1$" como mcd)

>[!Example]
>En $Z[X]: 2x-5x^{2}+21x^{3}$ es primitivo.
>$D$ cualquiera: $a_{0}+\ldots+x^{j}+\ldots+a_{n}x^{n}$ primitivo
>

>[!Theorem] Gauss
>$D$ DFU, $f,g\in D[X]$ entonces $$C(f.g)=C(f).C(g)$$
>En particular el producto de polinomios primitivos es primitivo
>Notar que $f\in D[X]$ $f=\tilde{f}$ con $\tilde{f}$ primitiva donde $d=mcd(a_{0},\ldots,a_{n})=C(f)$
>>[!Proof]
>>1. $f=C(f)\tilde{f}$ y $g=C(g)\tilde{g}$ entonces $fg=C(f)C(g)\tilde{f}\tilde{g}$ con $\tilde{f},\tilde{g}$ primitivos. Entonces basta probar que $f,g$ primitivos entonces $f.g$ primitivo
>>2. $f=a_{0}+\ldots+a_{n}x^{n}$ , $g=b_{0}+\ldots+b_{m}x^{m}$ y $f.g=c_{0}+\ldots+c_{n+m}x^{n+m}$ con $c_{k}=\sum^{k}_{j=0}a_{j}b_{k-j}$
>>3. Supongamos por el contrario que $C(fg)\not\in D^{*}$ 
>>4. Como $D$ DFU entonces $\exists p$ irreducible (por ende primo) tal que $p|C(fg)$
>>5. Con lo cual $p|c_{j}\quad\forall j=0,\ldots,n+m$
>>6. Como $f$ y $g$ primitivos entonces existen $h\in \mathbb{N}_{0}: p|a_{i},\quad \forall i=0,\ldots h-1\quad p \nmid a_{h}$ y $l\in \mathbb{N}_{0}: p|b_{j},\quad \forall j=0,\ldots h-1\quad p \nmid b_{l}$
>>7. $p\nmid c_{l+h}=a_{0}b_{h+l}+a_{1}b_{h+l-1}+\ldots+a_{h}b_{l}+\ldots+a_{h+l}b_{0}$
>>8. la primera parte sin contar $a_{h}b_{l}$ divisivle por $p$ pues $p$ la segunda parte 
>>9. aca falto algo
>    