---
epoch: 1753027647000
modelKey: gemini-2.5-pro|google


tags:
  - copilot-conversation

---

**user**: how did you call this propery

>[!Remark]
>Como $\mathcal{G}$ es $\sigma$-algebra sabemos que $\Omega\in \mathcal{G}$. Entonces cuando tomamos $\mathcal{G} = \Omega$ se cumple que
>$$\int_\Omega X \, d\mathbb{P} = \int_\Omega \mathbb{E}(X \mid \mathcal{G}) \, d\mathbb{P}$$
>Mostrando que $$\mathbb{E}(X) = \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))$$
[Timestamp: 2025/07/20 13:07:27]

**ai**: Esa propiedad se conoce comúnmente como la **Ley de la Expectativa Total** o la **Ley de Expectativas Iteradas**. En inglés, se le llama *Law of Total Expectation* o *Tower Property*.

Establece que el valor esperado de una variable aleatoria $X$ es igual al valor esperado de su esperanza condicional con respecto a una $\sigma$-álgebra $\mathcal{G}$. La fórmula que muestras es la expresión matemática de esta ley:

$$\mathbb{E}(X) = \mathbb{E}(\mathbb{E}(X \mid \mathcal{G}))$$
[Timestamp: 2025/07/20 13:07:38]