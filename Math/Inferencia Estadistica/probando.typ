#set enum(numbering: "(a)")

#block(stroke: luma(180), inset: 8pt, radius: 4pt)[
  *Theorem*

  Sea $(Omega, cal(A), P)$ un espacio de probabilidad y ${Z_n}_(n in NN_0) subset RR^d$ una sucesión de vectores aleatorios. Son equivalentes las siguientes afirmaciones:

  #pad(left: 1.5em)[
      + $Z_n arrow.r(cal(D))_(n -> infinity) Z_0$
      + $lim_(n -> infinity) E(h(Z_n)) = E(h(Z_0))$ para toda $h: RR^d -> RR$ acotada y uniformemente continua.
      + $lim_(n -> infinity) E(h(Z_n)) = E(h(Z_0))$ para toda $h: RR^d -> RR$ acotada y continua.
      + Para todo $F subset RR^d$ cerrado se cumple que $limsup_(n -> infinity) P(Z_n in F) <= P(Z_0 in F)$.
      + Para todo $G subset RR^d$ abierto se cumple que $liminf_(n -> infinity) P(Z_n in G) >= P(Z_0 in G)$.
    ]
  ]


#block(stroke: luma(180), inset: 8pt, radius: 4pt)[
  *Corollary*

  Sea ${Z_n}_(n in NN_0)$ una sucesión de vectores aleatorios en $RR^d$ definidos en un espacio de probabilidad $(Omega, cal(A), P)$. Si $Z_n arrow.r(cal(D))_(n -> infinity) Z_0$ y sea $g: RR^d -> RR^m$ una función continua. Entonces 
  
  $g(Z_n) -->_(n -> infinity) g(Z_0)$.
]

