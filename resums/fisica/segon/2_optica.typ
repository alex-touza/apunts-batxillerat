#import "../../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "../figures.typ"
#import "../shortcuts.typ": *
#import "../envs.typ": *

= Òptica

== Llum
#figure(scope: "parent", placement: bottom, figures.em-wave())


=== Ona electromagnètica

Les ones electromagnètiques estan formades per una oscil·lació d'un camp elèctric i una oscil·lació d'un camp magnètic.

Les longituds d'ona $lambda$ i freqüències d'oscil·lació $f$ d'ambdós camps són iguals.

=== Velocitat de propagació

$
v = lambda f
$

Al buit, les ones electromagnètiques es propaguen amb una velocitat de $c = qty("3e8", "m/s")$

=== Espectre electromagnètic

Les propietats de les ones electromagnètiques es classifiquen segons la freqüència o la longitud d'ona.

=== Polarització de la llum

Els camps d'una ona electromagnètica oscil·len en moltes direccions diferents al llarg del temps.

Un *filtre polaritzador* absorbeix les ones en direccions concretes, de manera que la llum que en surt només oscil·la en un pla determinat.

Així, quan la direcció d'oscil·lació dels camps roman constant en el temps, es tracta d'una *ona polaritzada plana*.

== Refracció

=== Índex de refracció

$mag(c = qty("3e8", "m/s^2"), name: "velocitat de la llum")$

$
n = c / v
$

Al buit, $v=c => n = 1$ \ A qualsevol altre medi, $v < c => n > 1$

=== Llei de Snell

Relació entre l'angle d'incidència $theta_1$ i l'angle de refracció $theta_1$ en passar d'un medi amb índex de refracció $n_1$ a un altre amb índex de refracció $n_2$.

$
v_2 sin theta_1 = v_1 sin theta_2 <=> \ <=>
n_1 sin theta_1 = n_2 sin theta_2
$

=== Angle límit

Angle d'incidència $theta_c$ tal que el raig refractat surt amb un angle recte respecte la normal.


$
theta_2 = qty("90", "deg") => n_1 sin theta_c = n_2 <=> \ <=> demo(theta_c = arcsin n_2 / n_1, #1.25em)
$

=== Refracció total

Quan l'angle d'incidència $theta_1$ és superior a l'angle límit $theta_c$, el raig es reflecteix completament en la superfície i retorna al medi de procedència.

== Característiques de les lents

=== Definició

Les lents són dues superfícies esfèriques entre les quals es produeix una refracció.

Es suposarà que són lents primes; no es té en compte que el gruix de la lent.

=== Objecte i focus

==== Punts focals

Les lents tenen dos punts focals, un a cada costat de la lent: el *punt focal objecte* $F$ i el *punt focal imatge* $F'$.

==== Distància focal
La *distància focal objecte* $f$ i la *distància focal imatge* $f'$ són la distància de la lent als punts focals corresponents.

Si el medi és el mateix a ambdós costats de la lent, aleshores $f = -f'$.

==== Distància a objecte i imatge

$mag(s, name: "distància de l'objecte a la lent")$ \
$mag(s', name: "distància de la imatge a la lent")$

=== Raigs

Els raigs surten de l'objecte, però es poden extendre al sentit contrari des del mateix objecte o a la lent per tal de trobar la imatge.#footnote[Per aquest motiu, diem "la recta passa" i no "el raig passa", ja que el raig podria no passar-hi però la seva extensió sí.]

==== Recta que passa pel punt focal objecte
Un raig que apunta al punt focal objecte, es refracta per ser paral·lel a l'eix òptic.

==== Paral·lel a l'eix òptic
Un raig que viatja paral·lel a l'eix òptic, es refracta de manera que la recta passa pel punt focal imatge.

==== Pel centre de la lent
Un raig que passa pel centre de la lent #underline[no es refracta].

=== Formació d'imatges

Quan els raigs s'uneixen en un punt, es forma una imatge.

Si es forma davant de la lent ($s' > 0$), la imatge és #underline[real]. \ Si es forma darrere de la lent ($s' < 0$), la imatge és #underline[virtual]

== Càlculs amb lents

=== Criteri de signes

==== Posició

Criteri convencional. \ A dalt, positiu; a baix, negatiu; a l'esquerra, negatiu; a la dreta: positiu.

==== Imatges i lents
#align(center, table(
  columns: 2,
  stroke: none,
  [Imatge virtual], $s' < 0$,
  [Imatge real], $s' > 0$,
  table.hline(),
  [Imatge dreta], $y' > 0 $,
  [Imatge invertida], $y' < 0$,
  table.hline(),
  [Lent convergent], $f' > 0$,
  [Lent divergent], $f' < 0$,
))
=== Potència òptica

