---
dateCreated: 2024-10-02,22:03
---
>[!Corollary] 
>Si $x_{1},\ldots,x_{n} \in X$ son linealmente independientes entonces existe $f_{1},\ldots,f_{n}\in X'$ tal que $$f_{j}(x_{k})=\delta_{k_{j}} \quad 1\leq j,k\leq n$$
>>[!Proof]
>>Si $W=Sp\{ x_{1},\ldots,x_{n} \}$ por teo anterior $f_{1,W},\ldots,f_{n,W}\in W'$ que cumplen lo que queremos entonces por [[Teórico 10#^8c080d]] existen $f_{1,X} = f_{1}\in X'$ extensiones
>>

>[!Theorem]
>$X'$ separable entonces $X$ separable
>>[!Proof]
>> 1. Sea $B=\{ f\in X':\lVert f \rVert=1 \}\subseteq X'$ 
>> 2. Como $X'$ es separable $\exists F=\{ f_{j} \}\subseteq B$ tal que $F$ es denso en $B$ ($B$ separable porque $X'$ separable)
>> 3. Para $n\in \mathbb{N}$ sea $w_{n}$ con $\lVert w_{n} \rVert=1$ y $f_{n}(w_{n})\geq \frac{1}{2}$