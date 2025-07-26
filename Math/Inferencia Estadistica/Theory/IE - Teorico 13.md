---
dateCreated: 2025-05-25,10:55
---
>[!Remark] Esperanza como medida de probabilidad
> Se puede demostrar que como $P(X^{-1}(\cdot) \mid \mathcal{G})(w)=P_{X}(\ \cdot\ | \ \mathcal{G})$ es medida de probabilidad sobre $\mathcal{B}(\mathbb{R})$ entonces
>$$\int_{\mathbb{R}} x\, \mathbb{P}_{X}(dx \mid \mathcal{G})(w)= \mathbb{E}(X \mid \mathcal{G})(w)$$

^849496

>[!Remark]
>Una forma alternativa de presentar la *esperanza condicional* está dada por el siguiente

>[!Theorem]
> Sea $(\Omega, \mathcal{F}, \mathbb{P})$ e.p. y $\mathscr{G} \subseteq \mathcal{F}$ sub-$\sigma$-álgebra. $X : \Omega \to \mathbb{R}$ v.a. tal que $\mathbb{E}(|X|) < \infty$. Entonces existe $Y : \Omega \to \mathbb{R}$, $\mathscr{G}$-medible con la propiedad: $\forall Z : \Omega \to \mathbb{R}$, $\mathscr{G}$-medible tal que $\mathbb{E}(|XZ|) < \infty$, se cumple: $$\mathbb{E}[(X - Y)Z] = 0 \quad \Longleftrightarrow \quad Y = \mathbb{E}(X \mid \mathscr{G})$$
> (*Nota: que se parece mucho a $\mathbb{E}((X - Y) \cdot 1_G)$, solo que con cualquier función $\mathscr{G}$-medible*)

>[!Definition]
> Supongamos ahora que agregamos $\mathbb{E}(X^2) < \infty$ (2° momento finito) (o bien $V(X) < \infty$). Entonces:
> $$L^2(\mathbb{P}) := \left\{ X : \Omega \to \mathbb{R} \text{ v.a. tal que } \mathbb{E}(X^2) < \infty \right\}$$
> $$L^2(\mathbb{P}, \alpha) := \left\{ X : \Omega \to \mathbb{R} \; \alpha\text{-medibles} \; \text{t.q.} \; \mathbb{E}(X^2) < \infty \right\}$$
>Entonces:
> $$L^2(\mathbb{P}, \mathscr{G}) \subseteq L^2(\mathbb{P}, \mathcal{F}) \quad (\text{pues } \mathscr{G} \subseteq \mathcal{F})$$
> - $L^2(\mathbb{P}, \mathscr{G})$ es un espacio vectorial cerrado.  

>[!Corollary] Esperanza condicional como proyeccion.
> Sea $(\Omega, \mathcal{F}, \mathbb{P})$ e.p. y ${} \mathcal{G} \subseteq \mathcal{F} {}$ sub-$\sigma$-álgebra, $X \in L^2(\mathbb{P})$. Entonces $\exists Y : \Omega \to \mathbb{R}$, ${} \mathcal{G} {}$-medible tal que $\forall Z \in L^2(\mathbb{P},\mathcal{G})$ se cumple:
> $$\mathbb{E}[(X - Y)Z] = 0 \quad \Longleftrightarrow \quad Y = \mathbb{E}(X \mid \mathcal{G})$$
>>[!Proof]-
>>1. Usando desigualdad de Hölder se sigue del Teorema previo $$\mathbb{E}(|X Z|) \leq \mathbb{E}(X^2)^{1/2} \cdot \mathbb{E}(Z^2)^{1/2} < \infty$$

^40f1bd