$mag("P", #[D], name: "potència de la lent", nounit: #true)$: expressada en #text(hyphenate: false)[#underline[diòptries]] si la distància focal imatge està en metres.

$
P = 1 / f'
$

=== Augment

$mag(y, "m", name: "alçada de l'objecte")$ \
$mag(y', "m", name: "alçada de la imatge")$ \
$mag(A, "1", name: "augment o ampliació")$

$
A = s' / s = y' / y
$

$A < 0 =>$ La imatge està #underline[invertida]. \
$A> 0 => $ La imatge està #underline[dreta].

=== Equació de lents primes

$
1 / f' = 1 / s' - 1 / s \ 1 / f = 1 / s - 1 / s'
$

== Tipus de lents i miralls

=== Lents convergents

Són lents #underline[convexes]. \
Els raigs #underline[s'uneixen] en passar per la lent. \
S'indiquen amb dues fletxes als extrems de la lent (#sym.arrow.t.b). \
Tenen el #underline[focus imatge a la dreta] ($f' > 0$).

- Si l'objecte està #underline[entre el focus i la lent]: la imatge és #underline[dreta], #underline[virtual] i #underline[major] que l'objecte.
- Si l'objecte està #underline[darrere el focus]: la imatge és #underline[invertida] i #underline[real].

=== Lents divergents

Són #underline[lents còncaves]. \
Els raigs es #underline[separen] en passar per la lent. \
S'indiquen amb dues fletxes invertides ls extrems de la lent. \
Tenen el #underline[focus imatge a l'esquerra] ($f' < 0)$.


La imatge és #underline[virtual], #underline[dreta] i #underline[menor] que l'objecte.


=== Mirall pla

Un *mirall pla* reflecteix els raigs que hi arriben. Es considera com un mirall esfèric de radi i distància focal infinits: $f' -> oo$

No genera cap augment ni reducció: $A=1$.

Com és una reflexió, es compleix que $s = s'$

== L'ull humà i sistemes òptics

=== Parts de l'ull

La *còrnia* i el *cristal·lí* són lents convergents: la còrnia té contacte amb l'exterior, i el cristal·lí, ajuda a focalitzar la imatge en la *retina*, on hi ha les cèl·lules sensibles a la llum ---cons i bastons--- que transmeten un senyal a través del *nervi òptic.*

La *pupil·la* és l'obertura per on entra la llum, que augmenta o disminueix amb els músculs de l'*iris*.

=== Punt proper

Quan s'enfoca un objecte proper, el múscul ciliar es tensa i curva el cristal·lí perquè els raigs convergeixin en la retina.

El punt a partir del qual no es pot una imatge s'anomena *punt proper*. Objectes més propers tindran una imatge borrosa.

=== Anomalies de l'ull

==== Miopia

A causa d'un globus ocular massa #underline[llarg] axialment, els feixos de llum #underline[convergeixen abans] d'arribar a la retina. Objectes #underline[llunyants] borrosos.

Es corregeix amb #underline[lents divergents] (ulleres amb lents còncaves)

==== Hipermetropia

A causa d'un globus ocular massa #underline[curt] axialment, els feixos de llum #underline[no arriben a convergir] a la retina. Objectes #underline[propers] borrosos.

Es corregeix amb #underline[lents convergents] (ulleres amb lents convexes).

==== Astigmatisme

Curvatures de la còrnia de radi diferent --- i.e. no esfèrica--- que causen que la convergència dels feixos de llum no es doni en un sol punt, cosa que genera una imatge borrosa.


==== Presbícia o vista cansada

Augment de la distància al punt proper a causa de la pèrdua de la capacitat del múscul ciliar de curvar la còrnia i el cristal·lí.

Calen unes ulleres per focalitzar objectes propers.

=== Altres sistemes òptics
==== La lupa

Una *lupa* està formada per #underline[una lent convergent]. 

Situant un objecte entre la lent i el focus, se n'observa una imatge ampliada.

==== El microscopi

Un *microscopi* està format per #underline[dos lents convergents]: l'objectiu i l'ocular.

$
A_"microscopi" = A_"objectiu" dot A_"ocular"
$