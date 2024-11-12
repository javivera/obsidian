---
dateCreated: 2024-10-27,13:06
---
>[!Corollary]
>Si $A$ is a self-adjoint matrix with eigenvalues $\{\lambda_1, \lambda_2, \dots, \lambda_n\}$, then    $$\|A\| = \max\{|\lambda_1|, |\lambda_2|, \dots, |\lambda_n|\}$$
>>[!Proof]-
>>$\|A\| = r_{\sigma}(A) = \max\{|\lambda_1|, |\lambda_2|, \dots, |\lambda_n|\}$ por [[Teórico 15#^d51465]] (d) 
# Operadores positivos y proyecciones

>[!Definition] Operador Positivo
>Sea $\mathcal{H}$ un Hilbert complejo y $S\in B(\mathcal{H})$. $S$ se dice positivo si es auto adjunto y 
>$$(Sx,x)\geq0\quad\forall x\in \mathcal{H}$$

>[!Corollary]
>Si $\mathcal{H}$ Hilbert y $S\in B(\mathcal{H})$ es auto adjunto son equivalentes:
>- (a) $\sigma(S)\subseteq [0,\infty)$ 
>- (b) $(Sx,x)\geq0\quad\forall x\in \mathcal{H}$ 
>>[!Proof]-
>>1. (a)$\Rightarrow$(b) $0\leq \inf \{ \lambda:\lambda\in \sigma(S) \}\leq u\quad\forall u\in V(S)$ por [[Teórico 15#^d51465]] (e)  
>>2. Y si $u=(Sx,x)$ entonces $u\in V(S)$ por lo tanto $u\geq0$        
>>3. (b)$\Rightarrow$(a) $(Sx,x)\geq 0$ nos dice que si $y\in V(S)\subseteq \overline{V(S)}$ entonces $y=(Sx,x)\geq0$ entonces si $y\in \overline{V(S)}$ lo mismo $y\geq0$  
>>4. Entonces por [[Teórico 15#^e62686]] (Autoadjunta implica normal por def) tenemos si $y \in \sigma(S)$ entonces $y\in \overline{V(S)}$ entonces $y\geq0$             

^ea1bda

>[!Example]
>Let $H$ be a complex Hilbert space, let $R, S \in B(H)$ be positive, let $T \in B(H)$ and let $\alpha$ be a positive real number.
>- (a) 0 and $I$ are positive operators.
>- (b) $T^* T$ is positive.
>- (c) $R + S$ and $\alpha S$ are positive.
>>[!Proof]-
>>- (a) $I$ is self-adjoint by Example 6.23, and it is easy to show that 0 is self-adjoint. If $x \in H$, then $$(Ix, x) = (x, x) \geq 0 \quad \text{and} \quad (0x, x) = (0, x) = 0.$$ Hence 0 and $I$ are positive
>>- (b) $T T^*$ is self-adjoint by Lemma 6.26. If $x \in H$, then 
>>$$    (T^* T x, x) = (T x, T x) \geq 0.$$
>>Hence $T^* T$ is positive.
>>- (c) $R + S$ and $\alpha S$ are self-adjoint by Lemma 6.25. If $x \in H$, then 
>> $$((R + S) x, x) = (R x, x) + (S x, x) \geq 0$$
>>and $$((\alpha S) x, x) = \alpha (S x, x) \geq 0 $$
>>Hence $R + S$ and $\alpha S$ are positive.

>[!Definition]-
>Let $H$ be a complex Hilbert space, let $R, S, T \in B(H)$ be self-adjoint.
>- If $S$ is positive we write $S \geq 0$ or $0 \leq S$.
>- More generally, if $T - R$ is positive we write $T \geq R$ or $R \leq T$.

>[!Definition] Proyeccion Ortogonal
> Sea $\mathcal{H}$ un Hilbert complejo. La proyeccion ortogonal en $\mathcal{H}$ es una operador $P\in B(\mathcal{H})$ tal que
> $$P=P^{*} =P^{2}$$

>[!Example]
> Let $P : \mathbb{C}^3 \to \mathbb{C}^3$ be the linear transformation defined by $P(x, y, z) = (x, y, 0)$, for all $(x, y, z) \in \mathbb{C}^3$. Then $P$ is an orthogonal projection.
>>[!Proof]-
>>Since $\mathbb{C}^3$ is finite-dimensional, $P \in B(\mathbb{C}^3)$, and clearly $P^2 = P$. It follows from 
>>$$ (P(x, y, z), (u, v, w)) = x u + y v = ((x, y, z), P(u, v, w))$$
>>that $P$ is also self-adjoint. Hence, $P$ is an orthogonal projection.

^9a80dc

>[!Theorem]
>Sea $H$ un espacio de Hilbert complejo.
>- (a) Si $M$ es un subespacio lineal cerrado de $H$, existe una proyección ortogonal $P_M \in B(H)$ con rango $M$, núcleo $M^\perp$ y $\|P_M\| \leq 1$
>- (b) Si $Q$ es una proyección ortogonal en $B(H)$, entonces $\text{Im} Q$ es un subespacio lineal cerrado y $Q = P_{\text{Im} Q}$.
>>[!proof]-
>>(a)
>>1. Si $x \in H$ y $x = y + z$ donde $y \in M$ y $z \in M^\perp$ es la descomposición ortogonal, definimos $P_M : H \to H$ por $P_M(x) = y$. 
>>2. Nuestro objetivo es demostrar que $P_M$ es una proyección ortogonal y el primer paso es mostrar que $P_M$ es una transformación lineal. 
>>3. Sea $x_1, x_2 \in H$, con descomposiciones ortogonales $x_1 = y_1 + z_1$ y $x_2 = y_2 + z_2$, donde $y_1, y_2 \in M$ y $z_1, z_2 \in M^\perp$, y sea $\lambda, \mu \in \mathbb{C}$. 
>>4. Como $M$ y $M^\perp$ son subespacios lineales, $\lambda y_1 + \mu y_2 \in M$ y $\lambda z_1 + \mu z_2 \in M^\perp$, por lo que, por unicidad, la descomposición ortogonal de $\lambda x_1 + \mu x_2=(\lambda y_1 + \mu y_2) + (\lambda z_1 + \mu z_2)$.
>>5. Por lo tanto, $$ P_M(\lambda x_1 + \mu x_2) = \lambda y_1 + \mu y_2 = \lambda P_M x_1 + \mu P_M x_2.$$
>>6. Así que $P_M$ es una transformación lineal.
>>7. A continuación, mostramos que $P_M$ es acotada y auto-adjunta. Como $$\|P_M x\|^2 = \|y\|^2 \leq \|x\|^2$$
>>8. $P_M$ es acotada y $\|P_M\| \leq 1$. Además
>>$$(P_M x_1, x_2) = (y_1, y_2 + z_2) = (y_1, y_2)$$
>>Dado que $z_2 \in M^\perp$ y $y_1 \in M$
>>9. Luego $$(x_1, P_M x_2) = (y_1 + z_1, y_2) = (y_1, y_2)$$
>>1. Dado que $z_1 \in M^\perp$ y $y_2 \in M$.
>>2. Por lo tanto, $$(P_M x_1, x_2) = (x_1, P_M x_2)$$
>>3. Y así, $P_M$ es auto-adjunta.
>>8. Para todo $x \in H$ $$ (P_M)^2(x) = P_M(P_M x) = P_M y = P_M x$$
>>9. Dado que $y \in M$, por lo que $(P_M)^2 = P_M$. Por lo tanto, $P_M$ es una proyección ortogonal. 
>>11. Veamos que $P_M$ tiene rango $M$
>>12. Si $w \in M$ su descomposición ortogonal es $w = w + 0$, así que $P_M w = w$. 
>>13. Por lo tanto, $M \subset \text{Im} P_M$. Ademas $\text{Im} P_M \subset M$ por la definición de $P_M$. 
>>14. Así $\text{Im} P_M = M$. 
>>
>>10. Además, por [[Teórico 14#^592165]] tenemos $$\text{Ker} P_M = (\text{Im} P_M^*)^\perp = (\text{Im} P_M)^\perp = M^\perp.$$
>>
>>(b)
>>1. Sea $\mathcal{L} = Im Q$. Como $Q$ es una transformación lineal, $\mathcal{L}$ es un subespacio lineal.  
>>2. Para demostrar que $\mathcal{L}$ es cerrado, sea $\{y_n\}$ una secuencia en $\mathcal{L}$ que converge a $y \in H$. 
>>3. Como $y_n \in \text{Im} Q$, existe $x_n \in H$ tal que $y_n = Q x_n$ para todo $n \in \mathbb{N}$. 
>>4. Por lo tanto
>>$$\begin{align} y = &\lim_{n \to \infty} Q x_n \\ 
=& \lim_{n \to \infty} Q^2 x_n &  Q^2 = Q \\
=& Q \left( \lim_{n \to \infty} Q x_n \right) & \text{ (proyecciones continua por def)} \\
=& Q y \in \text{Im} Q=\mathcal{L} \\
\end{align}$$
>> y así, $\mathcal{L}$ es cerrado.
>>3. Si $v \in \mathcal{L}$, entonces $v = Qx$ para algún $x \in H$, por lo que $Qv = Q^2 x = Qx = v$
>>4. Si $w \in \mathcal{L}^\perp$ entonces, como $Q$ es auto-adjunta y $Q^2 w \in \mathcal{L}$, $$ \|Qw\|^2 = (Qw, Qw) = (w, Q^2 w) = 0$$
>>6. por lo que $Qw = 0$.
>>7. Por lo tanto, si $x \in H$ y $x = v + w$, donde $v \in \mathcal{L}$ y $w \in L^\perp$, tenemos $Qx =v$
>>8. así que $$P_{ImQ}x = v = Qx$$
>>9. Por def de $P_{ImQ}$. Por lo tanto $Q = P_{ImQ}$

^21a7c0

>[!Lemma]
>Si $H$ es un espacio de Hilbert complejo, $\mathcal{M}$ es un subespacio lineal cerrado de $H$ y $P$ es la proyección ortogonal de $H$ sobre $\mathcal{M}$, entonces $I - P$ es la proyección ortogonal de $H$ sobre $\mathcal{M}^\perp$.
>>[!Proof]-
>>1. Como $I$ y $P$ son autoadjuntos, también lo es $I - P$. Además, como $P^2 = P$,
>>$$
>> (I - P)^2 = I - 2P + P^2 = I - 2P + P = I - P
>>$$
>>2. por lo tanto, $I - P$ es una proyección ortogonal. 
>>3. Si $x \in H$ y $x = y + z$ es la descomposición ortogonal de $x$, donde $y \in \mathcal{M}$ y $z \in \mathcal{M}^\perp$ entonces $P(x) = y$ y por lo tanto $(I - P)(x) = x - y = z$. 
>>5. Por lo tanto, $I - P$ es la proyección ortogonal de $H$ sobre $\mathcal{M}^\perp$ por el [[#^21a7c0]] (b) 

>[!Remark]-
>Para la proyección ortogonal $P$ considerada en [[#^9a80dc]] el operador $I - P$ está dado por $(I - P)(x, y, z) = (0, 0, z)$ y es la proyección ortogonal sobre el subespacio $\{(0, 0, z) : z \in \mathbb{C}\}$

>[!Remark]-
>Si el subespacio lineal cerrado $\mathcal{M}$ tiene una base ortonormal, entonces es posible dar una fórmula para la proyección ortogonal sobre $\mathcal{M}$ en términos de esta base ortonormal. Esta fórmula está dada en [[#^f02ad5]] cuya prueba queda como ejercicio.

>[!Corollary]
>Si $H$ es un espacio de Hilbert complejo, $\mathcal{M}$ es un subespacio lineal cerrado de $H$, $\{e_n\}_{n=1}^J$ es una base ortonormal para $\mathcal{M}$, donde $J$ es un número entero positivo o $\infty$, y $P$ es la proyección ortogonal de $H$ sobre $\mathcal{M}$, entonces 
>$$P_{\mathcal{M}}x = \sum_{n=1}^J (x, e_n) e_n$$

^f02ad5

>[!Remark]-
>Por definición, si $P$ es una proyección ortogonal, entonces $P = P^2$. Si tomamos cualquier otro operador positivo $T$ definido en algún espacio de Hilbert, surge la pregunta de si existe un operador $R$ (en el mismo espacio) tal que $R^2 = T$.

>[!Definition]-
>Sea $H$ un espacio de Hilbert complejo y sea $T \in B(H)$. Una raíz cuadrada de $T$ es un operador $R \in B(H)$ tal que $R^2 = T$.

>[!Remark]-
>Aunque todos los números reales positivos tienen raíces cuadradas positivas, es quizás sorprendente que todos los operadores positivos tengan raíces cuadradas positivas. El siguiente lema será el paso clave para demostrar que los operadores positivos tienen raíces cuadradas.

>[!Lemma]
>Sea $H$ un espacio de Hilbert complejo, y sea $\mathcal{S}$ el espacio de Banach real de todos los operadores autoadjuntos en $B(H)$. Si $S \in \mathcal{S}$, entonces existe un $\Phi \in B(\mathcal{C}_{\mathbb{R}}(\sigma(S)), \mathcal{S})$ tal que:
>- (a) $\Phi(p) = p(S)$ siempre que $p$ sea un polinomio en $\mathcal{C}_\mathbb{R}(\sigma(S))$;  
>- (b) $\Phi(fg) = \Phi(f)\Phi(g)$ para todo $f, g \in \mathcal{C}_\mathbb{R}(\sigma(S))$
>>[!Proof]-
>> 1. Sea $\mathcal{P}$ el subespacio lineal de $\mathcal{C}_\mathbb{R}(\sigma(S))$ compuesto por todos los polinomios. 
>> 2. Definimos $\varphi : \mathcal{P} \to \mathcal{S}$ por $\varphi(p) = p(S)$. 
>> 3. Entonces, $\varphi$ es una transformación lineal tal que $\varphi(pq) = \varphi(p)\varphi(q)$ para todo $p \in \mathcal{P}$ por [[Teórico 6#^c381db]] 
>> 4. Además como $p(S)$ es autoadjunta ([[Teórico 15#^2e9773]]) usando [[Teórico 15#^d51465]] (e) y [[Teórico 15#^145b8c]] (a) 
>> $$ \|\varphi(p)\| = \|p(S)\| = r_\sigma(p(S)) = \sup\{|\mu| : \mu \in \sigma(p(S))\} = \sup\{|p(\lambda)| : \lambda \in \sigma(S)\} = \|p\|.$$
>> 6. Así, $\varphi$ es una isometría. 
>> 7. Como $S$ es un espacio de Banach real y $\mathcal{P}$ es denso en $\mathbb{C}_R(\sigma(S))$ existe $\Phi \in B(\mathbb{C}_\mathbb{R}(\sigma(S)), S)$ tal que $\Phi(p) = \varphi(p)$ por [[Teórico 5#^33d528]] (b) 
>> 8. Además, como $\varphi(pq) = \varphi(p)\varphi(q)$ para todo $p \in \mathcal{P}$ se sigue que $\Phi(fg) = \Phi(f)\Phi(g)$ para todo $f, g \in \mathbb{C}_R(\sigma(S))$ por la densidad de $\mathcal{P}$ en $\mathbb{C}_R(\sigma(S))$ y la continuidad de $\Phi$.

^e6333b

>[!Remark]- Notacion
> Sea $\mathcal{H}$, $\mathcal{S}$  y $S$ como en el Lema de arriba. Para cualquier $f \in \mathbb{C}_R(\sigma(S))$ ahora denotamos $\Phi(f)$ por $f(S)$. En otras palabras, el [[#^e6333b]] nos permite construir "funciones" de un operador autoadjunto $S$. Anteriormente habíamos definido $p(S)$ cuando $p$ es un polinomio. 
> El Lema [[#^e6333b]] extiende esto a $f(S)$ cuando $f \in \mathbb{C}_R(\sigma(S))$. Supongamos ahora que $\sigma(S) \subset [0, \infty)$ y $g : \sigma(S) \to \mathbb{R}$ está definida por $g(x) = x^{1/2}$. Entonces $g \in \mathbb{C}_R(\sigma(S))$ por lo que $g(S)$ tiene sentido. La notación está destinada a sugerir que $g(S)$ es una raíz cuadrada de $S$ y mostramos que esto es cierto en el siguiente teorema

>[!Theorem] DUDA
> Sea $\mathcal{H}$ un espacio de Hilbert complejo, sea $\mathcal{S}$ el espacio de Banach de todos los operadores autoadjuntos en $B(H)$ y sea $S \in \mathcal{S}$ positivo.
>- (a) Existe una raíz cuadrada positiva $R$ de $S$ que es el límite de una secuencia de polinomios evaluados en $S$
>- (b) Si $Q$ es cualquier raíz cuadrada positiva de $S$, entonces $R = Q$
>>[!Proof]-
>>(a) 
>>2. Como $S$ es positivo es autoadjunto entonces $\sigma(S) \subseteq [0, \infty)$ por [[#^ea1bda]]
>>3. Entonces $f : \sigma(S) \to \mathbb{R}$ y $g : \sigma(S) \to \mathbb{R}$ definidos por $$f(x) = x^{1/4}, \quad g(x) = x^{1/2} \quad \text{y} \quad j(x) = x$$
>>están en $\mathbb{C}_\mathbb{R}(\sigma(S))$. 
>>5. Sea $R=g(S)$ y $T=f(S)$ que son autoadjuntas 
>>(recordar [[#^e6333b]] $\Phi:\mathcal{C}_{\mathbb{R}}(\sigma(S))\to\mathcal{S}$ entonces $T=f(S)=\Phi(f)\in \mathcal{S}$)  
>>8. El conjunto $\mathcal{P}$ es denso en $\mathbb{C}_R(\sigma(S))$ entonces existen polinomios $g_{n}$ que convergen a $g$.
>>9. Luego $R=g(S)=\lim_{ n \to \infty }g_{n}(S)$ que son una secuencia de polinomios evaluados en $S$  
>>10. Además, por el [[#^e6333b]] 
>>$$R^2 = (g(S))^2 = g^2(S) = j(S) = S$$
>>por lo que $R$ es una raíz cuadrada de $S$ y $$T^2 = (f(S))^2 = f^2(S) = g(S) = R$$
>>por lo que $R$ es positivo. ($(Rx,x)=(T^{2}x,x)=(Tx,T^{*}x)=(Tx,Tx)=\lVert Tx \rVert^{2}\geq0\quad\forall x\in \mathcal{H}$) 
>>
>>(b) 
>>1. Como $$QS = QQ^2 = Q^2Q = SQ$$
>>2. Si $p$ es cualquier polinomio, entonces $Qp(S) = p(S)Q$ (DUDA) 
>>2. Entonces, como $R$ es el límite de una secuencia de polinomios en $S$ $$QR = RQ$$
>>3. Como $Q$ es positivo, $Q$ tiene una raíz cuadrada positiva $P$ por la parte (a). 
>>4. Sea $x \in H$ e $y=(R-Q)x$. Entonces como $R^2 = Q^2 = S$ y $T,P$ autoadjuntas 
>>$$\|T y\|^2 + \|P y\|^2 = (T^2 y, y) + (P^2 y, y) = ((R + Q)y, y) = ((R + Q)(R - Q)x, y) =((R^{2}-Q^{2})x,y)= 0$$
>>6. Por lo tanto $\lVert Ty \rVert=\lVert Py \rVert=0$ ergo $Ty = Py=0$ y por lo tanto $T^2 y = P^2 y = 0$. Entonces $Ry = Qy$ con lo cual $(R-Q)y=0$  
>>7. Luego $$\|(R - Q) x\|^2 = ((R - Q)^2 x, x) = ((R - Q)y, x) = 0$$
>>8. Finalmente $R = Q$.