>[!Remark] Esperanza condicional como proyeccion ortogonal
>$L^2(\mathbb{P}, \mathcal{F})$ es un e.v. con producto interno:
>$$\langle X, Y \rangle = \int_\Omega (X \cdot Y) \, d\mathbb{P} = \mathbb{E}(X Y)$$
>Por el corolario, $Y=\mathbb{E}(X \mid \mathscr{G})$ satisface:
>$$0 = \mathbb{E}[(X - Y) Z] \quad \forall Z \in L^2(\mathbb{P}, \mathscr{G})  \iff  0 = \langle X - Y, Z \rangle$$
>Conclusion $\mathbb{E}(X \mid \mathscr{G})$ funciona como la **proyección ortogonal** de $X$ en $L^2(\mathbb{P}, \mathscr{G})$.

^3a9cf9

>[!Corollary] Esperanza condicional minimiza L2
>Sea $(\Omega, \mathcal{F}, \mathbb{P})$ e.p., ${} \mathcal{G} \subseteq \mathcal{F} {}$ sub-$\sigma$-álgebra, $X \in L^2(\mathbb{P}, \mathcal{F})$, entonces para todo $Y \in L^2(\mathbb{P}, \mathcal{G})$:
> 
>**a)** $$\mathbb{E}[(X - Y)^2] = \mathbb{E}\left[ \left( X - \mathbb{E}(X \mid \mathcal{G}) \right)^2 \right] +\mathbb{E} \left[\left( Y-\mathbb{E}(X \mid \mathcal{G} ) \right)^{2}\right]$$
>Con lo cual:
> $$
> \mathbb{E} \left[ \left( X - \mathbb{E}(X \mid \mathcal{G}) \right)^2 \right] \leq \mathbb{E} \left[ (X - Y)^2 \right]
> $$
>
> **b)**  
> Si llamamos **varianza condicional** a:
> $$
> \mathbb{V}(X \mid \mathcal{G}) := \mathbb{E}\left[\big (X - \mathbb{E}(X \mid \mathscr{G})\big)^2 \mid \mathcal{G} \right]
> $$
> se cumple que:
> $$
> \mathbb{V}(X) = \mathbb{E} \left[ \mathbb{V}(X \mid \mathcal{G}) \right] + \mathbb{V} \left( \mathbb{E}(X \mid \mathcal{G}) \right)
> \Rightarrow \mathbb{V} \left( \mathbb{E}(X \mid \mathcal{G}) \right) \leq \mathbb{V}(X)
> $$
>>[!Proof]-
>>*(a)* 
>>1. Iniciemos $$\begin{align}\mathbb{E}[(X - Y)^2] &= \mathbb{E}\left[ \left( (X - \mathbb{E}(X \mid \mathcal{G})) - (Y - \mathbb{E}(X \mid \mathcal{G})) \right)^2 \right] \\& = \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))^2 - 2(X - \mathbb{E}(X \mid \mathcal{G}))(Y - \mathbb{E}(X \mid \mathcal{G})) + (Y - \mathbb{E}(X \mid \mathcal{G}))^2 \right]\\&= \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))^2 \right] + \mathbb{E}\left[ (Y - \mathbb{E}(X \mid \mathcal{G}))^2 \right]\\&\quad- 2\mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))(Y - \mathbb{E}(X \mid \mathcal{G})) \right] \end{align}$$
>>2. Por [[IE - Teorico 13#^3a9cf9]] que para cualquier variable aleatoria $Z \in L^2(\mathbb{P}, \mathcal{G})$, se cumple: $$
>>   \mathbb{E}[(X - \mathbb{E}(X \mid \mathcal{G}))Z] = 0
>>   $$
>>3. Veamos $(Y - \mathbb{E}(X \mid \mathcal{G}))\in L^2(\mathbb{P}, \mathcal{G})$.
>> 	  - Por hipótesis, $Y \in L^2(\mathbb{P}, \mathcal{G})$, entonces $Y$ es $\mathcal{G}$-medible y $\mathbb{E}(Y^2) < \infty$.
>> 	  - Por definición [[IE - Teorico 12#^2d397e]] $\mathbb{E}(X \mid \mathcal{G})\in L^2(\mathbb{P}, \mathcal{G})$.
>> 	  - Como $L^2(\mathbb{P}, \mathcal{G})$ es un espacio vectorial, la resta de dos de sus elementos, $Z = Y - \mathbb{E}(X \mid \mathcal{G})\in L^2(\mathbb{P}, \mathcal{G})$.
>>4. Por lo tanto, podemos aplicar la propiedad de ortogonalidad con $Z = Y - \mathbb{E}(X \mid \mathcal{G})$, lo que nos da:
>>   $$
>>   \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))(Y - \mathbb{E}(X \mid \mathcal{G})) \right] = 0
>>   $$
>>5. Al sustituir este resultado en la expresión del paso 3, el término cruzado se anula y obtenemos la identidad deseada:
>>   $$
>>   \mathbb{E}[(X - Y)^2] = \mathbb{E}\left[ \left( X - \mathbb{E}(X \mid \mathcal{G}) \right)^2 \right] + \mathbb{E} \left[ \left( Y-\mathbb{E}(X \mid \mathcal{G}) \right)^2 \right]
>>   $$
>>   lo que completa la demostración.
>>
>>*(b)*
>>6. Recordemos $$\begin{align}\mathbb{V}(X) & = \mathbb{E}\left[ (X - \mathbb{E}(X))^2 \right]\\& = \mathbb{E}\left[ (X - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G})))^2 \right] \\& = \mathbb{E}\left[ \left( (X - \mathbb{E}(X \mid \mathcal{G})) + (\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))) \right)^2 \right] \\&  = \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))^2 \right] + \mathbb{E}\left[ (\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G})))^2 \right]\\& \quad + 2\mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))(\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))) \right]\end{align} $$
>>7. Analicemos cada uno de los tres términos:
>> 	  - **Primer término:**
>> 	    $$
>> 	    \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))^2 \right] = \mathbb{E}\left[ \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))^2 \mid \mathcal{G} \right] \right] = \mathbb{E}[\mathbb{V}(X \mid \mathcal{G})]
>> 	    $$
>> 	  - **Segundo término:** $$\mathbb{E}\left[ (\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G})))^2 \right] = \mathbb{V}(\mathbb{E}(X \mid \mathcal{G}))$$
>> 	  - **Tercer término (el término cruzado):** Demostraremos que es cero usando la Ley de la Esperanza Total.
>> 	    $$
>> 	    \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G}))(\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))) \right]
>> 	    $$
>> 	    Aplicamos la esperanza condicional sobre $\mathcal{G}$ a la expresión interna. El segundo factor, $(\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G})))$, es $\mathcal{G}$-medible, por lo que puede salir de la esperanza condicional:
>> 	    $$
>> 	    \mathbb{E}\left[ \dots \mid \mathcal{G} \right] = (\mathbb{E}(X \mid \mathcal{G}) - \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))) \cdot \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G})) \mid \mathcal{G} \right]
>> 	    $$
>> 	    Por linealidad de la esperanza condicional, $\mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G})) \mid \mathcal{G} \right] = \mathbb{E}[X \mid \mathcal{G}] - \mathbb{E}[\mathbb{E}(X \mid \mathcal{G}) \mid \mathcal{G}]$. Como $\mathbb{E}(X \mid \mathcal{G})$ ya es $\mathcal{G}$-medible, $\mathbb{E}[\mathbb{E}(X \mid \mathcal{G}) \mid \mathcal{G}] = \mathbb{E}(X \mid \mathcal{G})$. Por lo tanto:
>> 	    $$
>> 	    \mathbb{E}\left[ (X - \mathbb{E}(X \mid \mathcal{G})) \mid \mathcal{G} \right] = \mathbb{E}[X \mid \mathcal{G}] - \mathbb{E}[X \mid \mathcal{G}] = 0
>> 	    $$
>> 	    Esto hace que todo el término cruzado sea cero.
>>
>>3. Sustituyendo los resultados de los tres términos en la ecuación del paso 4, obtenemos la identidad:
>> $$
>> \mathbb{V}(X) = \mathbb{E} \left[ \mathbb{V}(X \mid \mathcal{G}) \right] + \mathbb{V} \left( \mathbb{E}(X \mid \mathcal{G}) \right)
>> $$
>>
>>4. **Para la desigualdad:** Notar $\mathbb{V}(X \mid \mathcal{G}) = \mathbb{E}\big[\big(X - \mathbb{E}(X \mid \mathcal{G})\big)^2 \mid \mathcal{G}\big]$ es la esperanza condicional de una variable no negativa (por que es un cuadrado), por lo que es una variable aleatoria no negativa.
>>5. Su esperanza, $\mathbb{E}[\mathbb{V}(X \mid \mathcal{G})]$, también debe ser no negativa osea $\mathbb{E}[\mathbb{V}(X \mid \mathcal{G})] \ge 0$
>>6. Entonces
>> $$\mathbb{V}(X) \ge \mathbb{V}(\mathbb{E}(X \mid \mathcal{G}))$$

