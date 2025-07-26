>[!Remark]
>Continuamos con el ECMP (Error Cuadrático Medio de Predicción). Dadas una v.a. $Y$ con $0 < Var(Y) < \infty$ y un vector aleatorio $Z=(Z_1, \dots, Z_m)^t$. 
>Tenemos que el ECMP de $Y$ dado $Z$ es $ECMP(Y,Z) = E[(Y-E(Y|Z))^2]$.
>Recordemos que la Varianza Condicional es $Var(Y|Z) = E[(Y-E(Y|Z))^2|Z]$.

>[!Lemma] ECMP escrito en varianza
>$ECMP(Y,Z) = Var(Y) - Var(E(Y|Z))$.
>>[!Proof]-
>>1. Comencemos $$\begin{align*} ECMP(Y,Z) &= E\left[ (Y - E(Y|Z))^2 \right] \\ &= E\left[ ((Y - E(Y)) - (E(Y|Z) - E(Y)))^2 \right] \\ &= E\left[ (Y - E(Y))^2 \right]+ E\left[ (E(Y|Z) - E(Y))^2 \right] \\&\quad - 2E\left[ (Y - E(Y))(E(Y|Z) - E(Y)) \right]\end{align*}$$
>>2. El primer término es $Var(Y)$ y el segundo es $Var(E(Y|Z))$. (Notar que $E(Y)=E(E(Y|Z))$).
>>3. Para el término cruzado, como $E(Y|Z)-E(Y)$ es $\sigma(Z)$-medible entonces sale como constante al condicinar por ${} \sigma(Z) {}$  , y usando la ley de esperanzas totales:
>>
>>$\begin{align*} E\left[ (Y - E(Y))(E(Y|Z) - E(Y)) \right] &= E\big( E\big[ (Y - E(Y))(E(Y|Z) - E(Y)) | Z \big] \big) \\ &= E\big( (E(Y|Z) - E(Y)) E[Y - E(Y)|Z] \big) \\ &= E\left[ (E(Y|Z) - E(Y))(E[Y|Z] - E[Y]) \right] \\ &= E\left[ (E(Y|Z) - E(Y))^2 \right] \\ &= Var(E(Y|Z)) \end{align*}$
>>(Notar que esto es igual a $Cov(Y,E(Y|Z))$) 
>>Sustituyendo todo en la expresión original:
>>$$\begin{align}ECMP(Y|Z) & = Var(Y) - 2Var(E(Y|Z)) + Var(E(Y|Z))\\& = Var(Y) - Var(E(Y|Z))\end{align} $$

^948203

>[!Remark]
>La esperanza condicional $E(Y|Z)$ es el mejor predictor de $Y$ entre todas las funciones de $Z$.

