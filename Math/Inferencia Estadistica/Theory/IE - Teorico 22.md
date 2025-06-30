> [!Remark]
> Otra forma de encontrar estimadores IMVU es a través de la **Desigualdad de la Información**, también conocida como **Desigualdad de Rao-Cramér**.
>   
> Cuando vimos el Teorema de Lehmann-Scheffé, la unicidad del estimador IMVU surgía entre los estimadores que son $\mathcal{T}’$-medibles. Sin embargo, hay un resultado más general:

> [!Theorem]
> Sea la familia paramétrica $\mathcal{P} = {P_\theta : \theta \in \Theta}$ identificable y tal que $P_\theta \ll \mu$ para toda $\theta \in \Theta$, donde $\mu$ es una medida $\sigma$-finita.
> Si existe un estimador $U \in \mathcal{U}$ que es UMVU, entonces cualquier otro estimador $W \in \mathcal{U}$ IMVU cumple que:
> $$ P_\theta(W = U) = 1 \quad \text{para todo } \theta \in \Theta.$$
>Es decir, el UMVU es único salvo en conjuntos de probabilidad nula.

> [!Remark]
>Otra vía para encontrar estimadores IMVU es mediante la desigualdad de la información de Fisher. Cuando un estimador alcanza esa cota, estamos ante un estimador UMVU.

> [!Remark]
>Para ello, es importante saber cuándo podemos **intercambiar derivadas con integrales**. Supongamos que $(\Omega, \mathcal{F}, \mu)$ es un espacio de medida, $\Theta \subset \mathbb{R}^d$ abierto, y $g : \Omega \times \Theta \to \mathbb{R}$ tal que $g(\cdot, \theta)$ es medible para cada $\theta$.

>[!Remark]
> **Condición 3**:
> Sea $B \in \mathcal{F}$. Supongamos que:
> - (i) Para cada $x \in \Omega$, $g(x,\theta)$ es diferenciable respecto a $\theta$, la derivada es medible y:$$ |\nabla_\theta g(\cdot, \theta)|_{L^1(\mu)} < \infty$$
> - (ii) Para cada $x \in \Omega$, $|g(x,\theta)|\rho(x)$ es integrable, y la función:$$G(\theta) = \int g(x,\theta) \rho(x) , \mu(dx)$$
>es diferenciable.
>- (iii) Se puede intercambiar derivación e integración:$$\nabla_\theta \left[ \int g(x,\theta) \rho(x) , \mu(dx) \right] = \int \nabla_\theta g(x,\theta) \rho(x) , \mu(dx)$$

> [!Theorem]
>Supongamos que vale (i) de la Condición 3. Si existe una función $g_0(x)$ medible e integrable tal que…

alsdjnvnvak 