^168226

> [!Remark]
> El punto **a)** del corolario permite hablar de la esperanza como el **mejor aproximante de $X$ en media cuadrática en $L^2(\mathbb{P}, \mathcal{G})$**. 
> Necesitamos “pegar” la noción de esperanza condicional dado sub-álgebra y la esperanza condicional que conocemos condicionando a v.a. o vectores aleatorios.

>[!Proposition]
>- Sea $(\Omega_1, \mathcal{F}_1, \mathbb{P})$ e.p. y $(\Omega_2, \mathcal{F}_2)$ una $\mathcal{F}_2$ σ-álgebra en $\Omega_2$. 
>- Sea $T : \Omega_1 \to \Omega_2$ $\mathcal{F}_1/\mathcal{F}_2$-medible (o sea $T^{-1}(C) \in \mathcal{F}_1$ para todo $C \in \mathcal{F}_2$)
>- Sea la familia de subconjuntos de $\Omega_1$ armada como:
> $$T^{-1}(\mathcal{F}_2) = \left\{ T^{-1}(C) \mid C \in \mathcal{F}_2 \right\}$$
> $\sigma(T)$ denota la menor σ-álgebra que vuelve medible a $T$. 
> Entonces:$$T : (\Omega_1, \sigma(T)) \to (\Omega_2, \mathcal{F}_2) \text{ es } \sigma(T)/\mathcal{F}_2 \text{-medible}$$
> Como $T^{-1}(\mathcal{F}_2)$ es σ-álgebra (chequear) entonces $\sigma(T) = T^{-1}(\mathcal{F}_2)$
> - Sea $Y : \Omega_1 \to \mathbb{R}$ v.a. tal que $\mathbb{E}(|Y|) < \infty$, podemos considerar $\mathbb{E}(Y \mid \sigma(T))$ es $\sigma(T)$-medible (mismo rol de $\mathcal{G}$)
> ![[Pasted image 20250525125822.png]]
> ¿Existe $g$ que cierre el diagrama? La respuesta está en el siguiente teorema

