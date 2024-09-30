---
dateCreated: 2024-09-30T18:57:00
tags:
  - FunctionalAnalysis
  - vectorSpace
---
>[!Lemma]
>Todo entorno del 0 es un entorno balanceado del 0
>>[!Proof]
>>a

>[!Lemma]
>Todo entorno del 0 contiene un entorno balanceado del 0

>[!Definition]
>$E\subseteq X$ espacio vectorial topologico es acotado si $\forall U$ entorno del 0 $\exists r>0 \ /\ E\subseteq tU\quad\forall t>r$

>[!Remark]
>En un espacio metrico $(X,d)$ decimos que $E$ es acotado si $d(x,y)\leq M$. Esta def en general no coincide con la anterior. Reemplazo $d$ por la metrica
>$$d_{1}= \frac{d}{d+1}$$
>Esta induce la misma topologia pero no coinciden (de hecho todos los conjuntos con $d_{1}$ son acotados)

>[!Remark]
>Si $X$ es normado y $d$ la distancia inducida por la norma entonces si coinciden. 
>>[!Proof]
>>a

>[!Theorem] 1.15
>$X$ espacio vectorial topologico $U$ entorno del 0 entonces
>1. $\forall$ sucesion $0<r_{n}\rightarrow\infty$ tenemos $X=\bigcup^{\infty}r_{n}U$
>2. $K$ compacto entonces $K$ acotado
>3. Si $U$ acotado $\forall$ sucesion $0<\delta_{n}\rightarrow 0$ tenemos $\{ \delta_{n}U:n\in \mathbb{N} \}$ es base local numerable
>>[!Proof]
>>a

>[!Definition]
>$X$ espacio vectorial topologicodecimos:
>