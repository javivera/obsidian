---
dateCreated: 2024-10-17,15:32
---
>[!Corollary]
>Sea $G$ un *p-grupo* finito con $[G:S]=p$ entonces $S \trianglelefteq G$

>[!Proposition]
>$|G|=p^{n}$ con $n\in \mathbb{N}_{0}$ entonces:
>1. $G$ posee subrupos de orden $p^{i} \quad \forall 0\leq i\leq n$
>2. Si $0\leq i\leq n-1$ y $S\leq G$ con $|S|=p^{i}$ entonces $\exists$ subgrupo $T$ de orden $p^{i+1}$ tal que $S \trianglelefteq T$ 

>[!Remark]
>En esta seccion $G$ es grupo finito y $p$ primo 

>[!Definition] p-grupo de Sylow
>Un $p$-subgrupo de Sylow de $G$ es un subgrupo $H$  tal que $\lvert H \rvert =p^{n}$ donde $\lvert G \rvert =p^{n}k$ con $(p,k)=1$ 

>[!Theorem] Primer Teorema de Sylow
>Supongamos que $\lvert G \rvert =p^{n}k$ con $(p,k)=1$. Entonces $\forall 0\leq i\leq n$ tenemos que $G$ posee un subgrupo de orden $p^{i}$. En particular $G$ posee un $p$-Sylow 
>>[!Proof]
>> Pendiente copiar

>[!Theorem] Segundo Teorema de Sylow
>Sea $G$ grupo finito y $p$ primo. Sean $S\leq  G$ tal que $\lvert S \rvert =p^{i}$ con $i\in N_{0}$ y $H$ un *p-subgrupo de Sylow* de $G$ entonces $\exists a\in G$ tal que $S\trianglelefteq aHa^{-1}$. 
>En particular $S$ es *p-sylow* si y solo si $S$ y $H$ son conjugados
>>[!Proof]
>>pendiente

>[!Corollary]
>Sea $H\leq  G$ *p-sylow* entonces $H$ es el unico *p-sylow* de $G$ si y solo si $H\trianglelefteq G$ 
>>[!Proof]
>>$(\Rightarrow )$ Supongamos que no es normal entonces $aHa^{-1} = J$ con $J\neq H$ entonces por ser $J$ es conjugado de $H$ es *p-sylow*. Absurdo por que $H$ era el unico *p-sylow*
>>$(\Leftarrow)$ Existencia no se , se que existe alguno pero no se si es H. Unicidad supongamos que no es unico entonces $\exists J$ *p-sylow* , entonces $J=aHa^{-1}$ pero $aHa^{-1}=H$ por ser $H$ normal 

>[!Theorem] Tercer Teorema Sylow
>Sea $G$ grupo finito, $p$ primo y sea ${} n_{p}=\big\lvert \{\text{\textbf{p-sylow de } } G\} \big\rvert {}$ entonces $$n_{p}\bigg| \lvert G \rvert \quad \text{ y }\quad  n_{p}\equiv 1 (p)$$   

