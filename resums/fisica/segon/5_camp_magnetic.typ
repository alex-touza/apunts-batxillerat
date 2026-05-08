#import "../../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "../figures.typ"
#import "../shortcuts.typ": *
#import "../envs.typ": *

= Camp magnètic

== Imants


=== Propietats dels imants

- Quan s'apropen, apareix una força de d'atracció (Nord#{sym.dash.en}Sud) o repulsió (Nord#{sym.dash.en}Nord, Sud#{sym.dash.en}Sud)

- No existeix el monopol magnètic.


=== Direcció del camp magnètic


Les línies del camp magnètic #underline[surten del pol Nord] i #underline[entren pel pol Sud].

#align(center, image("../imatges/imant.svg", width: 125pt))

Les línies poden viatjar del pol d'un imant al pol contrari d'un altre imant.

#align(center, image("../imatges/dos_imants.png", width: 220pt))

=== Matèria i camp magnètic

- *Ferromagnetisme.* Fàcilment s'imanten.
- *Paramagnetisme.* Atracció molt feble.
- *Diamagnetisme.* Camp magnètic molt feble que només es manifesta en presència de camps externs.
- *Superconductivitat.* A temperatures molt baixes. No provoca moviments laterals en la repulsió.

/*
=== Magnituds bàsiques



==== Electricitat

$mag(I, "A", name: "intensitat elèctrica")$ \
*/

== Càlcul vectorial

=== Vectors unitaris

$ 
ai parallel X wide
aj parallel Y wide
ak parallel Z \

abs(ai) = abs(aj) = abs(ak) = 1 \
ai times aj = ak
$

#align(center,image("../imatges/eixos.png", width: 100pt))

=== Esquemes amb vectors tridimensionals

#align(center, canvas({
  import draw: *

  line((0.2 + 0.2, 0.2), (0 + 0.2, 0))
  line((0 + 0.2, 0.2), (0.2 + 0.2, 0))

  circle((0.3 + 4.5, 0.1), radius: 0.08, fill: black)

  content((2.3, 0.1), text(11pt)[Entra dins el paper])
  content((1.9 + 4.5, 0.1), text(11pt)[Surt del paper])
}))
/*
=== Producte vectorial

==== Definició
El producte vectorial $arrow(a) times arrow(b)$ és un vector $arrow(c)$ perpendicular a $arrow(a)$ i $arrow(b)$.

==== Expressió vectorial
$
arrow(c) = arrow(a) times arrow(b) = det(ai, aj, ak; a_1, a_2, a_3; b_1, b_2, b_3) = \ = ai det(a_2, a_3;b_2,b_3) - aj det(a_1,a_3;b_1,b_3) + ak det(a_1,a_2;b_1,b_2)
$

$
arrow(a) times arrow(b) = - arrow(b) times arrow(a)
$
==== Expressió en mòdul
$
abs(arrow(a) times arrow(b)) = abs(arrow(a)) abs(arrow(b)) sin theta
$

==== Direcció i sentit

#align(center, image("regla_mà_dreta_producte_vectorial.png", width: 140pt))

Regla de la mà dreta.

Mà estesa cap endevant amb el palmell cap a l'esquerra. Girar la mà des de la direcció de $arrow(a)$ fins a la de $arrow(b)$. El dit gros indica la direcció de $arrow(a) times arrow(b)$.
*/
/*
=== Regla de la mà dreta#footnote[No us oblideu de portar la mà dreta el dia de l'examen.]

Conseqüència del producte vectorial

==== Corrent elèctric#{sym.dash.en}Camp magnètic

==== Força magnètica#{sym.dash.en}Corrent elèctric#{sym.dash.en}Camp magnètic



Força magnètic resultant
*/
== Fonts de camp magnètic


$mag(mu, "T m /A", name: "permeabilitat magnètica")$

$
mu_0 = 4pi dot 10^(-7) #unit("T m/A") \
mu = mu_r mu_0
$

=== Intensitat del camp magnètic

$mag(arrow(B), "T", name: "intensitat del camp magnètic")$

$upright("T")$: Tesla, $upright("G")$: Gauss $wide qty("1","T") = qty("e4", "G")$

