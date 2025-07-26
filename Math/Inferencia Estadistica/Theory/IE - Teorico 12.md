>[!Theorem] Radon-Nikodym
>Sea $\Omega$ un conjunto con una $\sigma$-álgebra $\mathcal{F}$ y sean $\mu, \nu: \mathcal{F} \to [0, \infty]$ medidas $\sigma$-finitas.
>Entonces, las siguientes afirmaciones son equivalentes:
>- a) $\nu \ll \mu$
>- b) Existe una función $g: \Omega \to [0, \infty)$, $\mathcal{F}$-medible, tal que
>$$ \nu(A) = \int_A g \, d\mu \quad \forall A \in \mathcal{F} $$
>Si existe otra función $g': \Omega \to [0, \infty)$, $\mathcal{F}$-medible, que verifica $$\nu(A) = \int_A g' \, d\mu$$entonces $g=g'$ casi en todas partes respecto a $\mu$ (es decir, el conjunto $E = \{\omega \in \Omega \mid g(\omega) \ne g'(\omega)\}$ cumple que $\mu(E)=0$)
>La función $g$ obtenida se llama **densidad** o **derivada de Radon-Nikodym** de $\nu$ respecto a $\mu$, y se denota $g = \frac{d\nu}{d\mu}$.
>

^6dbb8f

>[!Definition] Variable absolutamente continua general
>En probabilidad se mencionan las v.a. absolutamente continuas. Se dice que una v.a. $X: \Omega \to \mathbb{R}$ es abs. cont. si existe una función $f_X$ (llamada densidad) tal que:
>$$ P(X \in A) = \int_A f_X(x) dx \quad \forall A \in \mathcal{B}(\mathbb{R}) $$
>Esta definición la podemos extender diciendo que una v.a. $X$ es absolutamente continua si su medida de probabilidad inducida $P_X$ es absolutamente continua respecto a la medida de Lebesgue $\mu_L$ ($P_X\ll\mu _{L}$), es decir, si existe una función $f$ tal que
>$$ P(X \in A) = P_{X}(A) =\int_A f d\mu_L \quad \forall A \in \mathcal{B}(\mathbb{R}) $$
>Notar $$P(X\in A)=P(X^{-1} (A))=\int_{X^{-1} (A)}dP$$  

^14c5c9

>[!Example] Ejemplo variable absolutamente continua discretas
>Dado $(\Omega, \mathcal{A}, P)$ un espacio de probabilidad y $X: \Omega \to \mathbb{R}$ una v.a. discreta. Es decir, existe un conjunto numerable $D=\{x_i\}_{i \in I}$ tal que $P(X \in D) = P(\cup_{i \in I} \{X=x_i\}) = 1$.
>Sea $\nu(A) = P_{X}(A)=P(X \in A)$. Entonces, para cualquier $A \in \mathcal{B}(\mathbb{R})$:
>$$\begin{align}\nu(A) & = P(X \in A) \\&= P(X \in A \cap D)\\& = P(X\in A\cap \cup_{i\in I}\{ X=x_{i} \})\\&=P(\cup_{i \in I}[X\in A\cap\{ X=x_{i}\}])\\&=\sum_{x_{i}\in A}P(X=x_{i})\end{align}$$
>La ultima igualdad vale por que  los eventos $\{X=x_i\}$ son disjuntos: $\nu(A) = \sum_{x_i \in A} P(X=x_i)$
>Si consideramos la medida de conteo $$\mu(A) = \begin{cases} \#A & \text{si A es finito} \\ \infty & \text{si no} \end{cases}$$podemos obtener $\nu(A) = P(X \in A) = \int_A g d\mu$, con $g(x)=P(X=x)$. Por lo tanto $P_{X}=\upsilon\ll\mu$ 

^1784d3

