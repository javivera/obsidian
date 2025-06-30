>[!Remark]
>![[Pasted image 20250524162220.png|900]]
>

^c1fdba

>[!Remark]
>![[Pasted image 20250524162320.png]]

^8c8076

>[!Remark]
>1. Veamoslos. $A:= U-E[U|\mathcal{G}]$ y $B:=E[U|\mathcal{G}]-E(U)$
>2. Luego $$E\big[(U-E[U|\mathcal{G}])(E[U|\mathcal{G}]-E(U))^{T}\big]=E(AB^{T})=E\big[E(AB^{T}|\mathcal{G})\big]=E[E(A|\mathcal{G})]B^{T}$$ esto es por que $B$ es $\mathcal{F}$-medible
>3. Y finalmente usamos $E[E(A|\mathcal{G})]=E[E(U-E[U|\mathcal{G}])]=E(U)-E[E(U|\mathcal{G})]=0$
>4. Mas facil hubiera sido notar que $E(U|\mathcal{G})-E(U)$ es $\mathcal{G}$-medible
>5. Ademas pertenece a $L^{2}(P)$ por que ${} ||E(U|\mathcal{G})||^{2}\leq E(||U|\mathcal{G}||^{2}) {}$ ($\phi(x)=||x||^{2}$ es convexa y medible Desigualdad de Jensen)
>6. Entonces usando esperanza de ambos lados $E||E(U|\mathcal{G})||^{2}\leq E||U||^{2}< \infty$ 
>7. Y trivialmente $E(U)\in L^{2}(P)$ 
>8. entonces usando la definicion de ortogonalidad considerando que $E(U)^{2}<\infty$ osea $U\in L^{2}(P)$  $$<U-E(U|\mathcal{G}),Z>=0\quad\forall Z\in L^{2}(P,\mathcal{G}) $$

^a52882
