---
dateCreated: 2024-11-26,12:16
---
>[!Remark] Ejercicio 9
>Por inducción en $A_{k+1}$ se tiene que
>$$ A_{k+1} = \left( \begin{array}{cc}A_k & b \\b^T & a_{k+1,k+1}\end{array} \right) \quad \text{con} \quad A_k = L_k D_k L_k^T$$
>Sea $L_{k+1}$:$$L_{k+1} = \left( \begin{array}{cc}L_k & 0 \\c^T & 1\end{array} \right)$$
>(que es triangular inferior)
>Sea $D_{k+1}$:$$D_{k+1} = \left( \begin{array}{c}D_k &\\&d_{k+1,k+1}\end{array} \right)$$
>Luego,
>$$L_{k+1} D_{k+1} = \left( \begin{array}{cc}L_k D_k & 0 \\c^T D_k & d_{k+1,k+1}\end{array} \right)$$
>$$L_{k+1} D_{k+1} L_{k+1}^T = \left( \begin{array}{cc}L_k D_k L_k^T & L_k D_k c \\c^T D_k L_k^T & c^T D_k c + d_{k+1,k+1}\end{array} \right)$$
>Entonces 
>$L_{k+1}D_{k+1}L_{k+1}^{T}=A_{k+1} \iff \begin{align} & 1) \ A_k = L_k D_k L_k^T \\ & 2) \ c^T D_k L_k^T = b^T \quad\land \quad L_k D_k c = b \\ & 3) \ a_{k+1,k+1}=c^{T}D_{k}c+d_{k+1,k+1}\end{align}$ 
>1) Vale por hipotesis
>2) Vale si $L_{k}D_{k}c=b$ como $D_{k}$ diagonael entonces inversible $L_{k}$ tambien inversible por que es triangular con 1s en la diagonal. Entonces definimos $c=D_{k}^{-1}L_{k}^{-1}b$ con lo cual se cumple 2)
>3) Luego tenemos $a_{k+1,k+1}=c^{T}D_{k}c+d_{k+1,k+1}$ entonces nos queda $d_{k+1,k+1}=a_{k+1,k+1}-c^{T}D_{k}c$
>Con esta definicion de $c$ se cumplen 1),2),3)  
6