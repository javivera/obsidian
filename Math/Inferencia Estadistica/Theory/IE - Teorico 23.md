**Métodos de estimación**

>[!Remark]
>Sea $\mathcal{P} = \{P_\theta \mid \theta \in \Theta\}$ una familia paramétrica e identificable.
>Tratamos de detectar el valor $\theta_0 \in \Theta$ (desconocido) tal que el vector aleatorio $X: \Omega \to \Omega_X$, cuya realización observamos, cumple que $X \sim P_{\theta_0}$. Queremos construir un estimador $\hat{\theta}(X)$ que se "relacione" con $\theta_0$.
>Supongamos que tomamos una función $\rho: \Omega_X \times \Theta \to \mathbb{R}$ y con ella definimos la **discrepancia** $D(\theta_0, \theta) = E_{\theta_0}[\rho(X, \theta)]$.
>(Esto es como tratar de medir en promedio la discrepancia por usar $X \sim P_{\theta_0}$ y comparar con cada $\theta$).
>La idea de una función de discrepancia debe ser que:
>$$ D(\theta_0, \theta_0) < D(\theta_0, \theta) \quad \forall \theta \ne \theta_0 $$
>Como $\theta_0$ es desconocido, no podemos calcular $E_{\theta_0}$. Una forma de considerar el problema podría ser elegir un estimador $\hat{\theta}(X)$ que minimice $\rho(X, \theta)$ para la muestra observada.
>La función $\rho$ se dice **función de contraste**, y el estimador $\hat{\theta}(X)$ se dice **estimador de mínimo contraste**.
>$$ \hat{\theta}(X) = \arg\min_{\theta \in \Theta} \rho(X, \theta) $$
>

>[!Example]
>Sea $\theta \in \mathbb{R}$ y $X_1, \dots, X_n$ una muestra aleatoria. Entonces:
>- i) Una función de contraste conocida es: $$ \rho(X_1, \dots, X_n, \theta) = \frac{1}{n} \sum_{i=1}^n (X_i - \theta)^2 $$
>y luego, el estimador es el **estimador de cuadrados mínimos**:
>$$ \hat{\theta}(X) = \frac{1}{n} \sum_{i=1}^n X_i $$
>- ii) Otra función de contraste es:$$ \rho(X_1, \dots, X_n, \theta) = \frac{1}{n} \sum_{i=1}^n |X_i - \theta| $$
>y luego, el estimador es la **mediana muestral**:
>$$ \hat{\theta}(X) = \begin{cases} X_{(\frac{n+1}{2})} & \text{si } n \text{ es impar} \\ \frac{1}{2}(X_{(\frac{n}{2})} + X_{(\frac{n}{2}+1)}) & \text{si } n \text{ es par} \end{cases} $$

>[!Remark]
>Volvemos a la presentación general.
>Si tenemos $\Theta \subseteq \mathbb{R}^d$ y la función $\theta \mapsto D(\theta_0, \theta)$ es continua y diferenciable, entonces se debería cumplir que:
>$$ \nabla_\theta D(\theta_0, \theta) |_{\theta=\theta_0} = 0 $$
>Luego, el estimador de mínimo contraste debería verificar:
>$$ \nabla_\theta \rho(X, \theta) |_{\theta=\hat{\theta}(X)} = 0 $$
>Esta es la **ecuación de estimación**.

>En forma más general, podemos definir al estimador $\hat{\theta}(X)$ obtenido como la solución de $\Psi(X, \hat{\theta})=0$ (también llamada **ecuación de estimación**).
>Un caso particular importante de esta ecuación de estimación está dado por el:
>
>**Método de los Momentos**
>
>Sea $X_1, \dots, X_n$ una muestra aleatoria tal que $X_1 \sim P_{\theta_0}$, con $\theta_0 \in \mathbb{R}^d$ (identificable).
>Supongamos que la distribución $P_\theta$ admite "$d$" momentos finitos, o sea:
>$$ \mu_j = \mu_j(\theta) = E_\theta(X_1^j) \in \mathbb{R} \quad \forall j \in \{1, \dots, d\} $$
>Tenemos $X_1 \sim P_{\theta_0}$ (y no conocemos el parámetro $\theta_0$).
>Sea $F_n(x) = \frac{1}{n} \sum_{i=1}^n I_{(-\infty, x]}(X_i)$ la **función de distribución empírica**.
>Esta función de distribución define una medida de probabilidad que asigna una masa de $1/n$ a cada observación $X_i$.