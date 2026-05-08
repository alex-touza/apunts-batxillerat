#import "../../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "../figures.typ"
#import "../shortcuts.typ": *
#import "../envs.typ": *

= Camp gravitatori

== Planetes, òrbites i satèl·lits

=== Periastre i afoastre

#underline[P]eriastre, #underline[p]erigeu o #underline[p]eriheli: l'objecte que orbita es troba al punt més #underline[p]roper de l'objecte del centre.

#underline[A]poastre, #underline[a]fogeu o #underline[a]feli: l'objecte que orbita es troba al punt més #underline[a]llunyat de l'objecte del centre.

=== Eixos de l'el·lipse

$mag(a, name: "semieix major")$: radi llarg \
$mag(b, name: "semieix menor")$: radi curt

Si $r_A, r_P$ són les distàncies d'un objecte a l'astre del centre en l'afoastre i el periastre, es compleix que:

$
r_A + r_P = 2 a
$



=== Satèl·lit geoestacionari

Un satèl·lit geoestacionari té el mateix període que la Terra ($T = qty("24", "h")$) i orbita en un punt fix de la superfície. //#footnote[Mola más meter gol con el portero en la portería]

=== Radi i alçada

$mag(h, name: "alçada")$: distància de l'objecte a la superfície de l'astre

$mag(R, name: "radi")$: distància de la superfície al centre de l'astre

$mag(r, name: "radi orbital o distància")$: distància entre els centres de l'objecte i l'astre

$
r = h + R
$

== Lleis de Kepler

=== Primera llei de Kepler

L'òrbita de cada planeta és una el·lipse amb el Sol a un dels focus.

=== Segona llei de Kepler

El segment que uneix un planeta i el Sol escombra àrees iguals en temps iguals.

D'aquí es dedueix que, quan un planeta és més #underline[a prop] del Sol, la seva #underline[velocitat és més alta]; i que quan és més #underline[lluny], la #underline[velocitat és més baixa].

=== Tercera llei de Kepler

Es compleix, per a un conjunt d'òrbites el·líptiques al voltant d'un astre:

$
T^2 / a^3 = const
$

Si les òrbites són circulars, aleshores:

$
T^2 / r^3 = const
$

La constant s'anomena #underline[constant de Kepler] i és pròpia de cada sistema planetari.
== Gravitació

=== Llei de gravitació universal

$
F_g = G (M m) / r^2
$

=== Intensitat del camp gravitatori

$
F_g = m g = G (M m) / r^2 => demo(g = (G M)/ r^2, #12pt)
$

=== Potencial gravitatori

$
V_g = Epot / m = - (G M)/ r
$

=== Tercera llei de Kepler-Newton

A partir de la segona llei de Newton per a moviments circulars i la llei de gravitació universal, obtenim una expressió per la constant de Kepler:
$
F_c = m a_c =m omega^2 r = m (4 pi^2)/ T^2 r \

F_c = F_g <=> m (4 pi^2)/ T^2 r = G (M m) / r^2  <=> \ <=> demo( T^2 / r^3 = (4 pi^2) / (G M), #16pt)
$

== Energies i velocitats

=== Energia potencial gravitatòria

Per a altures "grans":

$
Epot = - G (M m)/r
$

Considerem que $Epot = 0 <=> r -> oo$
=== Energia mecànica

==== Òrbites obertes

$
Emec = Epot + Ecin = - G (m M) / r + 1/2 m v^2
$

==== Òrbites tancades

Sabent que el moviment és circular, obtenim una expressió per la velocitat:

$
v  = (2 pi r) / T => v^2 = (4 pi^2 r^2) / T^2
$

De la tercera llei de Kepler-Newton, tenim que: 

$
(4 pi^2) / (G M) = T^2 / r^3 <=> (4 pi^2 r^2) / T^2 = (G M)/ r => \ =>v^2 = G M /r
$

Substituïm a l'expressió anterior:

$
Emec = Epot + Ecin = \ = - G (m M) / r + 1/ 2G (m M)/r => \ => demo(Emec = -1/ 2G (m M)/r, #12pt)
$


==== Gràfic d'energies
#align(center, figures.gravity-energies())

$Emec < 0 =>$ òrbita tancada (el·lipse) \
$Emec > 0 =>$ òrbita oberta (hipèrbola) \
$Emec = 0 =>$ òrbita oberta (paràbola) \

=== Conservació de l'energia mecànica

$
Delta Emec = 0
$

Si es produeix un treball (e.g. per canviar d'òrbita), aleshores:

$
W = Delta Emec
$

=== Velocitat orbital

//Deducció similar a la de la Tercera llei de Kepler-Newton, però substituint-hi la velocitat.

$
F_c = m a_c = m v^2 / r \

F_c = F_g <=> = G (M m) / r^2 = m v^2 / r <=> \ <=> demo(v = sqrt((G M) / r), #14pt)
$

=== Velocitat d'escapament


Per allunyar-se indefinidament d'un astre, s'ha de complir que $Emec_f >= 0$. Aplicant la llei de conservació de l'energia mecànica:

$
Delta Emec = 0  <=> Emec_0 = 0 <=> 1/2 m v_e^2 = G (m M)/r <=> \ <=> demo(v_e = sqrt((2 G M)/ r), #14pt)
$

Si $Emec > 0$, l'energia sobrant serà energia cinètica que quedarà en la velocitat després d'escapar.

#colbreak()
== Moment angular

=== Definició

Útil en òrbites el·líptiques.

//#align(center, figures.angular-momentum())

$
arrow(L) = arrow(r) times arrow(p) = m (arrow(r) times arrow(v)) \ abs(arrow(L)) = m abs(arrow(r)) abs(arrow(v)) sin theta
$

on $arrow(r)$ és el vector distància des de l'astre al centre (e.g. el Sol) a l'objecte a l'òrbita (e.g. la Terra).


=== Principi de conservació del moment angular

$
Delta abs(arrow(L)) = 0
$

=== Relació entre el periastre i l'apoastre

En ambdós punts notables, $theta = qty("90", "degree")$.

$
abs(arrow(L_P)) = abs(arrow(L_A)) => m r_P v_P = m r_A v_A <=> \ <=> demo(r_P v_P = r_A v_A, #8pt)
$

on recordem que $r_A + r_P = 2 a$ on $a$ és el semieix major.
