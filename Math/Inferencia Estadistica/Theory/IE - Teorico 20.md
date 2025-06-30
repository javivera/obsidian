---
dateCreated: 2025-05-25,16:35
---

# Familias exponenciales

>[!Remark]
>Sea $(\Omega, \mathcal{A}, \mathbb{P})$ e.p. $(\Omega_X, \mathcal{F}_X, \mu)$, con $\mu$ medida σ-finita. Supongamos $\Omega_X \subseteq \mathbb{R}^m$ (y $\mu$ es medida de contar, o Lebesgue).

> [!Definition]
> Sea $T : (\Omega_X, \mathcal{F}_X) \to (\mathbb{R}^k, \mathcal{B}(\mathbb{R}^k))$ estadístico tal que:
>$$\int_{\Omega_X} e^{\eta^T T(x)} \, d\mu(x) < \infty \quad \text{para } \eta \in \mathbb{R}^k$$
>Definimos el **conjunto de parámetros**:
>$$\mathcal{E} = \left\{ \eta \in \mathbb{R}^k : \int_{\Omega_X} e^{\eta^T T} \, d\mu < \infty \right\}$$
>Se define la **medida de probabilidad**:
>$$\mathbb{P}_\eta(B) =\frac{\int_B e^{\eta^T T} \, d\mu}{\int_{\Omega_X} e^{\eta^T T} \, d\mu}\quad \text{para } B \in \mathcal{F}_X, \; \eta \in \mathcal{E}$$
>y la familia $\{ \mathbb{P}_\eta : \eta \in \mathcal{E} \}$ se llama **familia exponencial**.

>[!Remark]
>Una reescritura posible es:
>$$\mathbb{P}_\eta(B) = \left( \int_B e^{\eta^T T} \, d\mu \right)\left( \int_{\Omega_X} e^{\eta^T T} \, d\mu \right)^{-1}$$

