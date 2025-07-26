>[!Example]
>Se observan los resultados de $n$ ensayos independientes $X_1, \dots, X_n$, que son variables aleatorias idénticamente distribuidas (v.a.i.i.d).
>$X_i \in \{1, 2, \dots, k\}$. La probabilidad de cada resultado es:
>$$ P(X_i = j) = \lambda_j \quad \forall j \in \{1, \dots, k\} $$
>donde $0 < \lambda_j < 1$ para todo $j$, y $\sum_{j=1}^k \lambda_j = 1$. Se puede despejar $\lambda_k = 1 - \sum_{j=1}^{k-1} \lambda_j$.
>
>Sea el estadístico $T_j$ que cuenta la cantidad de veces que ocurre el resultado $j$:
>$$ T_j(X_1, \dots, X_n) = \sum_{i=1}^n I_{\{j\}}(X_i), \quad j \in \{1, \dots, k\} $$
>Se cumple que $\sum_{j=1}^k T_j = n$, por lo que $T_k = n - \sum_{j=1}^{k-1} T_j$.
>El vector de conteos es $T=(T_1, \dots, T_k)^t$. Como una de las componentes es función de las otras, podemos considerar el vector reducido $\tilde{T}_{k-1} = (T_1, \dots, T_{k-1})^t$.
>
>El vector de parámetros es $\lambda = (\lambda_1, \dots, \lambda_k)^t$. El espacio paramétrico es el simplex:
>$$ \Lambda_{k-1} = \{\lambda \in \mathbb{R}^k : 0 < \lambda_j < 1, \sum_{j=1}^k \lambda_j = 1\} $$
>
>La función de probabilidad puntual de la muestra $X = (X_1, \dots, X_n)$ es:
>$$ p(x|\lambda) = P(X_1=x_1, \dots, X_n=x_n) = \prod_{i=1}^n P(X_i=x_i) $$
>donde $x=(x_1, \dots, x_n)$ es una realización de la muestra, y el parámetro $\lambda \in \Lambda_{k-1}$.
>Se puede reescribir la probabilidad de una observación $X_i=x_i$ usando funciones indicadoras. Si $x_i \in \{1, \dots, k\}$, entonces:
>$$ P(X_i = x_i) = \lambda_1^{I_{\{1\}}(x_i)} \cdot \lambda_2^{I_{\{2\}}(x_i)} \cdots \lambda_k^{I_{\{k\}}(x_i)} = \prod_{j=1}^k \lambda_j^{I_{\{j\}}(x_i)} $$
>Entonces, la función de probabilidad puntual de la muestra es:
>$$\begin{align*} p(x|\lambda) &= \prod_{i=1}^n \left( \prod_{j=1}^k \lambda_j^{I_{\{j\}}(x_i)} \right) \\ &= \prod_{j=1}^k \lambda_j^{\sum_{i=1}^n I_{\{j\}}(x_i)} \\ &= \prod_{j=1}^k \lambda_j^{T_j(x)} \end{align*}$$
>
>De esta manera, la función de verosimilitud se puede escribir como:
>$$ p(x|\lambda) = \lambda_1^{T_1(x)} \cdots \lambda_k^{T_k(x)} \cdot h(x) $$
>donde $h(x) = \prod_{i=1}^n I_{\{1, \dots, k\}}(x_i)$ vale 1 si todas las observaciones están en el conjunto $\{1, \dots, k\}$ y 0 en caso contrario.
>
>La expresión se puede reescribir en forma exponencial:
>$\begin{align*} p(x|\lambda) &= \exp(T_1(x)\log\lambda_1) \cdots \exp(T_k(x)\log\lambda_k) \cdot h(x) \\ &= \exp\left( \sum_{j=1}^k T_j(x) \log\lambda_j \right) \cdot h(x) \end{align*}$

