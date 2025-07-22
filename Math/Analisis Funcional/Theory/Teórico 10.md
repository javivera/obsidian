>[!Definition]
>$X$ espacio vectorial $W\subseteq X$ sub espacio y $f_{W}:W\rightarrow\mathbb{F}$ funcional lineal. Entonces un funcional lineal $f_{X}:X\rightarrow\mathbb{F}$ se dice extension de $f_{W}$ si $f_{W}(w)=f_{X}(w)\quad\forall w\in W$
>

>[!Definition] Funcional sublineal
>$X$ espacio vectorial real $p : X\rightarrow \mathbb{R}$ se dice funcional *sublineal* en $X$ si:
>1. $p(x+y)=p(x)+p(y)$
>2. $p(\alpha x)=\alpha p(x)\quad\forall \alpha\geq 0, x\in X$

^dafca5

>[!Remark]
>1. $f : X\rightarrow \mathbb{R}$ lineal entonces sublineal (probar que no vale la vuelta)
>2. $f : X\rightarrow \mathbb{R}$ lineal entonces $p(x)=\lvert f(x) \rvert$ es sublineal (probar que no es seminorma)
>3. Si $X$ es normado $\lVert \cdot \rVert:X\rightarrow\mathbb{R}$ es sublineal (probar que es seminorma)
>4. $X=\mathbb{R}^{2}$ entonces $p(x,y)=\lvert x \rvert+y$ es sublineal (probar que no es seminorma)

>[!Remark]
>$p$ sublineal entonces $p(0)=0$. En particular 
>1. $p(0)\leq p(x)+p(-x)$ entonces $-p(-x)\leq p(x)$. 
>2. Ademas $p(y)\leq p(y-x)+p(x)$ y $p(x)\leq p(x-y)+p(y)$. Entonces $$-p(y-x)\leq p(x)-p(y)\leq p(x-y)$$
>3. $p$ no tiene por que ser positiva/no negativo. Pero si $p$ es par entonces usando $1.$ $$p(x)\geq 0 \quad\forall x\in X $$ En tal caso usando $2.$ $$\lvert p(x)-p(y) \rvert\leq p(x-y)$$