=== Fil conductor

==== Sentit i direcció

#align(center, image("../imatges/fil_conductor.svg", width: 100pt))

Corrent elèctric induït per un camp magnètic.

Regla de la mà #underline[dreta]:

- *Dit gros.* Sentit del corrent elèctric.
- *Quatre dits lleugerament tancats.* Sentit de gir del camp magnètic.

==== Intensitat del camp magnètic

Camp magnètic a #underline[un punt determinat]:

$mag(r, "m")$: distància del fil al punt d'estudi

$
B = (mu_0 I)/(2 pi r)
$


=== Espira

==== Sentit i direcció

#align(center,figures.magnetic-field-spiral())

Regla de la mà #underline[dreta] d'un fil conductor, amb el dit gros tangent a l'espira.

Alternativament, regla de la mà dreta per a una espira:

- *Dit gros.* Sentit del camp magnètic.
- *Quatre dits lleugerament tancats.* Sentit de gir del corrent elèctric.

==== Intensitat del camp magnètic

Intensitat del camp magnètic al #underline[centre de l'espira]:

$
B = (mu_0 I) / (2 r)
$

=== Solenoide o bobina

Format per $N$ espires.

==== Sentit i direcció

#align(center, image("../imatges/Coil_right-hand_rule.svg", width: 150pt))

Regla de la mà #underline[dreta] per a un solenoide:

- *Dit gros.* Direcció del corrent per l'espira i del camp magnètic resultant.
- *Quatre dits lleugerament tancats.* Sentit de gir de l'espira.


==== Polaritat de l'imant resultant
Pol Nord: per on surt el corrent elèctric \
Pol Sud: per on entra el corrent elèctric

==== Intensitat del camp magnètic

Camp magnètic a l'eix principal del solenoide:

$mag(L, "m", name:"longitud del solenoide")$
$
B = (mu_0 N I) / L \
$

Si té un nucli amb permeabilitat magnètica $mu$:

$
B = (mu N I) / L \
$



== Força magnètica

=== Força magnètica sobre conductors

Força generada per un camp magnètic damunt un fil de corrent $I$.

==== Expressió

$mag(arrow(L), "m")$: longitud de segment de fil dins el camp magnètic, amb la mateixa direcció que el corrent elèctric \
$mag(theta)$: angle entre el fil i el camp magnètic

$
arrow(F_m) = I (arrow(L) times arrow(B)) \
F_m = I L B sin theta
$

==== Direcció i sentit
#align(center, image("../imatges/regla_mà_dreta_força_magnètica.png", width: 100pt))
Primera regla de la mà #underline[dreta] per a la força magnètica:

- *Dit gros.* Direcció de la força magnètica.
- *Dit índex.* Sentit del corrent elèctric.
- *Dit del mig.* Direcció del camp magnètic.



=== Força magnètica sobre càrregues en moviment

$mag(q, "C", name: "càrrega elèctrica")$

$
I = q / t => arrow(F_m) = q / t (arrow(L) times arrow(B)) = q (1 / t arrow(L) times arrow(B)) => \

demo(arrow(F_m) = q (arrow(v) times arrow(B)), #8pt) \

F_m = abs(q) v B sin theta
$

Tenir en compte #underline[signe de la càrrega] $q$ en l'expressió vectorial.

=== Moviment circular uniforme en càrregues

==== Sentit de gir

Segona regla de la mà #underline[dreta]#footnote[Recordeu portar la mà dreta el dia de l'examen.] per la  força magnètica:

- *Dit gros.* Direcció de la força magnètica i de gir.
- *Dit índex.* Sentit de la velocitat de la càrrega.
- *Dit del mig.* Direcció del camp magnètic.



Si la càrrega és negativa, s'inverteix el sentit de la força magnètica.//#footnote[TODO: Diagrama de les trajectòries d'una partícula positiva i una partícula negativa]

==== Radi de gir

$mag(r, "m", name: "radi de gir")$ \
$mag(T, "s", name: "període")$ \

Suposant que $arrow(v) perp arrow(B)$:

