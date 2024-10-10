---
dateCreated: 2024-09-19,23:07
tags:
  - AlgebraicStructures
  - Groups
---
> [!definition] Semigrupo
>Un conjunto no vacío de $G$ se dice semigrupo si tiene una opreacion no binaria
>$$ \begin{align*} *: G\times G & \rightarrow G \\
>(a,b) & \rightarrow a.b \end{align*} $$
>$*$ Es asociativa


>[!Remark] Monoide
>Un semigrupo se dice monoide si existe $e\in G$ llamado neutro que cumple $$e.a=a.e=a\quad\forall a\in G$$

>[!Remark] Grupo
>Un grupo es un monoide $G$ tal que $$\forall a\in G\quad\exists b\in G \ / \ a.b=b.a=e $$

>[!Definition] Grupo Conmutativo
> Sea $G$ un (semi) grupo, se dice conmutativo si $a.b=b.a \quad\forall a,b\in G$

>[!Proposition]
>Sea $G$ grupo. Entonces valen las siguientes propiedades:
>1. El neutro es unico
>2. El inverso de cada elemento $a\in G$ es unico
>>[!Proof]
>>a

>[!Proposition]
>Sea $G$ semigrupo entonces $G$ es grupo sii 
>1. $\exists e\in G$ tal que $e.a=a\quad \forall a\in G$
>2. $\forall a\in G\quad\exists a^{-1}\in G$ tal que $a^{-1}a=e$

>[!Remark]
>Sea $G$ grupo y sea $a\in G$ entonces $L_{a}:G\rightarrow G$ dada por $G_{a}(b)=a.b$ es biyectiva (pues la ecuacion $ax=c$ tiene solucion en $G$ ). Analogo con $R_{a}$

 