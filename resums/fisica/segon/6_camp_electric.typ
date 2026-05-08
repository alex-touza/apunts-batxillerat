#import "../../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "../figures.typ"
#import "../shortcuts.typ": *
#import "../envs.typ": *


= Camp elèctric

== Camp elèctric

=== Camp elèctric segons potencials

==== Sentit

El camp elèctric va de potencials alts (pol $+$) a potencials baixos (pol $-$).

==== Fórmula

$mag(arrow(E), #("V/m", "N/C"), name: "intensitat del camp elèctric")$ \
$mag(Delta V, "V", name: "diferència de potencial")$ \
$mag(d, "m")$: distància entre els potencials

$
E = (Delta V) / d
$

=== Força elèctrica

$mag(q, "C", name: "càrrega elèctrica")$

$
F_"e" = q E
$

=== Moviments espontanis

Una càrrega $q$ té tendència a moure's cap a un pol de signe contrari:

- Una càrrega positiva ($+$) es mou espontàniament a potencials baixos.
- Una càrrega negativa ($-$) es mou espontàniament a potencials alts.

=== Treball per desplaçar una càrrega en un camp


Segons el signe de la càrrega i el sentit del desplaçament, el treball serà o bé exercit  pel camp o bé extern.

Es pot (a) raonar l'origen del treball i calcular-lo en valor absolut, o (b) aplicar les fórmules següents per obtenir un treball positiu.



==== Energies i treball

Pel principi de conservació d'energia mecànica:

$
Delta Emec = 0 => Delta Ecin + Delta Epot = 0 <=> \ <=> Delta Ecin = -Delta Epot = W <=>
\ <=> W = Epot_0 - Epot_f = q V_0 - q V_f = - q Delta V
$
==== Treball pel camp

Moviment espontani. \ La càrrega $q$ i la diferència de potencial $Delta V = V_f - V_o$ tenen signe diferent.

$
W_"camp" = - q Delta V
$

==== Treball extern

Moviment no espontani. \ La càrrega $q$ i la diferència de potencial $Delta V = V_f - V_o$ tenen el mateix signe.

$
W_"extern" = q Delta V
$
/*
== Màquines

=== Condensador de plaques paral·leles
*/

== Problemes de dinàmica i cinemàtica

=== Desviació de càrregues

==== Moviment

Una càrrega circula per una regió amb un camp elèctric perpendicular a la seva velocitat inicial. Moviment parabòlic (MRU + MRUA).

==== Expressió de l'acceleració

Amb la segona llei de Newton, trobem l'acceleració:

$
sum arrow(F_y) = arrow(F_e) = m arrow(a) => \ => m a = abs(q) E => a = (abs(q) E) / m
$


==== Pes

Només cal considerar el pes si la massa és considerable (e.g. un mol, però no una partícula).

=== Equilibri de forces

#underline[Tenint en compte el pes], apliquem la primera llei de Newton per obtenir la força elèctrica.

$
sum arrow(F) = 0
$
== Interaccions entre càrregues

=== Sentit del camp elèctric

El camp surt de càrregues positives i entra a càrregues negatives.

#align(center, figures.electric-field-charges-sign())


=== Permitivitat elèctrica i constant de Coulomb

==== Permitivitat elèctrica

$mag(epsilon, name: "permitivitat elèctrica")$

Permitivitat al buit: $ epsilon_0 = qty("8,854e-12", "C^2 N^-1 m^2") $

==== Constant de Coulomb

$mag(k, name: "constant de Coulomb")$

$
k = 1 / (4 pi epsilon_0) = qty("8,987e9", "N m^2 /C^2")
$

=== Camp elèctric d'una càrrega

$arrow(u_r)$: vector unitari en direcció radial amb sentit cap a fora

$
arrow(E) = k q / r^2 arrow(u_r)
$

=== Força de Coulomb

Força entre dues càrregues.

$mag(r, "m")$: distància entre les càrregues

$
arrow(F) = k (q_1 q_2) / r^2 arrow(u_r) = q arrow(E)
$

=== Potencial elèctric

==== Expressió segons càrrega

$mag(V, "V", name: "potencial elèctric")$

$
V = k q / r
$

==== Diferència de potencial

$
Delta V = V_"f" - V_0 = - integral_(x_0)^x_"f" arrow(E) dot dif arrow(x)
$

=== Energia potencial elèctrica

$mag(Epot, "J")$

$
Epot = k (q_1 q_2) / r 
$



=== Principi de superposició

==== Camp elèctric total

El camp elèctric en un punt és la suma vectorial.

$
arrow(E_t) = sum arrow(E_i)
$

==== Potencial elèctric total

El potencial elèctric en un punt és la suma de tots els potencials.

$
V_t = sum V_i
$

=== Intensitat elèctrica

==== Quantitat de càrregues

$mag(I, "A", name:"Intensitat elèctrica")$: quantitat de càrregues per segon
$
I = q / t
$

==== Llei d'Ohm

$mag(R, "ohm", name: "resistència elèctrica")$

$
I = V / R
$