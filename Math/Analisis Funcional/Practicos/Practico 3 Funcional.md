---
dateCreated: 2024-09-20,15:01
tags:
  - FunctionalAnalysis
  - Fourier
  - OrthogonalBasis
  - Separable
---
>[!Exercise]
>

>[!Exercise]
>Sea $\chi_{[0,1]}$ la función caracterstica del intervalo $[0,1]$ Probar que $$\{\chi_{[0,1]}(x-n)e^{2\pi im}\}_{n,m\in\mathbb{Z}}\}$$ es base ortonormal de $L^2(\mathbb{R})$ (llamada de Gabor). Deducir que $L^2(\mathbb{R})$ es separable 
>>[!proof]-
>>Veamos que los elementos de $E'=\{\chi_{[0,1]}(x-n)e^{ 2\pi imx }\}_{n,m\in \mathbb{Z}}$ son normales
>$$ (\chi_{[0,1]}(x-n_{1})e^{2\pi im_{1}x},\chi_{[0,1]}(x-n_{2})e^{2\pi im_{2}x}) =\int_{\mathbb{R}}\chi_{[0,1]}(x-n_{1})e^{2\pi im_{1}x}.\chi_{[0,1]}(x-n_{2})e^{2\pi im_{2}x} \quad (1)  $$
>>Pero notemos que si $i=1,2$ vale$$
>\chi_{[0,1]}(x-n_{i})= 
>\begin{cases}
1 & x \in[n_{i},n_{i}+1] \\
0 & cc
>\end{cases} $$
>>Por lo tanto (1) vale 0. Mostrando que dichas funciones son normales
>>Veamos ahora que $E'=\{\chi_{[0,1]}(x-n)e^{ 2\pi imx }\}_{n,m\in \mathbb{Z}}$ genera $L^{2}(\mathbb{R})$. Sabemos que tenemos BON de fourier de la pinta
$$E = \{ e^{ 2im\pi t }:m \in \mathbb{Z}\}$$
>>Y dada $f\in L^{2}(\mathbb{R})$ vale $$f = \sum_{n\in \mathbb{Z}}f^{n}$$
>>Con 
$$f^{n}(x)=f(x)\chi_{[n,n+1]}(x)=f(x)\chi_{[0,1]}(x-n)$$
>>Luego $${f^{n}(x)}=\sum_{m\in \mathbb{Z}}a_{m}^n(x)e^{ i 2m\pi x } = \left[  \sum_{m\in \mathbb{Z}}a_{m}^n(x)e^{ i 2m\pi x }\right] \chi_{[0,1]}(x-n) $$
Por que $f_{n}(x)$ se anula cuando $x-n\not\in[0,1]$ por definicion. Y sus coeficientes de Fourier 
$$a_{m}^n(x)=(f^{n}(x),e^{ i 2m\pi x })=(f^{n}(x),e^{ i 2m\pi x }\chi_{[0,1]}(x-n))$$
Finalmente tenemos
$${f(x)=\sum_{n\in \mathbb{Z}}}\sum_{m\in \mathbb{Z}}(f^{n}(x),e^{ i 2m\pi x }\chi_{[0,1]}(x-n))e^{ i 2m\pi x }\chi_{[0,1]}(x-n)$$
Mostrando que $E'$ genera y como ya sabias que era ortogonal entonces es BON de Hilbert
Por ultimo como $H'$ (*base de Gabor*) es BON y es numerable entonces 
$$\therefore L^{2} \text{ es separable}$$

