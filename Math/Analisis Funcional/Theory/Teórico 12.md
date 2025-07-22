---
dateCreated: 2024-10-06,19:05
tags:
  - FunctionalAnalysis
---
>[!Definition]
>$H\subseteq X$ normado es *hiperplano* si $H=\{ x\in X:f(x) =\gamma \}$ con $f : X\rightarrow \mathbb{F}$ lineal no necesariamente continuo. $f\not\equiv 0$  y $\gamma\in Im(f)$. 
>Dados $A,B\subseteq X$ decimos que $H$ separa $A$ y $B$ sii 
>$$f(x)\leq \gamma\quad\forall x\in A \quad\text{y}\quad f(x)\geq\gamma\quad\forall x\in B$$
>Y que separa estrictamente sii $$f(x)\leq \gamma-\epsilon\quad\forall x\in A\quad\text{y}\quad f(x)\geq\gamma+\epsilon\quad\forall x\in B$$
>

>[!Remark] DUDA
> - El [[Teórico 11#^18a436| Teorema de Separacion]] dice que bajo las condiciones de $(a)$ existe *hiperplano* que separa $A$ y $B$ y  bajo las condiciones $(b)$ separa estrictamente
> - Si $A$ o $B$ no es convexo $(a)$ del teo no es cierto
> - Si $A$ no es comacto $(b)$ en general no es cierto                   

>[!Remark]
>Es equivalente llamar *hiperplano* a $\tilde{H}=x_{0}+Ker(f)$ (y en este caso decimos que pasa por $x_{0}$) para cierto $f : X\rightarrow \mathbb{F}$ lineal tal que $f\not\equiv 0$ 
>>[!Proof]-
>>pues sea $x_{0}\in H$ fijo con $\gamma=f(x_{0})$.
>>Entonces si $x\in H$ entonces $f(x)=\gamma$  por ende tenemos $$x=x-x_{0}+x_{0}\quad\text{y}\quad f(x-x_{0})=f(x)-f(x_{0})=0$$
>>osea $x-x_{0}\in Ker(f)$ luego $x\in x_{0}+\ker(f)=\tilde{H}$.
>>Reciprocamente si $x\in \tilde{H}$ entonces $x=x_{0}+z$ con $z\in \ker(f)$ entonces $f(x)=f(x_{0})=\gamma$ osea $x\in H$  

>[!Theorem] 
>$W\subseteq X$ subespacio. Entonces $W$ es hiperplano que pasa por 0 sii $W\neq X$ y $X=W\bigoplus Sp\{ y \}$ para cualquier $y\in X\setminus W$
>>[!Proof]-
>>$(\Rightarrow)$ 
>>1. Supongamos $W$ hiperplano que pasa por $0$ $(W=Ker(f))$. Como $f \not\equiv 0$ existe $y\in X$ con $f(y)\neq 0$ 
>>Osea existe $y\in X\setminus W$ entonces $X\neq W$ 
>>4. Para $x\in X$ escribo $x=x-\beta y+\beta y$ con $\beta= \frac{f(x)}{f(y)}$
>>5. Como $f(x-\beta y)=0$ entonces $x-\beta y\in Ker(f)=W$
>>6. Entonces $x\in Sp\{ y \}+Ker(f)=Sp\{ y \}+W$ y ademas $W\cap Sp\{ y \}=\{ 0 \}$
>>7. Entonces $X=W\bigoplus Sp\{ y \}$ 
>>
>>$(\Leftarrow)$ 
>>1. Si $X=W\bigoplus Sp\{ y \}$ dado $x\in X$ entonces $x=w+\alpha y$.
>>2. Definimos $f : X\rightarrow \mathbb{F}$ dada por $f(x)=\alpha$ es claro que es lineal y que $f\not\equiv 0$ y $Ker(f)=W$

## El segundo dual, espacios reflexivos, opradores duales

>[!Remark]
>Sea $X$ normado entonces sabemos que $X'$ es Banach y tambien $X''$ es Banach

>[!proposition]
>Para cualquier $x\in X$ la aplicacion $F_{x}:X'\rightarrow\mathbb{F}$ dada por $F_{x}(f)=f(x)$ satisface que $F_{x}\in X''$ y $\lVert F_{x} \rVert=\lVert x \rVert$
>>[!Proof]-
>>1. Sean $\alpha ,\beta\in \mathbb{F}$ y $f,g\in X'$ entonces $F_{x}(\alpha f+\beta g)=(\alpha f+\beta g)(x)=\alpha f(x)+\beta g(x)=\alpha F_{x}(f)+\beta F_{x}(g)$ entonces $F_{x}$ es lineal
>>2. Ademas $\lvert F_{x}(f) \rvert=\lvert f(x) \rvert\leq \lVert x \rVert\lVert f \rVert=k\lVert f\rVert$ entonces $F_{x}$ es continua por lo tanto $F_{x}\in B(X',\mathbb{F})=X''$
>>3. $\lVert x \rVert=\sup \{ \lvert f(x) \rvert:\lVert f \rVert=1 \}=\sup \{ \lvert F_{x}(f) \rvert:\lVert f \rVert=1 \}=\lVert F_{x} \rVert$ (El ultimo igual de definicion de norma en $B(X',\mathbb{F})$) (El primer igual es por ($2.$) [[Teórico 10#^d1e653]])

^60cc7e

>[!Definition]
>Para $X$ normado definimos $J_{X}:X\rightarrow X''$ por $J_{X}x=J_{X}(x)=F_{X}$ osea $F_{X}(f)=J_{X}(x)(f)=f(x)\quad\forall x\in X\quad\forall f\in X'$. (Es claro que $J_{X}$ es lineal)

>[!Corollary]
>$J_{X}:X\rightarrow X''$ es una isometria (DUDA) . En particular:
>1. $X$ es isometricamente isomorfo a un subconjunto de $X''$ (de hecho a $J_{X}(X)$)
>2. $X$ es isometricamente isomorfo a un suconjunto denso de un Banach
>>[!Proof] DUDA 
>>1. Inyectiva es por ser una isometria. Sobreyectiva es por que $J_{X}(X)=Im(J_{X})$ 
>>2. Como $X''$ es Banach entonces $\overline{J_{X}(X)}$ es Banach (por ser cerrado en un Banach) y esta claro que $J_{X}(X)$ es denso en $\overline{J_{X}(X)}$    

^1f2693

>[!Remark]
>Si $X$ no es Banach entonces $J_{X}(X)$ no es Banach por que son isometricamente isomorfos por lo tanto  $J_{X}X\neq X''$. Pues $X''$ es Banach

>[!Definition] Reflexivo
>Si $J_{X}(X)=X''$ decimos que $X$ es reflexivo (Luego normado y reflexivo entonces Banach). 
>Osea $X$ reflexivo sii $\forall \psi\in X''\quad\exists x_{\psi}\in X$ tal que $\psi = J_{X}(x_{\psi})$. 
>(Analogamente $\psi (f)=J_{X}(x_{\psi})(f)=f(x_{\psi})\quad\forall f\in X'$)
>(Analogamente si $J_{X}$ es sobre??)

^5bf92d

>[!Theorem] DUDA
>- (a)  Si $X$ es normado con $\dim X=n<\infty$ entonces $X$ es reflexivo
>- (b)  Si $H$ es Hilbert entonces $H$ es reflexivo 
>>[!Proof]-
>>(a)  
>>1. Como dimension de $X$ es finita sabemos que $\dim X=\dim X'=\dim X''$ (DUDA Por teorema pasado cual?? ) y como $J_{X}:X\rightarrow X''$ lineal e inyectiva (por ser isometria) entonces es sobre
>>
>>(b) 
>>1. Por [[Teórico 7#^6296e5]] tenemos que $T_{\mathcal{H}}:\mathcal{H}\rightarrow \mathcal{H}'$ dada por $T_{\mathcal{H}}(y)=f_{y}$ con $f_{y}(x)=(x,y)$ es biyeccion. Y $\mathcal{H}'$ es Hilbert con $$(T_{\mathcal{H}}(z),T_{\mathcal{H}}(y))_{\mathcal{H}'}=(y,z)_{\mathcal{H}}\quad(I)$$
>>2. Ahora como $\mathcal{H}'$ es Hilbert entonces re aplicando teorema $T_{\mathcal{H}'}:\mathcal{H}'\rightarrow\mathcal{H}''$ dada por $T_{H'}(g)=\psi_{g}$ con $$T_{\mathcal{H}'}(g)(f)=\psi_{g}(f)=(f,g)_{\mathcal{H}'}\quad (II)$$ es biyeccion (y $\mathcal{H}''$ es Hilbert)
>>3. En particular si $f\in \mathcal{H}'$ y $\psi \in \mathcal{H}''$ entonces $\exists !x,y\in H$ tales que $f=T_{\mathcal{H}}x$ y $\psi=T_{\mathcal{H}'}(T_{\mathcal{H}}y)$ (Unicos por que [[Teórico 7#^6296e5]] nos dice que son biyectivas, para la parte de $\psi$ seria usar dos veces biyectividad)
>>4. Ahora dado $\psi \in \mathcal{H}''$ y $f\in \mathcal{H}'$ tenemos $$\begin{align} J_{\mathcal{H}}(y)(f)= f(y)&=(y,x)_{\mathcal{H}} & \text{(Por definición de $f$  )}\\
&=(T_{\mathcal{H}}(x),T_{\mathcal{H}}(y))_{\mathcal{H}'} &(\text{Por } (I))\\ 
&=(f,T_{\mathcal{H}}(y))_{\mathcal{H}'} & (\text{Por def de }f)\\
& =T_{\mathcal{H}'}(T_{\mathcal{H}}(y))(f) &(\text{Por } (II)) \\
&=\psi (f)&\forall f\in \mathcal{H}' \quad(\text{Por def de }\psi)\end{align} $$
>>1. Osea $\psi = J_{\mathcal{H}}(y)$. Luego $J_{\mathcal{H}}$ es sobreyectiva (DUDA Por?? si y=0 no es sobre) entonces $\mathcal{H}$ es [[Teórico 12#^5bf92d]]

>[!Theorem]
>$X$ Banach entonces $X$ reflexivo sii $X'$ reflexivo ($\iff J_{X'}:X'\rightarrow X'''$ es sobre)
>>[!Proof]-
>>$(\Rightarrow)$ 
>>1. Sea $\rho\in X'''$ como $\rho :X''\rightarrow\mathbb{F}$ y $J_{X}:X\rightarrow X''$. Entonces $f=\rho \circ J_{X}\in X'$ pues ambos son lineales y continuas.
>>3. Sea $\psi \in X''$ como $X$ reflexivo $\exists x\in X$ tal que $\psi=J_{X}(x)$ osea $\psi(f)=(J_{X}x)(f)=f(x)\quad\forall f\in X'$
>>4. $(J_{X'}(f))(\psi)=\psi(f)=f(x)=\rho\circ J_{X}(x)=\rho(\psi)$ (Recordar $J_{X'}(f)$ es el funcional evaluar en $f$)
>>5. Osea $\rho = J_{X'}(f)$ con lo cual $J_{X'}$ es sobre entonces $X'$ es reflexivo
>>
>>$(\Leftarrow)$
>>1. Supongamos $X'$ reflexivo pero $\exists \tilde{x}\in X''\setminus J_{X}(X)$. (Osea negar que $X$ sea refelxivo)
>>2. $X$ es Banach y entonces $J_{X}(X)$ tambien (pues son isomorfos [[Teórico 12#^1f2693]]) y $J_{X}(X)\subseteq X''$ que es Banach y por lo tanto es $J_{X}(X)$ es cerrado (El $X''$ es metrico? Si es Banach es normado entonces metrico )
>>3. Por [[Teórico 10#^3a0090]] ($W=J_{X}(X)$ y tenemos $\tilde{x}\in X''\setminus J_{X}(X)$ y cumple $\delta >0$ por que $J_{X}(X)$ es cerrado) Existe $k\in X'''$ tal que $k(\tilde{x})=\delta\neq 0$ y $k(J_{X}(x))=k|_{J_{X}(X)}=0 \quad\forall x\in X$
>>4. Ademas como $X'$ es reflexivo $J_{X'}:X'\rightarrow X'''$ es sobre en particular $\exists g\in X'$ tal que $k=J_{X'}(g)$ osea $k(\psi)=(J_{X'}(g))(\psi)=\psi(g)\quad\forall \psi\in X''$ (Recordar $J_{X'}(f)$ es el funcional evaluar en $f$)
>>5. Luego $g(x)=(J_{X}(x))(g)=k(J_{X}(x))=0\quad\forall x\in X$. osea $g\equiv 0$.
>>6. Pero como $\tilde{x}\in X''$ por $4.$ tenemos $\tilde{x}(g)=k(\tilde{x})\neq 0$ (esto ultimos por $3.$). Absurdo por que $g\equiv 0$ y $\tilde{x}$ es funcional lineal 

^ba33bb

>[!Theorem]
>$X$ reflexiva, $Y\subseteq X$ subespacio vectorial cerrado entonces $Y$ reflexivo
>>[!Proof]-
>> 1. $Y$ reflexiva $\iff \forall \psi\in Y''$ existe $y_{\psi}\in Y$ tal que $J_{Y}(y_{\psi})=\psi$ osea $$\psi(g)=J_{Y}(y_{\psi})(g)= g(y_{\psi})\quad\forall g\in Y' \quad (a)$$
>> 2. Como [[Teórico 10#^8c080d]] dice que $g=f|_{Y}$ para algun $f\in X'$. (osea para toda $g\in Y'$ existe extension $f\in X'$ por ser extension $f|_{Y}=g$)
>> 3. Entonces $(a)$ es equivalente a ver que dado un $\psi \in Y''$ existe $y_{\psi}\in Y$ tal que $$(I)\quad f|_{Y}(y_{\psi})=\psi(f|_{Y})\quad\forall f\in X'$$
>> 4. Definimos $\phi:X'\rightarrow\mathbb{F}$ dada por $$(II)\quad\phi (f)=\psi(f|_{Y})$$
>> 5. Resulta que $\lvert \phi(f) \rvert=\lvert \psi(f|_{Y}) \rvert\leq \lVert \psi \rVert\lVert f|_{Y} \rVert= \lVert \psi \rVert\lVert f \rVert=k\lVert f \rVert$ osea es continua ergo $\phi\in X''$
>> 6. Como $X$ reflexiva $\exists x_{\phi}\in X$ tal que $J_{X}(x_{\phi})=\phi$ osea $$(III)\quad f(x_{\phi})=\phi(f)\quad\forall f\in X'$$
>> 7. Veamos que $x_{\phi}\in Y$. Supongamos que no. Como $Y$ cerrado por [[Teórico 10#^3a0090]] existe $h\in X'$ tal que $h\equiv 0$ en $Y$ y $h(x_{\phi})\neq 0$ pero $0\neq h(x_{\phi})=\phi(h)=\psi(h|_{Y})=0$ (la igualdad del medio vale por $(II),(III)$ y la ultima por ser $\phi$ lineal y $h|_{Y}\equiv 0$)
>> 8. Pero entonces dicho $x_{\phi}\in Y$  que estabamos buscando. Por que usando $(II),(III)$ $$f|_{Y}(x_{\phi})=f(x_{\phi})=\phi(f)=\psi(f|_{Y})\quad\forall f\in X'$$ 

^c591f7

>[!Definition] Anuladores
>$X$ normado $\emptyset \neq W\subseteq X$ y $\emptyset\neq Z\subseteq X'$ defino los anuladores de $W$ y $Z$ como
>$$W^{\circ}=\{ f\in X':f(x) =0\quad\forall x\in W \} $$
>$$^{\circ}Z=\{ x \in X:f(x) =0\quad\forall f\in Z \} $$

^e90f80

>[!Lemma]
>$X$ normado $\emptyset\neq W_{1}\subseteq W_{2}\subseteq X$ y $\emptyset\neq Z_{1}\subseteq Z_{2}\subseteq X'$ entonces
>1. $W_{2}^{\circ}\subseteq W_{1}^{\circ}\quad ^{\circ}Z_{2}\subseteq \ ^{\circ}Z_{1}$
>2. $W_{1}\subseteq ^{\circ}(W_{1}^{\circ})\quad Z_{1}\subseteq (^{\circ}Z_{1})^{\circ}$
>3. $W_{1}^{\circ},\ ^{\circ}Z_{1}$ son subespacios cerrados
>>[!Proof]
>>EJ

^03be79

>[!Theorem]
>$X$ normado $W\subseteq X$ subespacio cerrado $Z\subseteq X'$ subespacio cerrado entonces
>1. $W=\ ^{\circ}(W^{\circ})$
>2. Si $X$ reflexivo $Z=(^{\circ}Z)^{\circ}$
>>[!Proof]-
>>1. .
>>	1. Sabemos que $W\subseteq \ ^{\circ}(W^{\circ} )$ [[Teórico 12#^03be79]]
>>	2. Supongamos $p \in \ ^{\circ}(W^{\circ})\setminus W$ . 
>>	3. Como $W$ cerrado por [[Teórico 10#^3a0090]] existe $f\in X'$ tal que $f(p)\neq 0$ y $f\equiv 0$ en $W$ osea $f\in W^{\circ}$
>>	4. Entonces $p \not\in \ ^{\circ}(W^{\circ})$. Absurdo
>>2. .
>>	1. Sabemos $Z\subseteq (^\circ Z)^{\circ}$. Supongamos que $\exists g\in (^{\circ}Z)^{\circ}\setminus Z$ ($g\in X'$) 
>>	2. Como en parte $1.$ sabemos $\exists \psi \in X''$ tal que $(I) \ \psi(g)\neq 0$ y $\psi(f)=0\quad\forall f\in Z$
>>	3. Como $X$ reflexivo $\exists q\in X$ tal que $\psi=J_{X}(q)$ osea $(II)\ \psi(f)=f(q)\quad\forall f\in X'$
>>	4. Luego $f(q)=\psi(f)=0\quad\forall f\in Z$ osea que $q\in\ ^{\circ}Z$
>>	5. Pero $g(q)=\psi(g)\neq 0$ por $(I),(II)$ entonces $q\not\in (^{\circ}Z)^{\circ}$. Absurdo

^774fbc

>[!Lemma]
>Sea $V=\left\{  a=\{ a_{n} \}\in \ell^{1} : \sum^{\infty}_{n=1}(-1)^{n}a_{n}=0 \right\}$ y $c_{0}$ subsucesiones de $\ell^{\infty}$ que convergen a $0$. Sea $$T_{c_{0}}:\ell^{1}\rightarrow c_{0}'$$ dada por $T_{c_{0}}(a)=f_{a}$. Donde para $x=\{ x_{n} \}\in c_{0}$ sucede $f_{a}(x)=\sum^{\infty}_{n=1}a_{n}x_{n}$.
>Sea $Z=T_{c_{0}}(V)$ entonces $V$ y $Z$ son subespacios propios y cerrados de $\ell^{1}$ y $c_{0}'$ respectivamente y ademas $(^{\circ}Z)^{\circ}=c_{0}'(\supsetneq Z)$ y $T_{c_{0}}$ es isomorfismo
>>[!Proof]
>>queda pendiente $\mathbb{F}$ 

^0a50d4