>[!Theorem] Esperanza condicional es una funcion de una v.a
>Sea $Y : \Omega_1 \to \mathbb{R}$ es $\sigma(T)$-medible $\Longleftrightarrow$ $\exists g : \Omega_2 \to \mathbb{R}$, $\mathcal{F}_2$-medible tal que $Y = g \circ T$
>En especial, si $\vec{Z} = (Z_1, \dots, Z_m)^t$ vect. aleat. (acá $\vec{Z} : \Omega_1 \to \mathbb{R}^m$)
>$$\mathbb{E}(Y\mid \sigma(\vec{Z})) = g(\vec{Z}), \quad g \text{ medible Borel}$$

^9a7929

>[!Remark] Notacion esperanza condicional
>Vamos a dar el siguiente sentido a notaciones ya usadas con la nueva notación:
>$$\mathbb{E}(X \mid \vec{Z}) := \mathbb{E}(X \mid \sigma(\vec{Z}))$$
>$$\mathbb{E}(X \mid Z = z) = \mathbb{E}(X \mid Z)(\omega) \quad \text{donde } \omega \in \Omega_1 \text{ t.q. } Z(\omega) = z$$

^518b46

>[!Remark]
>Si $X$ e $Y$ v.a. discretas osea $\exists \{x_i\}_{i \in I}$, $\{y_j\}_{j \in J}$ con $I, J \subseteq \mathbb{N}$ t.q.
>$$\mathbb{P} \left( \bigcup_{i \in I} \{X = x_i\} \right) = 1 = \mathbb{P} \left( \bigcup_{j \in J} \{Y = y_j\} \right)$$
>Por definicion $\mathbb{E}(X \mid Y) = \mathbb{E}(X \mid \sigma(Y))$. La esperanza condicional $\mathbb{E}(X \mid \sigma(Y))$ resuelve:
>$$\int_G X \, d\mathbb{P} = \int_G \mathbb{E}\big(X \mid \sigma(Y)\big) \, d\mathbb{P} \quad \forall G \in \sigma(Y)$$
>Puede comprobarse que: $$\sigma(Y)=Y^{-1}(\mathcal{B}(\mathbb{R}))= \left\{ \bigcup_{j \in J_0} \{Y = y_j\} \mid \forall J_0 \subseteq J \right\} $$
>Basta primero estudiar $G = \{Y = y_j\}$. 
>Nuerstra antigua definicion nos decia $\tilde{Y}(w)=E(X|Y=Y(w))$ entonces:
>$$\tilde{Y} = \sum_{y \in \text{Im}(Y)} \mathbb{E}(X \mid Y = y) \cdot \mathbb{I}_{\{Y = y\}}$$
>con:
>$$\mathbb{E}(X \mid Y = y) = \sum_{x \in \text{Im}(X)} x \cdot \mathbb{P}(X = x \mid Y = y) = \sum_{x \in \text{Im}(X)} x \cdot \frac{\mathbb{P}(X = x \cap Y = y)}{\mathbb{P}(Y = y)}$$
>se cumple (1), o sea:
>$$\int_{\{Y = y_{j_{0}}\}} X \, d\mathbb{P} = \int_{\{Y = y_{j_{0}}\}} \tilde{Y} \, d\mathbb{P}$$
>Mostrando que la antigua definicion cumple la nueva definicion mas general