>[!Remark] Corr entre Y e E(Y|Z)
>¿Cuán asociados están $Y$ y su predictor $E(Y|Z)$?
>Si $E(Y|Z)$ no es constante, calculemos la correlación entre ellos:
>$$ Corr(Y, E(Y|Z)) = \frac{Cov(Y, E(Y|Z))}{\sqrt{Var(Y)} \sqrt{Var(E(Y|X))}} $$
>La covarianza es:
>$Cov(Y, E(Y|Z)) = E[(Y-E(Y))(E(Y|Z)-E(Y))] = Var(E(Y|Z))$ (hecho en [[IE - Teorico 14#^948203]]) 
>Sustituyendo la covarianza en la fórmula de la correlación:
>$$ Corr(Y, E(Y|Z)) = \frac{Var(E(Y|Z))}{\sqrt{Var(Y)} \sqrt{Var(E(Y|Z))}} = \frac{\sqrt{Var(E(Y|Z))}}{\sqrt{Var(Y)}} \ge 0 $$
>La cantidad $Corr(Y, E(Y|Z))$ se denota $\rho_{YZ}$ y se denomina **coeficiente de determinación** o de **correlación múltiple**.

^1c307a

>[!Example] Ejemplo con distribucion normal
>Si el vector $(Y, Z^t)^t$ sigue una distribución normal multivariada:
>$(Y, Z^t)^t \sim N_{d+1}(\mu, \Sigma)$, donde $\Sigma$ es simétrica y definida positiva.
>El vector de medias y la matriz de covarianzas se pueden particionar de la siguiente forma:
>$$ \mu = \begin{pmatrix} \mu_Y \\ \mu_Z \end{pmatrix}, \quad \mu_Y \in \mathbb{R}, \mu_Z \in \mathbb{R}^d $$
>$$ \Sigma = \begin{pmatrix} \sigma_Y^2 & \Sigma_{YZ} \\ \Sigma_{ZY} & \Sigma_{ZZ} \end{pmatrix}, \quad \Sigma_{ZY} = \Sigma_{YZ}^t \in \mathbb{R}^{d \times 1}, \Sigma_{ZZ} \in \mathbb{R}^{d \times d} $$
>Sabemos que la distribución condicional de $Y$ dado $Z$ es: $$ Y|_{Z=z} \sim N(\mu_Y + \Sigma_{YZ} \Sigma_{ZZ}^{-1}(z-\mu_Z), \sigma_Y^2 - \Sigma_{YZ} \Sigma_{ZZ}^{-1} \Sigma_{ZY}) $$
>De aquí se deducen las siguientes cantidades:
> - $E(Y|Z) = \mu_Y + \Sigma_{YZ} \Sigma_{ZZ}^{-1}(Z-\mu_Z)$
> - $Var(Y|Z) = \sigma_Y^2 - \Sigma_{YZ} \Sigma_{ZZ}^{-1} \Sigma_{ZY}$
> - $Var(E(Y|Z)) = Var(\mu_Y + \Sigma_{YZ} \Sigma_{ZZ}^{-1}(Z-\mu_Z)) = Var(\Sigma_{YZ} \Sigma_{ZZ}^{-1}Z) = \Sigma_{YZ} \Sigma_{ZZ}^{-1} \Sigma_{ZZ} (\Sigma_{YZ} \Sigma_{ZZ}^{-1})^T = \Sigma_{YZ} \Sigma_{ZZ}^{-1} \Sigma_{ZY}$
> - $ECMP(Y,Z) = Var(Y) - Var(E(Y|Z)) = \sigma_Y^2 - \Sigma_{YZ} \Sigma_{ZZ}^{-1} \Sigma_{ZY} = Var(Y|Z)$
>En este caso, el coeficiente de determinación al cuadrado es:
>$$ \rho_{YZ}^2 = \left( \frac{\sqrt{Var(E(Y|Z))}}{\sqrt{Var(Y)}} \right)^2 = \frac{Var(E(Y|Z))}{Var(Y)} = \frac{\Sigma_{YZ} \Sigma_{ZZ}^{-1} \Sigma_{ZY}}{\sigma_Y^2} $$

^e8cecc

>[!Definition] Mejor predictor lineal
>Supongamos que queremos buscar el mejor aproximante **lineal** de la v.a. $Y$ basado en $Z$. O sea, si $\mu_L(Z) = a+b^t Z$, con $a \in \mathbb{R}, b \in \mathbb{R}^d$, queremos encontrar $a$ y $b$ tal que:
>$$ \min_{a \in \mathbb{R}, b \in \mathbb{R}^d} E\big(Y - (a+b^t Z)\big)^2$$
>Equivalentemente, podemos reparametrizar el problema. Sea $\alpha = a + b^t E(Z)$. Entonces $a = \alpha - b^t E(Z)$, y el predictor se escribe como:
>$$a+b^t Z = \alpha - b^t E(Z) + b^t Z = \alpha + b^t(Z-E(Z))$$El problema de minimización se convierte en:
>$$ \min_{\alpha \in \mathbb{R}, b \in \mathbb{R}^d} E[(Y - \alpha - b^t(Z-E(Z)))^2] $$
>Luego, una vez encontrados los valores óptimos de $\alpha$ y $b$, se puede recuperar $a$ como $a = \alpha - b^t E(Z)$.

^56bde8

>[!Lemma] Mejor predictor lineal en general
>Sea $X=(Y, Z^t)^t$ un vector aleatorio con $0 < \sigma_Y^2 < \infty$ y $\Sigma_{ZZ} \in \mathbb{R}^{d \times d}$ inversible, $\Sigma_{ZY}^t = \Sigma_{YZ} \in \mathbb{R}^{1 \times d}$. Entonces el **mejor predictor lineal** de $Y$ basado en $Z$ es:
>$$\mu_L(Z) = E(Y) + \Sigma_{YZ} \Sigma_{ZZ}^{-1} (Z-E(Z))$$
>>[!Proof]-
>>1. Buscamos minimizar la expresión $E[(Y - \alpha - b^t(Z-E(Z)))^2]$. 
>>2. Para ello, la expandimos sumando y restando $E(Y)$:$$\begin{align*} E\left[ (Y - \alpha - b^t(Z-E(Z)))^2 \right] &= E\left( (Y-E(Y)) + (E(Y) - \alpha -b^t(Z-E(Z))) \right )^2 \\ &= E\big(Y-E(Y)\big)^2 + 2E\big[(Y-E(Y))(E(Y)-\alpha -b^t(Z-E(Z)))\big] \\ & \quad + E\big[(E(Y)-\alpha -b^t(Z-E(Z)))^2\big] \end{align*} $$
>>Ahora, simplifiquemos cada uno de los tres términos:
>>**Primer término:** Es la definición de la varianza de $Y$ $$ E\big(Y-E(Y)\big)^2 = Var(Y)$$
>>**Segundo término (el término cruzado):**
>>$$ \begin{align*} & 2E\big[(Y-E(Y))(E(Y)-\alpha -b^t(Z-E(Z)))\big] \\ &= 2E\big[(Y-E(Y))(E(Y)-\alpha)\big] - 2E\big[(Y-E(Y))b^t(Z-E(Z))\big] \end{align*} $$
>>Como $E(Y)-\alpha$ es una constante y $E[Y-E(Y)]=0$, el primer sumando se anula. Nos queda:$$ \begin{align}-2E\big[(Y-E(Y))b^t(Z-E(Z))\big] & = -2b^t E\big[(Z-E(Z))(Y-E(Y))\big] \\&= -2b^t Cov(Z,Y)\end{align} $$
>>**Tercer término:**
>>$$ \begin{align*} & E\big[(E(Y)-\alpha -b^t(Z-E(Z)))^2\big] \\ &= E\big[ (E(Y)-\alpha)^2 - 2(E(Y)-\alpha)b^t(Z-E(Z)) + (b^t(Z-E(Z)))^2 \big] \end{align*} $$
>>Aplicando la esperanza a cada sumando y sabiendo que $E[Z-E(Z)]=0$:
>>$$ \begin{align*} &= (E(Y)-\alpha)^2 - 2(E(Y)-\alpha)b^t E[Z-E(Z)] + E\big[(b^t(Z-E(Z)))^2\big] \\ &= (E(Y)-\alpha)^2 + E\big[b^t(Z-E(Z))(Z-E(Z))^t b\big] \\ &= (E(Y)-\alpha)^2 + b^t E\big[(Z-E(Z))(Z-E(Z))^t\big] b \\ &= (E(Y)-\alpha)^2 + b^t Cov(Z) b \end{align*} $$
>>**Juntando todos los términos**, la expresión completa es:
>>$$f(\alpha ,b)= Var(Y) - 2b^t Cov(Z,Y) + b^t Cov(Z) b + (E(Y)-\alpha)^2 $$
>>Y ahora minimizando por separado para $b$ y por separado para $\alpha$ con las derivadas parciales llegamos a que el minimo es con $$\alpha =E(Y)\quad b=\Sigma^{-1}_{Z Z } \Sigma_{ZY}$$
>>Sustituyendo en la expresion $\alpha +b^{t}(Z-E(Z))$ llegamos al resultado.  

^755ace

>[!Remark]
>Entonces, de la función de distribución de $X=(Y, Z^T)^T$ sólo necesitamos conocer las covarianzas de $Y$ con $Z$ y las varianzas-covarianzas de $Z$.
>Así, todas las distribuciones que tengan el mismo $\Sigma_{YZ}$ y $\Sigma_{ZZ}$ van a tener el mismo aproximante lineal.

^06fcf8

>[!Example] Mejor predictor lineal para normal multivariada
>En especial, podríamos tomar la distribución normal multivariada $G=N_{d+1}(\mu, \Sigma)$ con:
>$$ \mu = \begin{pmatrix} E(Y) \\ E(Z) \end{pmatrix} \quad \text{y} \quad \Sigma_{XX} = \begin{pmatrix} \sigma_Y^2 & \Sigma_{YZ} \\ \Sigma_{ZY} & \Sigma_{ZZ} \end{pmatrix} $$
>En este caso, sabemos que $E(Y|Z) = \mu_Y + \Sigma_{YZ}\Sigma_{ZZ}^{-1}(Z-E(Z))$ por [[IE - Teorico 14#^e8cecc]] y este es el mejor aproximante (ya que es la esperanza condicional)
>Justo en este caso coincide con el mejor predictor lineal con lo cual resulta los coeficientes del mejor predictor lineal son:
>$$ b = \Sigma_{ZZ}^{-1}\Sigma_{ZY} \quad \text{y} \quad a = \mu_Y $$

^17177c

>[!Example] Mejor aprox lineal para 2 dimension
>Si $X = \begin{pmatrix} Y \\ Z \end{pmatrix} \in \mathbb{R}^2$ tenemos que el mejor aproximante lineal seria $$\mu_{L}(Z)=E(Y)+ \frac{Cov(Y,Z)}{Var(Z)}(Z-E(Z))$$
>

^de9ddb

>[!Proposition] Mejor aproximante lineal con origen 0
>Si en vez de ajustar $\mu_L(Z) = a+bZ$ estuviéramos circunscriptos a rectas que pasan por el origen ($a=0$) el mejor aproximante lineal pasando sobre el origen seria $$\mu _{L}(Z)=\frac{E(YZ)}{E(Z^{2})}Z$$
>>[!Proof]-
>> 1. Solucionemos esto $\min_b E[(Y-bZ)^2]$
>> 2. Para eso tenemos que minimizar $E(Y^{2})-2bE(YZ)+b^{2}E(Z^{2})$
>> 3. Derivando una vez llegamos facil al resultado y derivando una segunda vez confirmamos que es minimo

^3a0b8c

