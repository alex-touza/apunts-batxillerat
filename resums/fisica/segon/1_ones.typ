#import "../../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "../figures.typ"
#import "../shortcuts.typ": *
#import "../envs.typ": *

= Ones

== Moviment harmònic simple



=== Equacions



#grid(columns: (2fr, 1fr), align: horizon)[
  
  $mag(A, "m", name: "amplitud")$ \  
  $mag(x, "m", name: "elongació")$ \  
  $mag(phi_0, "r", name: "fase inicial")$ \  
  $mag(omega, "r/s", name: "frequència angular")$
][
  #align(center)[
    $
    T = 1 / f \
    
    omega = 2pi f
    $
  ]
]




$

v(t) = (dif x)/(dif t) = - A omega sin(omega t + phi_0) \
a(t) = (dif v)/(dif t) = - A omega^2 cos(omega t + phi_0) \
a = -omega^2 x
$

$
sin(omega t + phi_0) = plus.minus 1 => abs(v) = abs(v_max) = A omega \
cos(omega t + phi_0) = plus.minus 1 => abs(a) = abs(a_max) = A omega^2
$

=== Desfassament

//#figures.smh-phase-shift()

Cas general: càlcul de la fase incial ($phi_0$) amb un instant i la seva posició aïllant  $cos$ o $sin$.

=== Forces

Moviment d'una molla. Segona llei de Newton i llei de Hooke.

  
$
cases(F = m a, F = -k x) => m a = - k x <=> \ <=> -m omega^2 x = - k x <=> demo( k = m omega^2, #4pt ) med #unitat("N/m") \


$


=== Energia
$
Ecin = 1 / 2 m v^2, wide Epot = 1 / 2 k x^2 \
Emec = Ecin + Epot\
Emec = Ecin_max = Epot_max =  1 / 2 k A^2 
$

Principi de conservació de l'energia $ Delta Emec = 0 $

#align(center, figures.smh-spring(pos: 5))

=== Pèndol simple

Si l'angle entre el pèndol i la vertical és menor de #qty("15", "deg"):

$
omega = sqrt(g / l)
$

== Ones a l'espai

=== Tipus d'ones

==== Segons el medi

- *Ones electromagnètiques.* Es poden propagar pel buit.
- *Ones mecàniques.* Es propaguen per un medi.

==== Segons la direcció

- *Ones transversals.* La direcció d'oscil·lació és perpendicular a la direcció de propagació.
- *Ones longitudinals.* La direcció d'oscil·lació i de propagació són la mateixa.

=== Equació d'ona

#grid(columns: 2)[
  #mag($k$, "m^-1", name: "nombre d'ones") \
  #mag($lambda$, "m", name: "longitud d'ona") \
  #mag($f$, "Hz", name: "freqüència") \
  $"velocitat de propagació"$ #mag($v$, "m/s")
][
  $

  omega = (2 pi) / T, wide k = (2 pi)/lambda \
  
  v = lambda / T = lambda f
  $
]

/*

  cases(
    "cap a la dreta"   & -> med -,
    "cap a l'esquerra" & -> med +,
  ) 

*/

$
y(x, t) = A cos(omega t plus.minus k x)
$
#align(center, figures.waves-equation())





== Fenòmens ondulatoris

=== Front d'ona

Conjunt de punts que es troben en el mateix estat d'oscil·lació (en fase).

=== Reflexió

Canvi de direcció de propagació d'una ona que xoca contra una superfície, de manera que l'angle incident $theta_1$ és igual a l'angle de reflexió $theta_2$.

$
v = const, lambda = const, f = const
$
//#align(center, figures.reflection())

=== Refracció

Canvi de direcció de propagació d'una ona quan travessa una superfície de separació entre dos medis amb velocitats de propagació diferents.

$
(sin theta_1) / (sin theta_2) = v_1 / v_2
$

La freqüència es manté constant. En conseqüència, la longitud d'ona varia.
/*
Si es tracta d'una ona de llum:

$
(sin theta_1) / (sin theta_2) = n_2 / n_1
$

On $n_i$ és l'índex de refracció:

$
n = c / v
$
*/
#align(center, figures.refraction())

=== Difracció

Quan les ones procedents d'una font quasi puntual troben una obertura de gruix $d$ tal que $lambda > d$ o $lambda approx d$, deixen de propagar-se en línia recta i s'obren.

#align(center, image("../imatges/difraccio.png", width: 120pt))

Quant més gran és la diferència entre $d$ i $lambda$, més difracció es produeix.

=== Efecte Doppler

Variació de la freqüència percebuda d'una ona pel moviment relatiu entre la font sonora i l'observador, amb la velocitat constant.
#align(center, figures.doppler())

#align(center, table(
  columns: 3,
  stroke: none,
  table.header[][*Al darrere*][*Al davant*],
  $lambda$, $arrow.t$, $arrow.b$,
  $f$, $arrow.b$, $arrow.t$,
))




