>[!Lemma] Lema de contracción
>Sean $(X, d)$ un espacio métrico completo y $F: X \to X$ una contracción, es decir, $d(F(x), F(y)) \leq K d(x, y)$, $0 \leq K < 1$. Existe un único punto fijo $p$, para $F$, es decir, $F(p) = p$. Además, $p$ es un atractor de $F$, es decir, $F^n(x) \to p$ cuando $n \to \infty$, para todo $x \in X$. $F^n(x)$ se define por $F(F^{n-1}(x))$.
>>[!Proof]-
>>1. **Unicidad:** sean $p$ y $p_1$ dos puntos fijos. $$d(p, p_1) = d(F(p), F(p_1)) \leq K d(p, p_1),$$
>>lo que implica que $d(p, p_1) = 0$, por lo tanto $p_1 = p$.
>>2. **Existencia:** sean $x \in X$ y $x_n = F^n(x)$. Probaremos que $\{x_n\}$ es una sucesión de Cauchy. En efecto, $d(x_{n+r}, x_n) \leq K^n d(x, x_r)$ y $$d(x, x_r) \leq d(x, F(x)) + d(F(x), F^2(x)) + \cdots + d(F^{r-1}(x), F^r(x)) \leq (1 + K + K^2 + \cdots + K^{r-1}) d(x, F(x)).$$
>>3. Por lo tanto, $d(x_{n+r}, x_n) \leq \frac{K^n}{1-K} d(x, F(x))$. Luego, $\{x_n\}$ es convergente. Probemos que $\lim x_n = p$ es punto fijo de $F$. De hecho: $$F(p) = F(\lim x_n) = \lim F(x_n) = \lim x_{n+1} = p.$$

^854ea9

