>[!Definition] Homomorfismo
>Sean $G$ y $H$ grupos. Un homomorfismo de grupos de $G$ a $H$ es una funcion $f:G\rightarrow H$ tal que $f(a.b)=f(a).f(b) \quad \forall a,b\in G$

>[!Remark] $G_{p}$ la categoria de grupos
>Objetos: Los grupos $G,H,K,\ldots$
>Morfismo: $G_{p}(G,H)=Hom_{G_{p}}(G,H) = \{ f:G\rightarrow H  \ | \ f \text{ homomorfismo} \}$. Donde 
>$$G_{p}(H,K)\times G_{p}(H,K)\rightarrow G_{p}(H,K)$$ 
>esta dada por la composicion de funciones

>[!Lemma]
>$f : G\rightarrow H$ homo entonces
>1. $f(e)=e$
>2. $\forall a\in G$ vale $f(a^{-1})=f(a)^{-1}$
>>[!Proof]-
>>a

>[!Remark] Grupo Trivial
>$\{ X \}$ es un grupo con $x.x=x$ (su neutro es $x$). Se lo denota $\{ e \}$ y se llama grupo trivial

>[!Remark] Ejemplos de morfimos dentro de $G_{p}$
>pagina 6 teo 3

>[!Definition]
>$f : G\rightarrow H$ homomorfismo de grupos entonces $f$ se dice:
>1. monomorfimos si es inyectiva
>2. epimorfismo si es sobreyectiva
>3. isomorfismo si es ambas
>
>En categorias en general (donde los morfimos no necesriamente son funciones):
>1. $f$ mono $\iff f.g=f.h \Rightarrow g=h$
>2. $f$ epi $\iff g.f=hf \Rightarrow g=h$

>[!Lemma]
>$f$ isomorfismo $\iff \exists g : H\rightarrow G$ homo de grupos ta $f.g=Id_{H} \quad g.f=Id_{G}$. Dicho $g$ se llama inverso de $f$

>[!Remark]
>Los grupos isomorfos suelen tratarse como "el mismo" grupo. Cuando dos grupos $G$ y $H$ son isomorfos lo denotamos $G\cong H$

>[!Remark]
>Sea $f : G\rightarrow H$ homomorfismo
>1. Si $G$ abeliano y $f$ epimorfismo $\Rightarrow H$ es abeliano
>2. Si $H$ abeliano y $f$ monomorfimo $\Rightarrow G$ es abeliano

>[!Definition]
>$a\in G$ entonces 
>1. $a^{n}=a^{n-1}.a$
>2. $a^{0}=e$
>3. Si $n\in \mathbb{Z}_{< 0}$ $a^{n}=(a^{-1})^{-n}=(a^{-n})^{-1}$

>[!Lemma]
>$a\in G$ y $n,m\in \mathbb{Z}$ entonces 
>$$a^{n+m} =a^{n} .a^{m} $$

>[!Definition] Subgrupo
>Sea $G$ grupo. Un subconjutno no vacio $H$ de $G$ se dice subgrupo si 
>$$a.b^{-1}\in H\quad a,b\in H $$
>Notacion $H \leqslant G$