> [!Definition] ECMP
>Sean v.a. $X, Z_1, \dots, Z_m$ tal que $Y \in L^2$ y $g : \mathbb{R}^m \to \mathbb{R}$ medible Borel y $g(Z_1, \dots, Z_m) \in L^2$
>Llamamos **error cuadrático medio de predicción** por usar $g(Z_1, \dots, Z_m)$
>$$ECMP(Y,g(\vec{Z}))=E\bigg[\big(Y-g(Z_{1},\ldots,Z_{m})\big)^{2}\bigg]$$
>Osea estamos estimando $Y$ con $g(Z_{1},\ldots,Z_{m})$  

^0a1f7f

>[!Remark]
>Sabemos que:
>$$\mathbb{E} \left( Y - \mathbb{E}(Y \mid Z_1, \dots, Z_m) \right)^2 \leq \mathbb{E} \left( Y - g(Z_1, \dots, Z_m) \right)^2\quad\forall g(\vec{Z})$$
>Osea la esperanza condicional minimiza el *error cuadratico medio de prediccion*

>[!Remark]
>Sea $Y$ v.a., $\mathbb{E}(Y^2) < \infty$. El $c\in \mathbb{R}$ que resuelve ${} \min_{c\in \mathbb{R}} \mathbb{E}(Y - c)^2$ es $c= E(Y)$ 