>[!Remark] Vieja esperanza equivalente a nueva esperenza
>Dado $(\Omega, \mathcal{F}, P)$ un espacio de probabilidad, entonces:
> - (i) Si $X: \Omega \to \mathbb{R}$ es una v.a. discreta, entonces
> $$ EX = \int_{\Omega} X dP = \sum_{x \in \text{Im}(X)} x P(X=x) $$
> donde usamos [[IE - Teorico 11#^6169bd]] y [[IE - Teorico 11#^671211]]
> - (ii) Si $X: \Omega \to \mathbb{R}$ es una v.a. absolutamente continua, entonces
> $$ EX = \int_{\Omega} X dP = \int_{\mathbb{R}} x f(x) \mu_L(dx) $$
> La derivación es la siguiente:
> Por definición, $EX = \int_{\Omega} X dP$. Por [[IE - Teorico 11#^b24583]] la integral se convierte en $\int_{\mathbb{R}} x dP_X$. Y como $P_X \ll \mu_L$ (la medida inducida es absolutamente continua con respecto a la medida de Lebesgue), la integral es igual a $\int_{\mathbb{R}} x f(x) d\mu_L(x)$.

^0d37bb

>[!Remark]
>Vamos camino a generalizar el concepto de probabilidad y esperanza condicional.

>[!Remark] Recordatorio
>1.  En un espacio de probabilidad $(\Omega, \mathcal{F}, P)$, para eventos $A, B \in \mathcal{F}$, la **probabilidad condicional** de A dado B se define como: $$ P(A|B) = \frac{P(A \cap B)}{P(B)}, \quad \text{si } P(B)>0 $$
>2. Si $P(A|B) = P(A) \implies A, B$ son independientes.
>3. La función ${} P(\cdot|B): \mathcal{F} \to[0,1] {}$ es una medida de probabilidad.
>4. Sean $X, Y: \Omega \to \mathbb{R}$ variables aleatorias discretas. Se podía definir la distribución de $X$ dado $Y=y$ como: $$ P(X \in \tilde{A} | Y=y) = \frac{P(\{X \in \tilde{A}\} \cap \{Y=y\})}{P(Y=y)} $$
>para todo $y \in \text{Im}(Y)$ tal que $P(Y=y)>0$.

>[!Remark]
>Podemos notar que la función
>$$ g(y) = \frac{P(\{X \in A\} \cap \{Y=y\})}{P(Y=y)} $$
>es una variable aleatoria discreta, concentrada en los valores $\{g(y_i)\}_{i \in I}$.
>La v.a. $g(Y): \Omega \to[0,1]$ está definida como
>$$ g(Y)(\omega)=g(Y(w)) = \frac{P(\{X \in A\} \cap \{Y=y\})}{P(Y=y)} $$
>con $y=Y(\omega)$, si $\omega \in \bigcup_{i \in I} \{Y=y_i\}$. Si $\omega$ no pertenece a dicha unión, entonces $g(Y)(\omega)=0$.
>(Podrían existir valores $y$ que no están en el soporte discreto de $Y$, pero el conjunto $\{\omega \mid Y(\omega)=y\}$ tendría medida 0).

>[!Remark]
> Más aún, observar que para $A, G \in \mathcal{B}(\mathbb{R})$: $$\begin{align}P(\{X \in A\} \cap \{Y \in G\}) & = P(\{X \in A \cap Y \in G\} \cap \bigcup_{i \in I}\{Y=y_i\}) \\ &= P(\bigcup_{y_i \in G} \{X \in A \cap \{Y=y_i\}\}) \\& =\sum_{y \in \text{Im}(Y) \cap G} P(\{X \in A\} \cap \{Y=y\}) \\& = \sum_{y \in \text{Im}(Y) \cap G} P(X \in A | Y=y) P(Y=y) \\ & = \sum_{y \in \text{Im}(Y)} I_G(y) P(X \in A | Y=y) P(Y=y)\end{align}$$
>Esta última expresión es la esperanza con respecto a la variable $Y$ de la función $$I_G(Y) P(X \in A | Y)(w)=I_{G}(Y(w))P(X\in A|Y=Y(w))$$
>Por lo tanto $$P(\{X \in A\} \cap \{Y \in G\}) = E_Y[I_G(Y) P(X \in A | Y)]$$
>Si $G=\mathbb{R}$, entonces $P(X \in A) = E_Y[P(X \in A | Y)]$.

>[!Remark]
>¿Cómo el ejemplo anterior induce un concepto más general de probabilidad y esperanza condicional?

>[!Definition] Probabilidad condicional general
>Sea $(\Omega, \mathcal{F}, P)$ un espacio de probabilidad y sea $\mathcal{G} \subseteq \mathcal{F}$ una $\sigma$-álgebra contenida en $\mathcal{F}$. Sea la medida $\nu_A: \mathcal{G} \to[0,1]$ definida como: $$ \nu_A(G) = P(A \cap G) \quad \text{con } A \in \mathcal{F} \text{ fijo} $$
>Considerando los espacios de medida $(\Omega, \mathcal{F}, P)$ y $(\Omega, \mathcal{G}, \nu_A)$. 
>Notemos que si $G \in \mathcal{G}$ y $P(G)=0$ entonces $P(A \cap G) = 0$ (ya que $A \cap G \subseteq G$) por lo tanto $\nu_A(G) = 0$ mostrando que $\nu_A \ll P$
>Luego, por [[IE - Teorico 12#^6dbb8f]] existe una función $f_A: \Omega \to [0, \infty)$, que es $\mathcal{G}$-medible, tal que
>$$ \nu_A(G) = \int_G f_A dP\quad\forall G\in \mathcal{G} $$
>o sea,
>$$ P(A \cap G) = \int_G f_A dP = \int_{\Omega} 1_G f_A dP = E[1_G f_A] $$
>
>$f_A$ se denomina una **versión de la probabilidad condicional de A dado $\mathcal{G}$**. 
>Notar que [[IE - Teorico 12#^6dbb8f]] nos dice que esta funcion va a estar igualmente definida para cualquier $G\in \mathcal{G}$  (esta versión es única casi en todas partes).
>Notación: $P(A|\mathcal{G}) := f_A$

^536220

>[!Definition] Probabilidad condicional en el contexto de una variable aleatoria
>El uso de la palabra "probabilidad" surge del resultado siguiente:
>En un espacio de probabilidad $(\Omega, \mathcal{F}, P)$, sea $\mathcal{G}$ una sub-$\sigma$-álgebra de $\mathcal{F}$. Sea $$X: (\Omega, \mathcal{F}) \to (\mathbb{X}, \mathcal{B})$$una función medible (una variable aleatoria), donde $\mathcal{B}$ es una $\sigma$-álgebra en el espacio de llegada $\mathbb{X}$. (Es decir, la preimagen $X^{-1}(B) \in \mathcal{F}$ para todo $B \in \mathcal{B}$)
>Entonces, para cada $B \in \mathcal{B}$, definimos la **probabilidad condicional de que X pertenezca a B, dada la $\sigma$-álgebra $\mathcal{G}$** como:
>$$ P(X \in B \  | \ \mathcal{G}) := P(X^{-1}(B) \ |\ \mathcal{G})=f_{X^{-1}(B)} $$
>
>Si la variable aleatoria $X$ es suficientemente regular ("nice"), entonces se cumple que:
> - i) Para todo $B \in \mathcal{B}$, $P(X \in B\ |\ \mathcal{G})$ es una versión de la probabilidad condicional del evento $\{X \in B\}$ dado $\mathcal{G}$. Osea $P(X \in B\ |\ \mathcal{G})=f_{X^{-1}(B)}$. Notar ademas, que es una variable aleatoria. 
> - ii) Salvo en un conjunto $E \subseteq \Omega$ de probabilidad cero, la función $P(X \in \cdot\ |\ \mathcal{G})(\omega): \mathcal{B} \to[0,1]$ es una medida de probabilidad para cada $\omega \notin E$.

^e9ba56

>[!Definition] Espacio nice
>Un espacio medible $(\mathbb{X}, \mathcal{B})$ se dice **"nice"** si existe una función $\varphi: (\mathbb{X}, \mathcal{B}) \to (\mathbb{R}, \mathcal{B}(\mathbb{R}))$ medible y con inversa medible.
>Por ejemplo $(\mathbb{R}^d, \mathcal{B}(\mathbb{R}^d))$ es nice.

^776107

>[!Remark] Esperanza condicional discretas antigua
>Si recordamos el caso de dos v.a. discretas $X$ e $Y$, la **esperanza condicional de $X$ dado $Y=y$** se definía como:
>$$ E(X|Y=y) = \sum_{x \in \text{Im}(X)} x P(X=x|Y=y) $$

>[!Remark]
>Vamos a definir la esperanza condicional de una forma aparentemente independiente de la probabilidad condicional, que surge a partir del siguiente teorema

>[!Theorem] Esperanza condicional general
>Sea $(\Omega, \mathcal{F}, P)$ un espacio de probabilidad y $\mathcal{G} \subseteq \mathcal{F}$ una sub-$\sigma$-álgebra. Sea $X: \Omega \to \mathbb{R}$ una v.a. tal que $E|X| < \infty$. Entonces existe una v.a. $Y: \Omega \to \mathbb{R}$ que es $\mathcal{G}$-medible, tal que:
>- i) $Y$ es integrable ($E|Y| < \infty$).
>- ii) Para todo $G \in \mathcal{G}$ se cumple:
>$$ \int_G X dP = \int_G Y dP $$
>o sea,
>$$ E(1_G X) = E(1_G Y) \quad \forall G \in \mathcal{G} $$
>Si existe otra $Y': \Omega \to \mathbb{R}$ $\mathcal{G}$-medible tal que i) y ii) se cumplen, entonces $P(Y \ne Y')=0$ (Sin demostración).
>Dicha función $Y$ se denomina *una versión de la esperanza condicional dado $\mathcal{G}$* y se denota:
>$$\mathbb{E}(X \mid \mathcal{G})$$

^2d397e

>[!Proposition] Ley de expectativa iterada
>$$E(X)=E(E(X|\mathcal{G}))$$
>>[!Proof]-
>>1. Como $\mathcal{G}$ es $\sigma$-algebra sabemos que $\Omega\in \mathcal{G}$. Entonces por definicion cuando tomamos $\mathcal{G} = \Omega$ se cumple que $$\int_\Omega X \, d\mathbb{P} = \int_\Omega \mathbb{E}(X \mid \mathcal{G}) \, d\mathbb{P}$$
>>2. Mostrando que $$\mathbb{E}(X) = \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))$$

^f0b155

>[!Proposition] Esperanza condicional igual a proba condicional
>Si $X=1_A$ para algún $A \in \mathcal{F}$, entonces $E(X|\mathcal{G})=P(A|\mathcal{G})$. 
>>[!Proof]-
>>$$\int_{G}X dP=\int_{G}1_{A}dP=P(A\cap G)=\int_{G}f_{A}dP\quad\forall G\in \mathcal{G}$$
>>Entonces ${} f_{A}:=P(A|\mathcal{G}) {}$ cumple las propiedades del [[IE - Teorico 12#^2d397e]] luego por unicidad $$P(A|\mathcal{G})=E(X|\mathcal{G})$$
>>Ademas si $X=1_{Y^{-1}(B)}$. $$ P(Y \in B \  | \ \mathcal{G}) := P(Y^{-1}(B) \ |\ \mathcal{G})=E(1_{Y^{-1}}(B)|\mathcal{G}) $$    

^9e3b6b

 