=== Interferències

$
abs(x_1 - x_2) = k lambda
$

Hi ha *interferència constructiva* si $k$ és un nombre enter positiu. \
Hi ha *interferència destructiva* si $k = n slash 2$ per algun $n$ enter positiu.


== Ones estacionàries

$mag(L, "m")$: longitud del tub o la corda

=== Nodes i ventres
==== Definició

Un node és la posició d'#underline[oscil·lació nul·la]; on hi ha #underline[interferència destructiva]. \
Un ventre és la posició d'#underline[oscil·lació màxima]; on hi ha #underline[interferència constructiva].

==== Extrems

Al costat on el tub està #underline[obert], hi ha un #underline[ventre].
On el tub està #underline[tancat], hi ha un #underline[node].

==== Distàncies

Entre dos nodes o dos ventres: $lambda slash 2$. \
Entre un node i un ventre: $lambda slash 4$.


=== Velocitat de propagació

$mag(mu, "kg/m", name: "densitat lineal")$; 
$mag(T, "N", name: "tensió")$

$
v = sqrt(T / mu) = lambda f
$

#colbreak()
=== Corda lligada per ambdós extrems \ #sym.space

#align(center)[
*Harmònic fonamental*
#figures.stationary-wave(x => calc.cos(x / 2 + calc.pi / 2), 2, 1, (true, true))
*Segon harmònic*
#figures.stationary-wave(x => calc.cos(x + calc.pi / 2), 1, 1, (true, true))
]
==== Construcció dels harmònics

L'harmònic fonamental té un ventre al mig i nodes als extrems.

Els successius harmònics es construeixen afegint nodes equidistants.

==== Longitud i freqüència

$
L = n lambda / 2, wide
f_n = n f_1
$

$n$ correspon a l'índex de l'harmònic.

#colbreak()

=== Tub obert per un extrem i tancat per l'altre

//#align(center, figures.stationary-wave(x => calc.cos(x), 1, 1, (false, true)))

#align(center)[
*Harmònic fonamental*

#figures.stationary-wave(x => calc.cos(x / 4 - calc.pi), 1 / 4, 1 / 16, (false, true))
*#underline[Tercer] harmònic*
#figures.stationary-wave(x => calc.cos(3*x / 4 - calc.pi), 3 / 4, 9 / 16, (false, true))
]

==== Construcció dels harmònics

L'harmònic fonamental té un node a l'extrem tancat i un ventre a l'extrem obert.

Els successius harmònics es construeixen afegint nodes al mig.

==== Longitud i freqüència

$
L = (2n + 1) lambda / 4, wide
f_n = (2n+1) f_1
$

Com que $2n+1$ és el comptador de nombres senars, es sol parlar només de _primer_, _tercer_, _cinquè_... harmònic.


=== Tub obert pels dos extrems \ #sym.space

#align(center)[
*Harmònic fonamental*
#figures.stationary-wave(x => calc.cos(x / 2), 1 / 2, 1 / 4, (false, true))
*Segon harmònic*
#figures.stationary-wave(x => calc.cos(x), 1, 1, (false, true))
]


==== Construcció dels harmònics


L'harmònic fonamental té un node al mig i ventres als extrems.

Els successius harmònics es construeixen afegint nodes equidistants.

==== Longitud i freqüència

$
L = n lambda / 2, wide f_n = n f_1
$
$n$ correspon a l'índex de l'harmònic.

== Soroll


=== Nivell de percepció sonora
$mag(beta, "dB", name: "nivell de percepció sonora")$ \
$mag(I, "W/m^2", name: "intensitat sonora")$
$
beta = 10 log(I / I_ 0)
$

$mag(I_0, name: "Llindar auditiu")$
$
I_0 = qty("e-12", "W/m^2") => beta = qty("0", "dB")
$

//Són útils les propietats dels logaritmes: $ log(a b) = log (a) + log (b) \ log(a / b) = log(a) - log(b) $

=== Intensitat i potència sonora
$mag(P, "W", name: "potència sonora")$: constant, depèn de la font sonora \
$mag(S, "m^2", name: "superfície d'emissió")$ \
$
I = P / S
$

Una font sonora sovint s'emet en una esfera.
$
S_"esfera" = 4 pi r^2
$

$r$ és la distància de la font al punt on s'escolta.
/*
=== Variació de la la percepció respecte la distància

$
beta = 10 log(I_2/I_1) = 10 log((P slash 4 pi r_2^2) / (P slash 4 pi r_1^2)) <=> \
<=>Delta beta = 20 log(r_1/r_2)
$

Quan la distància es duplica, el nivell de perepció sonora creix en uns #qty("6,021", "dB"). \
Quan la distància es multiplica per $10$, el nivell de percepció sonora creix en #qty("10", "dB").
*/