>[!Theorem] Hahn-Banach sobre $\mathbb{R}$
>$X$ espacio vectorial $p : X\rightarrow \mathbb{R}$ [[Teórico 10#^dafca5]]. Supongamos $\exists W\subseteq X$ subespacio y $f_{W}:W\rightarrow\mathbb{R}$ lineal tal que $f_{W}(w)\leq p(w)\quad\forall w\in W$ 
>Entonces $\exists f_{X}:X\rightarrow\mathbb{R}$ extension de $f_{W}$ tal que $f_{X}(x)\leq p(x)\quad\forall x\in X$
>>[!Proof]
>> Se prueba mas adelante

^2b57ba

>[!Remark]
>Notacion: Si $V$ es $\mathbb{C}$ espacio vectorial escribimos $V_{\mathbb{R}}$ al espacio vectorial real restringiendo los escalares. Si ademas $V$ normado entonces $V_{\mathbb{R}}$ normado con la misma norma (ejercicio)

>[!Lemma]
>Sea $g : V\rightarrow \mathbb{C}$ funcional lineal entonces $\exists ! \ g_{\mathbb{R}}:V_{\mathbb{R}}\rightarrow \mathbb{R}$ funcional lineal tal que $$g(v)=g_{\mathbb{R}}(v)-ig_{\mathbb{R}}(iv)\quad\forall v\in V \tag{1}$$
>Reciprocamente si $g_{\mathbb{R}}:V_{\mathbb{R}}\rightarrow\mathbb{R}$ es lineal entonces $g:V\rightarrow\mathbb{C}$ dada por (1) es funcional lineal.
>Ademas si $V$ normado $$g\in V'\iff g_{\mathbb{R}} \in (V_{\mathbb{R}})'$$En tal caso $\lVert g \rVert=\lVert g_{\mathbb{R}} \rVert$. 
>(Notar que $g_{\mathbb{R}}(v)=g(v)\quad\forall v\in V$ con $g(v)\in \mathbb{R}$)
>>[!Proof]-
>>(Existencia)
>>1. Dado $v\in V$ escribimos $g(v)=g_{\mathbb{R}}(v)+ig_{I}(v)$ 
>>2. Con $g_{\mathbb{R}}(v)=Re(g(v))$ y$g_{I}(v)=Im(g(v))$ que son funcionales lineales  
>>5. $g_{\mathbb{R}}(iv)+ig_{I}(iv)=g(iv)=ig(v)=ig_{\mathbb{R}}(v)-g_{I}(v)$
>>6. $-g_{\mathbb{R}}(iv)=g_{I}(v)$ (igualando partes reales)
>>7. Reemplazando $g(v)=g_{\mathbb{R}}(v)-ig_{\mathbb{R}}(iv)$
>>
>>(Unicidad) Ejercicio 
>>(Reciproca) Ejercicio
>>
>>($V$ normado)
>>($\Rightarrow$)
>>1. $\lvert g(v) \rvert^{2}=\lvert g_{\mathbb{R}}(v) \rvert^{2}+\lvert g_{\mathbb{R}}(iv) \rvert^{2}\geq\lvert g_{\mathbb{R}}(v) \rvert^{2}$ (Modulo de numero complejo)
>>2. Luego si $g\in V'$ usando lo de arriba $\lvert g_{\mathbb{R}}(v) \rvert\leq \lvert g(v) \rvert\leq \lVert g \rVert\lVert v \rVert$
>>3. Usando supremo de $\lVert v \rVert=1$ llegamos a  $\lVert g_{\mathbb{R}} \rVert\leq \lVert g \rVert$ entonces $g_{\mathbb{R}}$ es continua ergo está en el dual
>>
>>($\Leftarrow$)
>> 1. Supongamos $g_{\mathbb{R}}\in (V_{\mathbb{R}})'$ y sea $\alpha(v)\in \mathbb{C}$ tal que $\lvert \alpha  \rvert=1$ y $\lvert g(v) \rvert=\alpha g(v)=g(\alpha v)$ 
>> 2. Entonces $g(\alpha v)\in \mathbb{R}$  
>> 3. Luego $\lvert g(v) \rvert=g(\alpha v)=g_{\mathbb{R}}(\alpha v)\leq \lVert g_{\mathbb{R}} \rVert\lVert \alpha  v\rVert$  
>> 4. Usando supremo $\lVert g \rVert\leq \lVert g_{\mathbb{R}} \rVert$
>> 

^5efc35

>[!Lemma]
>Sean $X$ un $\mathbb{C}$ espacio vectorial con $p:X\rightarrow\mathbb{R}$ [[Teórico 9#^c27268]]. Supongo existe $W\subseteq X$ subespacio $f_{W}:W\rightarrow\mathbb{C}$ lineal con $$\lvert f_{W}(w) \rvert\leq p(w)\quad\forall w\in W$$
>Supongo $f_{W,\mathbb{R}}:W_{\mathbb{R}}\rightarrow\mathbb{R}$ definida en [[Teórico 10#^5efc35]] tiene una extension $f_{X,\mathbb{R}} : X_{\mathbb{R}}\rightarrow \mathbb{R}$ tal que $$\lvert f_{X,\mathbb{R}}(x) \rvert \leq p(x)\quad\forall x\in X_{\mathbb{R}}$$ 
>Entonces $f_{W}$ tiene una extension $f_{X}:X\rightarrow\mathbb{C}$ tal que $$\lvert f_{X}(x) \rvert \leq p(x)\quad\forall x\in X$$
>>[!Proof]-
>>1. Podemos escribir $f_{W}=f_{W,\mathbb{R}}-if_{W,\mathbb{R}}$
>>2. Como $f_{W,\mathbb{R}}$ es extensible (por hipotesis) tenemos $f_{X}=f_{X,\mathbb{R}}-if_{X,\mathbb{R}}$ extension de $f_{W}$    
>> 
>> (Desigualdad)
>>1. $x\in X$ con $f_{X}(x)\neq 0$ y $\alpha \in \mathbb{C}$ con $\lvert \alpha  \rvert=1$ tal que $\lvert f_{X}(x) \rvert=\alpha f_{X}(x)=f_{X}(\alpha x)\in \mathbb{R}$
>>2. $\lvert f_{X}(x) \rvert= f_{X}(\alpha x)=f_{X,\mathbb{R}}(\alpha x)\leq p(\alpha x)=\lvert \alpha  \rvert p(x)=p(x)$ 

^b346de

>[!Theorem] Hahn-Banach General
>Sea $X$ espacio vectorial $p : X\rightarrow \mathbb{R}$ [[Teórico 9#^c27268]] $W\subseteq X$ subespacio y $f_{W}:W\rightarrow\mathbb{F}$ funcional lineal tal que $\lvert f_{W}(w) \rvert\leq p(w)\quad\forall w\in W$ entonces 
>$$\exists \ f_{X} :X\rightarrow \mathbb{F}\quad\text{ extension de } f_{W}$$ tal que $$\lvert f_{X}(x) \rvert \leq p(x)\quad\forall x\in X$$
>>[!Proof]-
>>1. Si $\mathbb{F}=\mathbb{R}$ aplicamos [[Teórico 10#^2b57ba]] (Seminorma implica sublineal) y obtenemos $f_{X}(x)$ que cumple $f_{X}(x)\leq p(x)$    
>>2. Como $p$ es seminorma es par entonces $-f_{X}(x)=f_{X}(-x)\leq p(-x)=p(x)$ luego $-p(x)\leq f_{X}(x)$ 
>>4. Entonces $\lvert f_{X}(x) \rvert\leq p(x)$
>>5. Si $\mathbb{F}=\mathbb{C}$. Existe $f_{W,\mathbb{R}} : W_{\mathbb{R}}\rightarrow \mathbb{R}$ dado por [[Teórico 10#^5efc35]] con $f_{W}(w)=f_{W,\mathbb{R}}(w)-if_{W,\mathbb{R}}(iw)\quad\forall w\in W$
>>6. $f_{W,\mathbb{R}}(w) \leq \lvert f_{W,\mathbb{R}} (w)\rvert \leq \lvert f_{W}(w) \rvert\leq p(w)\quad\forall w\in W$ 
>>7. Luego por [[Teórico 10#^2b57ba]] existe extension $f_{X,\mathbb{R}}:X_{\mathbb{R}}\rightarrow\mathbb{R}$ con $f_{X,\mathbb{R}}(x)\leq p(x)\quad\forall x\in X_{\mathbb{R}}$
>>8. Usando nuevamente que $p$ es par por ser serminorma obtenemos $-p(x)\leq f_{X,\mathbb{R}}$
>>9. Por lo tanto $\lvert f_{X,\mathbb{R}} \rvert \leq p(x)$  
>>10. Entonces por [[Teórico 10#^b346de]] $f_{W}$ tiene extension que cumple $\lvert f_{X} \rvert\leq p(x)$  

^065972

^055669
## Hahan Banach en normado

>[!Lemma] Extensiones en general
>$X$ un $\mathbb{R}$ espacio vectorial $W\subseteq X$, $p:X\rightarrow\mathbb{R}$ sublineal y $f_{W}:W\rightarrow\mathbb{R}$ lineal tal que $$\lvert f_{W}(x) \rvert\leq p(x)\quad\forall w\in W$$
>Sean $z_{1}\not\in W$ con $W_{1}=Sp\{ z_{1} \}\oplus W=\{ \alpha z_{1}+W : \alpha\in \mathbb{F},w\in W \}$. Entonces $$\exists \delta_{1}\in \mathbb{R}\quad\text{y}\quad f_{W_{1}} : W_{1}\rightarrow \mathbb{R}$$
>Tal que $$f_{W_{1}}(\alpha z_{1}+w)=\alpha\delta_{1}+f_{W}(w)\leq p(\alpha z_{1}+w)\quad \forall \alpha\in \mathbb{R}\quad\forall w\in W\quad (a)$$
>En particular $f_{W_{1}}$ es lineal y extension de $f_{W}$
>>[!Proof]-
>>1. $\forall u,v\in W$ es $f_{W}(u)+f_{W}(v)=f_{W}(u+v)\leq \lvert f_{W}(u+v) \rvert\leq p(u+v)\leq p(u-z_{1})+p(v+z_{1})$ (Por sublineal) 
>>2. entonces $f_{W}(u)-p(u-z_{1})\leq -f_{W}(v)+p(v+z_{1})$
>>3. Sea $\delta_{1}=\inf \{ -f_{W}(v)+p(v+z_{1}):v\in W \}>-\infty$ (2. Nos dice que esta acotado)
>>4. Entonces ahora definimos $f_{W_{1}}(\alpha z_{1}+w)=\alpha \delta_{1}+f_{W}(w)$
>>5. $-\delta_{1} +f_{W}(u)\leq p(u-z_{1})$ (Usando infimo en 2.)
>>6. $\delta_{1} +f_{W}(v)\leq p(v+z_{1})$ (Def de infimo)
>>7. Si $\alpha <0$ multiplicamos 4. por $-\alpha$ y escribiendo $w=-\alpha u$ obtenemos $(a)$
>>8. Si $\alpha >0$ multiplicamos 5. por $\alpha$ y escribiendo $w=\alpha v$ obtebemos $(a)$
>>9. Si $\alpha =0$ trivial
>>10. Entonces $f_{W_{1}}$ cumple la desigualdad 

^3226b6

>[!Theorem] Hahn Banach en normado
>$X$ normado $W\subseteq X$ subespacio entonces $\forall f_{W}\in W'\quad\exists f_{X}\in X'$ extension de $f_{W}$ tal que $\lVert f_{W} \rVert=\lVert f_{X} \rVert$
>>[!Proof]-
>> 1. Definimos $p(x)=\lVert f_{W} \rVert\lVert x \rVert$ es [[Teórico 9#^c27268]] en $X$. Trivial (Notar que esta bien definida para $x\in X$ )
>> 2. Ademas $\forall w \in W,w\neq 0$ sucede $\frac{1}{\lVert w \rVert}p(w)=p\left( \frac{w}{\lVert w\rVert} \right)=\lVert f_{W} \rVert\geq\left\lvert  f_{W}\left( \frac{w}{\lVert w \rVert} \right)  \right\rvert=\lvert f_{W}(w) \rvert \frac{1}{\lVert w \rVert}$ (Usando la def de $p$ de 1.) Entonces $\lvert f_{W}(w) \rvert\leq p(w)=\lVert f_{W} \rVert\lVert x \rVert$
>> 3. Entonces valen las hipotesis de [[Teórico 10#^065972]] por lo tanto $\exists f_{X}$ extension de $f_{W}$ tal que $\lvert f_{X}(x) \rvert\leq p(x)\quad\forall x\in X$
>> 4. Usando supremo de ambos lados $\lVert f_{X} \rVert\leq \lVert f_{W} \rVert$
>> 5. Ademas $\lVert f_{W} \rVert=\sup \{ \lVert f_{W}(w)\rVert:w\in W,\lVert w\rVert=1 \rVert \}\leq \{\lVert f_{X}(x)\rVert:x\in X,\lVert x \rVert=1\} =\lVert f_{X}\rVert$

^8c080d

>[!Theorem]
>$X$ normado $W\subseteq X$ subespacio. Supongamos $\exists x\in X$ tal que $\delta =\inf \{ \lVert x+w \rVert:w\in W \}>0$ entonces $$\exists f\in X' \quad\text{ tal que } \quad\lVert f \rVert=1\quad f(x)=\delta \quad f|_{W}\equiv 0$$
>>[!Proof]-
>>1. Sea $Y=Sp\{ x \}\bigoplus W$ definimos $f_{Y}:Y\rightarrow \mathbb{F}$ dada por $f_{Y}(\alpha x+w)=\alpha \delta$ 
>>	- (Notar que $\delta>0$ entonces $\exists x\not\in W$ si no $\lVert x+(-w) \rVert=\lVert x-w \rVert=0$ entonces $\delta=0$. Por lo tanto $f_{Y}$ esta bien def) (el $x$ queda fijo)
>>2. $\lvert f_{Y}(\alpha x +w) \rvert=\lvert \alpha  \rvert\delta \leq \lvert \alpha  \rvert\lVert x+\alpha^{-1}w \rVert=\lVert \alpha x+w \rVert$ (Notar que $\alpha^{-1}w \in W$ entonces la desigualdad vale por ser $\delta$ un infimo)
>>3. $\lVert f_{Y} \rVert=\sup \{ \lvert f_{Y}(y) \rvert :y\in Y,\lVert y \rVert=1\}=\sup \{ \lvert  f_{Y}(\alpha x+w)\rvert: \alpha x+w\in Y,\lVert \alpha x+w \rVert=1 \}$
>>4. Entonces usando 2. y 3. $\lVert f_{Y} \rVert\leq 1$
>>5. La otra desigualdad $\epsilon>0$ como $\delta$ es infimo $\exists \tilde{w}_{\epsilon}$ tal que $\delta\leq \lVert x+\tilde{w}_{\epsilon} \rVert\leq (1+\epsilon)\delta$
>>6. Sea $w=\alpha \tilde{w}_{\epsilon}$ con $\alpha \neq 0$
>>7. $$ \frac{\lvert f_{Y}(\alpha x+w) \rvert }{\lVert \alpha x+w \rVert }= \frac{\lvert \alpha  \rvert \delta}{\lvert \alpha  \rvert \lVert x+\alpha ^{-1} w \rVert }= \frac{\delta}{\lVert x+\alpha ^{-1} w \rVert }= \frac{\delta}{\lVert x+\tilde{w}_{\epsilon} \rVert } \geq \frac{1}{1+\epsilon}$$
>>8. Entonces $$\left\lvert  \frac{f_{Y}(\alpha x+w)}{\lVert \alpha x+w \rVert }  \right\rvert\geq \frac{1}{1+\epsilon}\quad\forall \epsilon\geq 0 \quad \text{ Entonces}\quad \left\lvert  \frac{f_{Y}(\alpha x+w)}{\lVert \alpha x+w \rVert }  \right\rvert\geq 1 \quad$$
>>9. Pero entonces $1\leq \left\lvert  f_{Y}\left( \frac{\alpha x+w}{\lVert \alpha x+w \rVert}\right) \right\rvert\in \{  \lvert f_{Y} (x)\rvert:\lVert x \rVert=1\}$ . Luego $f_{Y}(\alpha x+w)\geq\lVert \alpha x +w\rVert$ luego tomando supremo de ambos lados $\lVert f_{Y} \rVert\geq 1$
>>10. Por [[#^8c080d]] extiendo $f_{Y}$ a $f:X\rightarrow \mathbb{F}$ con $\lVert f \rVert=\lVert f_{Y} \rVert=1$ 
>>11. Y es claro que si $w \in W$ entonces $f(w)=f_{Y}(0.x +w)=0.\delta=0$ y entonces $f(x)=f_{Y}(1.x+0)=1.\delta=\delta$

^3a0090

>[!Corollary]
>Sea $X\neq \{ 0 \}$ normado, $x\in X$ fijo $x\neq 0$ entonces 
>- (a)  $\exists f\in X'$ tal que $\lVert f \rVert =1 \quad f(x)=\lVert x \rVert$
>- (b) $\lVert x \rVert=\sup \{ \lvert f(x) \rvert : f\in X',\lVert f \rVert=1\} =\sup A$
>- (c) Si $y\in X$ con $x\neq y$, $\exists f\in X'$ tal que $f(x)\neq f(y)$
>(En particular, $X$ normado, $x\neq 0$ entonces $X'\neq \{ 0 \}$)
>>[!Proof]-
>>(a) 
>>
>>1. Por [[Teórico 10#^3a0090]] usando $W=\{ 0 \}$
>>(b) 
>>
>>1.  Por (a)  $\sup A \geq \lVert x \rVert$
>>2. $\lvert f(x) \rvert\leq \lVert f \rVert\lVert x \rVert$ (Vale siempre truco de $\frac{x}{\lVert x \rVert}$) entonces $\sup \{\lvert f(x) \rvert:\lVert f \rVert=1\}\leq \lVert x \rVert$ 
>>
>>(c) 
>>1. $W=Sp\{ y \}$ y usando [[#^3a0090]] $\delta >0$ por que $\lVert -x+y \rVert\neq 0$ por que son distintos (suponiendo que $x \not\in Sp\{ y \}$)
>>2. Si no supusiera eso es trivial. Porque $y=\alpha x$ con $\alpha \neq1$  
>>3. Casi cualquier funcional sirve porque $f(x)\neq \alpha f(x) = f(\alpha x)=f(y)$

^d1e653