> [!Lemma] Minimizador constante
> Sea $Y \in L^2(\mathbb{P}, \mathcal{F})$ y $\sigma(c)$ la menor σ-álgebra que vuelve medible a ${} c$ v.a constante. Entonces ${} \sigma(c) = \{\varnothing, \Omega\} {}$ y $\mathbb{E}(Y \mid \sigma(c)) = \mathbb{E}(Y)$ y ademas
>$$\mathbb{E} \left[ Y - \mathbb{E}(Y) \right]^2 \leq \mathbb{E}(Y - c)^2, \quad \forall c \in \mathbb{R}$$
>> [!Proof]-
>>1. Si $g(\omega) = c \quad \forall \omega \in \Omega \Rightarrow g^{-1}(A) =\begin{cases} \varnothing & \text{si } c \notin A \\ \Omega & \text{si } c \in A\end{cases}$ Entonces $\mathcal{G} = \{\varnothing, \Omega\}$
>>2. Por definicion tiene que valer $$\int_G Y \, d\mathbb{P} = \int_G \mathbb{E}(Y \mid \sigma(c)) \, d\mathbb{P} \quad \forall G \in \sigma(c)$$
>>3. Si $G = \varnothing$, vale trivialmente
>>4. Si $G = \Omega$ entonces $\mathbb{E}(Y) = \int_\Omega Y \, d\mathbb{P} = c \int_\Omega d\mathbb{P} = c$ entonces ${} \mathbb{E}(Y \mid \sigma(c)) = \mathbb{E}(Y) {}$
>> La desigualdad sale por ser $\mathbb{E}(Y \mid \sigma(c))$ el mejor aproximante en $L^2(\mathbb{P}, \mathcal{G}) = \{ \text{constantes} \}$ 

^999dbd

> [!Example]
>Si ${} S= (X_1, X_2)^t \sim \mathcal{N}_2(\mu, \Sigma_X)$, $\mu \in \mathbb{R}^2$, $\Sigma_X \in \mathbb{R}^{2 \times 2}$  
>$$\mu = \begin{pmatrix} \mu_1 \\ \mu_2 \end{pmatrix}, \quad \Sigma_X = \begin{pmatrix} \Sigma_{11} & \Sigma_{12} \\ \Sigma_{21} & \Sigma_{22} \end{pmatrix}$$
>Vimos que la distribución condicional de $X_1$ dado $X_2 = x_2$ es:
>$$ X_1 \mid X_2 = x_2 \sim \mathcal{N} \left( \mu_1 + \Sigma_{12} \Sigma_{22}^{-1}(x_2 - \mu_2), \; \Sigma_{11} - \Sigma_{12} \Sigma_{22}^{-1} \Sigma_{21} \right) \quad\text{con}\quad\Sigma_{X}=\begin{pmatrix}\Sigma_{11} & \Sigma_{12}\\ \Sigma_{21}& \Sigma_{22}\end{pmatrix}$$
>Luego:
>$$\begin{align}\mathbb{E}(X_1 \mid X_2 = x_2) &= \mu _{1}+\frac{Cov(X_{1},X_{2})}{V(X_{2})}(x_{2}-\mu _{2})\\& =\mu_1 +  \frac{\sqrt{\mathbb{V}(X_1)}\sqrt{ V(X_{2}) } \cdot \text{Corr}(X_1, X_2)}{V(X_{2}) } (x_2 - \mu_2) \\&=\mu _{1}+\frac{\sqrt{ V(X_{1}) }}{\sqrt{ V(X_{2}) }}\rho(x_{2}-\mu _{2})\end{align}$$
>$$ \mathbb{V}(X_1 \mid X_2) = \sigma_{X_1}^2 - \frac{\text{Cov}^{2}(X_1, X_2)}{\sigma^{2}_{X_{2}}}=\sigma_{X_{1}}^{2}-\sigma^{2}_{X_{1}}\frac{\text{Cor}^{2}(X_{1},X_{2})}{\sigma^{2}_{X_{1}}\sigma^{2}_{X_{2}}}=\sigma^{2}_{X_{1}}(1-p^{2})$$

