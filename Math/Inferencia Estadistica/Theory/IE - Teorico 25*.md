---
dateCreated: 2025-06-15,18:35
---

>[!Remark]
>Entonces la convención es mantener el ETI bajo control, por lo tanto como se eligen los hipótesis nula y alternativa en el problema particular que estará analizado. 
>Es una decisión en términos de base se considera el interés en el fenómeno bajo estudio. 

>[!Example]
>Supongamos que están desarrollando una nueva droga y deseamos saber si aumenta la tasa de recuperación respecto de tratamientos anteriores. Supongamos que de la experiencia con las drogas anteriores, la tasa de recuperación es $\theta_0 = 0.3$
>El científico que descubre la nueva droga quiere minimizar el error de decir que la nueva droga es mejor cuando eso no ocurre.
>Hay dos posibles errores que uno puede cometer:
>- Decir que la nueva droga es mejor que la anterior **cuando eso no ocurre**.
>- Decir que la nueva droga es igual que las anteriores **cuando eso no ocurre**.
>
>Equivalente a: 
>- Decir que $\Theta > 0.3$ cuando $\Theta = 0.3$ 
>- Deicir que $\Theta = 0.3$ cuando $\Theta > 0.3$
>
>En términos del interés del científico, entonces lo que planteamos como problema de hipótesis es: $$H_0: \Theta = 0.3 \quad \text{vs.} \quad H_1: \Theta > 0.3$$
>Esto es equivalente a rechazar $H_0$ (decir que $\Theta > 0.3$) siendo $H_0$ verdadera (o sea, **que la nueva droga no es más eficiente**).
>Se realiza entonces una experiencia donde se toma una muestra aleatoria de individuos elegidos al azar de la población enferma, donde se administra la nueva droga. Se obtiene una muestra: $$X = (X_1, \dots, X_n)^t$$
>Sea $X_i \sim \text{Bi}(1, \Theta)$ independientes, $i = 1, \dots, n$. Sea $$S = \sum_{i=1}^n X_i$$
>el número de pacientes recuperados con la nueva droga. Entonces $S \sim \text{Bi}(n, \Theta)$. 
>Para plantear una **región de rechazo** para construir el test, observamos que la f.d.a. de $S$ cumple: $$P_{\Theta}(S \leq k) = F_{\Theta}(k) \text{ es decreciente en } \Theta \in (0, 1)$$
>para cada $k$ fijo. *(Este es un resultado que se puede probar.)*
>Luego, $S$ tiende a producir valores más grandes a medida que $\Theta$ crece, con lo cual podríamos decir:
>Rechazar $H_0$ si $S$ es más “grande” de lo que hubiéramos esperado por azar si $H_0: \Theta = 0.3$ es verdadera.
>Entonces, la región de rechazo resultaría:
>$$C = \left\{ X : S(X) > k \right\}, \quad \text{con } k \text{ a determinar}$$
>y el test resultaría: $$\varphi(X) = I_{[k,k+1,\ldots n]} S(x)$$






