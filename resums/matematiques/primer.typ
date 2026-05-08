#import "shortcuts.typ": *

= Nombres reals

== Nombres reals

=== Expressions decimals de nombres racionals

- *Nombre decimal exacte.* Nombre finit de xifres decimals.
- *Nombre decimal periòdic.* Nombre infinit de xifres decimals.

  - *Anteperíode.* Xifres que no es repeteixen.
  - *Període.* Seqüència de xifres que es repeteixen.

=== Fracció generatriu

La *fracció generatriu* és l'expressió d'un nombre decimal periòdic. S'expressa com

$
"totes les xifres" - "xifres abans del període" $

dividit entre

$ "tants 9 com xifres del període" union \  union"tants 0 com xifres de l'anteperíode"
$

== Logaritmes

=== Definició

$
x =log_a N <=> a^x = N \
a > 0 and a !=1
$

=== Notació

==== Logaritme neperià

$
ln x = log_e x
$

==== Logaritme decimal

$
log x = log_10 x
$

=== Propietats dels logaritmes

$
log_a 1 =0 \
log_a a = 1
$

$
log_a (A B) = log_a A + log_a B \
log_a (A / B) = log_a A - log_a B
$

$
log_a (A^n) = n log_a A
$

=== Canvi de base

$
log_a N = (log_b N) / (log_b a)
$

= Combinatòria

== Binomi de Newton

=== Nombres combinatoris

$
vec(m n) = (m!)/(n!(m-n)!)
$
#stack(dir: ltr, image("triangle_pascal_comb.png", height: 110pt), image("triangle_pascal.png", height: 110pt))

=== Binomi de Newton

$
(a+b)^n = sum_(k=0)^n vec(n, k) a^(n-k) b^k, \ (a-b)^n = sum_(k=0)^n (-1)^k vec(n, k) a^(n-k) b^k
$


= Trigonometria

== Raons trigonomètriques

=== Raons fonamentals

#align(center, image("raons_trig.png", width: 150pt))

$
sin accent(B, hat) = ("catet oposat") / ("hipotensusa") = b / a \
cos accent(B, hat) = ("catet adjacent") / ("hipotensusa") = c/ a \
tan accent(B, hat) = ("catet oposat") / ("catet adjacent") = b / a \
$

=== Raons inverses

$
cosec accent(B, hat) = 1 / (sin accent(B, hat)) \
sec accent(B, hat) = 1 / (cos accent(B, hat)) \
cotan accent(B, hat) = 1 / (tan accent(B, hat))
$

=== Valors de les raons trigonomètriques

#table(
  columns: 8, stroke: none, align: horizon + center,
  $"deg"$, qty("0", "deg"), qty("30", "deg"), qty("45", "deg"), qty("60", "deg"), qty("90", "deg"), qty("180", "deg"),qty("270", "deg"),
  $"rad"$, $0 $, $pi slash 4$,$pi slash 2$,$ 3pi slash 4$, $pi$, $2pi$, $3pi$,
  table.hline(),
  $sin$, table.vline(), $ 0 $ , $ 1/2 $, $ sqrt(2)/2 $, $ sqrt(3)/2 $, $ 1 $, $ 0 $, $ -1 $,

  table.hline(stroke: 0.5pt),
  
  $cos$, $ 1 $, $ sqrt(3) / 2 $, $ sqrt(2) / 2 $, $ 1 / 2 $, $ 0 $, $ -1 $, $0$,
  table.hline(stroke: 0.5pt),
  
  $tan$, $ 0  $, $ sqrt(3) / 3 $, $ 1 $, $ sqrt(3) $, $ exists.not $, $ 0 $, $ exists.not $
  
)

== Relacions entre les raons trigonomètriques
=== Relació fonamental de la trigonometria
$
sin^2 alpha + cos^2 alpha = 1
$

=== Relacions amb la tangent
$
tan alpha = (sin alpha) / (cos alpha), wide
1 + tan^2 alpha = 1 / (cos^2 alpha)
$

=== Relacions amb angles


==== Angles complementaris
$
sin(qty("90", "deg") - alpha) = cos alpha \
cos(qty("90", "deg") - alpha) = sin alpha \
tan(qty("90", "deg") - alpha) = cotan alpha
$

==== Angles negatius

$
sin(-alpha) = - sin alpha \
cos(-alpha) =  cos alpha \
tan(-alpha) = - tan alpha \
$

=== Suma i diferència d'angles

$
sin(alpha plus.minus beta) = sin alpha cos beta plus.minus cos alpha sin beta \
cos(alpha plus.minus beta) = cos alpha cos beta minus.plus sin alpha sin beta \
tan(alpha plus.minus beta) = (tan alpha plus.minus tan beta) / (1 minus.plus tan alpha tan beta)
$

=== Angle doble

$
sin 2 alpha = 2 sin alpha cos alpha \
cos 2 alpha = cos^2 alpha - sin^2 alpha \
tan 2 alpha = (2 tan alpha) / (1 - tan^2 alpha)
$

== Teoremes del sinus i cosinus

Siguin $a,b,c$ els costats d'un triangle qualsevol i $accent(A, hat), accent(B, hat), accent(C, hat)$ els angles oposats a cadascun dels costats.

=== Teorema del sinus

$
a / (sin accent(A, hat)) = b / (sin accent(B, hat))  = c / (sin accent(C, hat)) 
$

=== Teorema del cosinus

$
a^2 = b^2 + c^2 - 2 b c cos accent(a, hat)
$

= Successions

== Progressions aritmètiques i geomètriques

=== Progressió aritmètica

==== Definició
$d$: diferència

$
a_n = a_1 + (n-1) d
$

==== Suma dels primers $n$ termes
$
S_n = (n(a_1 + a_n))/2 
$

=== Progressió geomètrica

==== Definció
$r$: raó

$
a_n = a_1 r^(n-1)
$

==== Suma dels primers $n$ termes

$
S_n = (a_1(r^n - 1)) / (r - 1)
$
= Límits i continuïtat

== Càlcul de límits

=== Indeterminació $oo - oo$

Multiplicar i dividir pel conjugat.

=== Indeterminació $1^oo$

Sabent que $ lim_(x->oo) (1 + 1 / P(x))^P(x) = e $transformem el límit en aquesta expressió.

Si es té que $ lim_(x->oo) (1 + 1/ P(x))^Q(x) $ aleshores fem que $ lim_(x->oo) (1 + 1/ P(x))^display(P(x)dot 1 / P(x)dot Q(x)) = \ = lim_(x->oo) e^display(Q(x)/P(x)) = e^display(lim_(x->oo) Q(x)/P(x)) $