>[!Corollary]
>Sea $X$ un espacio métrico completo. Si $F : X \to X$ es continua y, para algún $m$, $F^m$ es una contracción, entonces existe un único punto fijo $p$ para $F$. Además, $p$ es un atractor de $F$.
>>[!Proof]-
>>1. Sea $p$ el punto fijo atractor de $F^m$ dado por el [[#^854ea9]] 
>>2. Sea $n = mk + \ell$ con $0 \leq \ell < m$. 
>>3. Dado $x \in X$, como $p$ es atractor de $F^m$, tenemos (ya que $\{F^\ell(x)\}, 0 \leq \ell < m,$ es finito) $[F^m]^k(F^\ell(x)) \to p$, cuando $k \to \infty$. 
>>4. De la relación $F^n(x) = [F^m]^k(F^\ell(x))$ y del hecho de que cuando $n \to \infty$ se tiene $k \to \infty$, se sigue que $F^n(x) \to p$, cuando $n \to \infty$, es decir, $p$ es un atractor de $F$. 
>>5. Probaremos ahora que $F(p) = p$. En efecto $$p = \lim F^n(F(p)) = \lim F^{n+1}(p) = \lim F(F^n(p)) = F(\lim F^n(p)) = F(p).$$

^c6c861

>[!Theorem]
>Sea $f$ continua y Lipschitziana con respecto a la segunda variable en $\Omega = I_a \times B_b$ donde $I_a = \{t; |t-t_0| \leq a\}$, $B_b = \{x; |x-x_0| \leq b\}$. 
>Si $|f| \leq M$ en $\Omega$. Entonces existe una única solución de
>$$x' = f(t, x), \quad x(t_0) = x_0$$
>definida en $I_\alpha$ donde $\alpha = \min\{a, b/M\}$.
>>[!Proof]
>>1. Sea $X = C(I_\alpha, B_b)$ el espacio métrico completo de las funciones continuas $\varphi : I_\alpha \to B_b$, con la métrica uniforme
>>$$d(\varphi_1, \varphi_2) = \sup_{t \in I_\alpha} |\varphi_1(t) - \varphi_2(t)|.$$
>>2. Para $\varphi \in X$, sea $F(\varphi) : I_\alpha \to \mathbb{E}$ definida por $$F(\varphi)(t) = x_0 + \int_{t_0}^t f(s, \varphi(s))ds, \quad t \in I_\alpha.$$
>>3. Así, la correspondencia $\varphi \to F(\varphi)$ define una función $F$ con las siguientes propiedades:
>> - (a) $F(X) \subset X$;
>> - (b) $F^n$ es una contracción, para $n$ suficientemente grande.
>>
>>Es decir, $F : X \to X$ es una función tal que $F^n$ es una contracción. 
>>
>>4. Veamos (a) para todo $t \in I_\alpha$,
>>$$|F(\varphi)(t) - x_0| = \left| \int_{t_0}^t f(s, \varphi(s))ds \right| \leq  \int_{t_0}^t  | f(s, \varphi(s))ds |  \leq M |t-t_{0}| \leq M\alpha \leq b.$$
>>Esto prueba que ${} F(\varphi)(t) {}$ tiene imagen contenida en $B_{b}$. 
>>5. Ademas como $f$ es contoinua en $I_{a}$ (hipotesis) entonces es continua en $I_{\alpha }\subseteq I_{a} \}$ luego $s\mapsto f(s,\varphi(s))$ es continua $\forall s\in I_{\alpha }$ por lo tanto $F(\varphi)$ es continua. Probado (a). 
>>6. En cuanto a (b), para todo par $\varphi_1, \varphi_2 \in X$ y todo $n \geq 0$,
>>$$|F^n(\varphi_1)(t) - F^n(\varphi_2)(t)| \leq \frac{K^n|t - t_0|^n}{n!} d(\varphi_1, \varphi_2), \quad t \in I_\alpha,$$
>>donde $K$ es la constante de Lipschitz de $f$ (Con respecto a la segunda variable). Verificamos esta desigualdad por inducción en $n$. Para $n = 0$ es obvia. Supongamos que es válida para $k$. Entonces,
>>$$\begin{align}|F^{k+1}(\varphi_1)(t) - F^{k+1}(\varphi_2)(t)| &= |F(F^k(\varphi_1))(t) - F(F^k(\varphi_2))(t)| \\ & \leq  \int_{t_0}^t |f(s, F^k(\varphi_1)(s)) - f(s, F^k(\varphi_2)(s))|ds \\ & \leq  \int_{t_0}^t K|F^k(\varphi_1)(s) - F^k(\varphi_2)(s)|ds \quad \text{(Aca usé Lipschitz para la 2da entrada) }\\& \leq K  \int_{t_0}^t \frac{K^k(s - t_0)^k}{k!} d(\varphi_1, \varphi_2)ds \quad \text{(Hipotesis Inductiva) }\\ &= \frac{K^{k+1}|t - t_0|^{k+1}}{(k+1)!} d(\varphi_1, \varphi_2)\end{align}$$
>>Probando asi la desigualdad (Notar que $F^{k}(\varphi_{1})(s)\in B_{b}$ analogo $F^{k}(\varphi_{2})(s)$ por lo tanto puedo aplicar Lipschitz localmente por hipotesis) 
>>7. Luego usando supremo de ambos lados $$d(F^n(\varphi_1), F^n(\varphi_2)) \leq \frac{K^n\alpha^n}{n!} d(\varphi_1, \varphi_2)$$
>>8. Ahora notar que para $n$ grande, $K^n\alpha^n/n! < 1$, pues este es el término general de una serie cuya suma es $e^{K\alpha}$. Por lo tanto $F^n$ es una contracción en $X$. 
>>9. Finalmente por [[#^c6c861]] (corolario del Lema de Contracción) existe una única $\varphi \in X$ tal que $F(\varphi) = \varphi$. 
>>10. Ademas el punto fijo $\varphi$ es de clase $C^1$ por definicion (ya teniamos que la imagen de $F$ estaba en las continuas y el directo ver que por definicion $F(\varphi)$ es derivable para cualquier $\varphi$) 