$
F_c = F_m => m v^2 / r = abs(q) v B => demo(r = (m v)/(abs(q) B), #16pt)
$
$
F_c = F_m => m omega^2 r = abs(q) v B <=> \ <=> m omega^2 r = abs(q) omega r B  <=>omega = (abs(q) B) / m <=> \ <=> (2 pi) / T = (abs(q) B) / m  <=> demo(T = (2 pi m)/(abs(q) B), #16pt)
$


==== Treball de la força magnètica

Ja que la força magnètica és una força centrípeta, és perpendicular al vector del moviment.

$
theta = qty("90", "degree") => W = F Delta x cos theta = 0
$

== Electromagnetisme

=== Flux magnètic

$mag(arrow(S), "m^2",name: "vector superfície o normal")$: vector perpendicular al pla de l'espira amb mòdul igual a la seva superfície ($arrow(S) = S arrow(n)$). \
$mag(Phi, "Wb", name:"flux magnètic")$: quantitat de línies de camp magnètic que passen per una superfície

$
Phi = arrow(B) dot arrow(S) = B S cos theta
$
Si tenim $N$ espires:

$
Phi = N (arrow(B) dot arrow(S)) = N B S cos theta
$

=== Llei de Faraday-Lenz

==== Inducció electromagnètica

Quan es produeix una variació de flux magnètic, s'indueix un corrent elèctric tal que crea un camp magnètic que contraresti la variació del flux.

Exemple: variació de la distància entre una bobina i un imant.

#align(center, stack(
  dir: ltr,
  image("../imatges/lenz1.png", width: 128pt),
  image("../imatges/lenz2.png", width: 120pt)
))

==== Sentit i direcció

Regla de la mà dreta per a una espira, amb el sentit del camp magnètic invers.

==== Expressió

$"força electromotriu / tensió / diferència de"$$"potencial"$ $mag(epsilon, "V")$

$
epsilon = - (Delta Phi) / (Delta t) = - (dif Phi) / (dif t)
$

==== Casos possibles

$
epsilon = - (dif (B S cos theta)) / (dif t)
$

Per tal que $epsilon != 0$, és a dir, s'indueixi corrent elèctric, cal que es compleixi un d'aquests casos:

- La intensitat del camp magnètic varia, sovint perquè la font s'apropa.
$ Delta B != 0 => epsilon = - S cos(theta) (dif B(t)) / (dif t) $
- La superfície de la regió afectada pel camp magnètic varia.
$ Delta S != 0 => epsilon = - B cos(theta) (dif S(t)) / (dif t) $
- L'angle entre el camp magnètic i l'espira varia. S'indueix corrent altern.

== Corrent altern

Un alternador és un dispositiu que transforma energia cinètica de rotació en corrent elèctric.

=== Força electromotriu

$
 theta (t) = omega t  => \

epsilon(t) = - (dif Phi) / (dif t) = - dif / (dif t) (N B S cos (theta (t))) => \ =>demo(epsilon(t) = N B S omega sin (omega t), #8pt) \

I(t) = (epsilon (t)) / R = (N B S omega sin (omega t)) / R
$

=== FEM i intensitat màximes

$
sin (omega t) = plus.minus 1 => & abs(epsilon) = abs(epsilon_max) = N B S omega \
 &abs(I) =  abs(I_max) =( N B S omega )/ R = abs(epsilon_max) / R
$

=== Valors eficaços

Valor eficaç: valor real de voltatge o intensitat que permet generar un alternador

$
V_upright("e") = epsilon_max / sqrt(2), wide I_upright("e") = I_max / sqrt(2)
$

=== Potència
$mag(P, "W", name: "potència")$

$
P = V I = I R^2 = V^2 / R
$
=== Transformadors

Un *transformador* aprofita la inducció electromagnètica per canviar el voltatge i la intensitat d'un corrcomnient altern.

//transforma'm aquesta rahhhhh

#align(center, figures.transformer())


$p$: primari; $s$: secundari \
$N$: nombre de voltes
$
P_p = P_s => \ 
=> demo(V_p / V_s = I_s / I_p, #17pt) = N_p / N_s \
$


Transformador elevador: $V_s > V_p$ \
Transformador reductor: $V_s < V_p$ \
