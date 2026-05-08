#import "../../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "../figures.typ"
#import "../shortcuts.typ": *
#import "../envs.typ": *


= Física nuclear i quàntica

== Reaccions nuclears

=== Partícules

#grid(columns: (1fr, 1fr))[$"neutró" el(p,1,1)$\
$"electró "el(e,0,-1)$ \
$"positró" el(e,0,1)$ \
][
$"neutró" el(n, 1,0)$ \
$"neutrí" el(v_e, 0,0)$ \
$"antineutrí" el(overline(v_e), 0,0)$
]

=== Nombres d'una partícula

$
el(X)
$

$mag(A, name: "nombre màssic")$: nombre de nucleons \
$mag(Z, name: "nombre atòmic")$: nombre de protons \

$
Z = p, wide A = n + p
$

=== Lleis de les reaccions nuclears

==== Conservació de la massa

Igualtat dels índexs superiors.

==== Conservació de la càrrega

Igualtat dels índexs inferiors.

=== Desintegracions nuclears

==== Desintegració $bold(alpha)$

$
el(X) --> el(Y, A - 4, Z - 2) + el("He", 4, 2)
$


==== Desintegració $bold(beta)^+$
$
el(X) --> el(Y, A, Z-1) + el(e, 0, 1) + el(neutrino, 0, 0)
$

==== Desintegració $bold(beta)^-$ (o $beta$)
$
el(X) --> el(Y, A, Z+1) + el(e, 0, -1) + el(antineutrino, 0, 0)
$

//Sovint es refereix a la desintegració $beta^-$ simplement amb $beta$.
==== Desintegració $bold(gamma)$

Absorció i emissió d'energia.

$
el(X)^ast --> el(X) + gamma
$

== Desintegracions radioactives

=== Llei de desintegració radioactiva


$mag(N, name: "nombre de nuclis restants")$

$mag(m, "kg", name: "massa de la mostra")$

$mag(lambda,  name: "constant de desintegració")$

$
N(t) = N_0 e^(- lambda t), wide m(t) = m_0 e^(- lambda t)
$

El temps $t$ i la constant de desintegració $lambda$ han de tenir les unitats inverses entre si.
=== Període de semidesintegració

$mag(t_(1 slash 2), "s")$: Període de semidesintegració

$
t = t_(1 slash 2) <=> N(t)/N_0 = 1 / 2 => demo( t_(1 slash 2) =  ln(2) / lambda, #14pt )
$
=== Activitat

$mag(A, "Bq", name: "activitat radioactiva")$: nuclis desintegrats per unitat de temps
$ qty("1", "Bq") = 1 med "nuclis" upright(s)^(-1) $
$
A(t) = - (dif N(t)) / (dif t) = N_0 lambda e^(-lambda t) = lambda N(t) \ demo(A_0 = lambda N_0, #4pt)
$

=== El mol

$mag(M, "g/mol", name: "massa molar")$: en valor numèric, igual al nombre màssic
$ M = A $

$mag(N_A = qty("6,02e23", "mol^-1"), name: "nombre d'Avogadro")$: nombre de partícules per cada mol de qualsevol substància

$ mag(N, "partícules", nounit: #true) <-->^(N_A) mag(n, "mol") <-->^M mag(m, "g") $

== Estabilitat nuclear

=== Defecte de massa

L'energia del nucli lligat és menor que els nucleons separats perquè aquest defecte de massa ($Delta m$) es converteix en energia per mantenir unit el nucli.

$mag(Delta m, "u", name: "defecte de massa")$

$
Delta m = m_"nucli" - sum m_"nucleó" < 0
$

Atenció: $m_"nucli" != m_"àtom"$. Tenir en compte massa dels electrons.

=== Energia d'enllaç

$mag(E)$: energia d'enllaç

$mag(display((E) / A), "MeV")$: energia d'enllaç per nucleó (partícula al nucli de l'àtom)

S'obté el valor amb l'equivalència $qty("1", "u") = qty("1,602e-19", "J")$ o amb l'expressió $E = Delta m c^2$

Quant més alta és l'energia d'enllaç per nucleó, més estable és un nucli.

=== Nuclis fusionables i fissionables

Els nuclis tendeixen a fusionar-se ($A < 56$ o $Z < 26$) o fissionar-se ($A > 56$) per arribar al Fe-56, el nucli més estable.

$
E / A ("Fe" #sym.dash.fig #h(0%)"56") = -"8,8" med "MeV" slash "nucleó"
$

#align(image("../imatges/binding_nuclear_energy.png", width: 210pt), center)

=== Energia de reacció

Energia alliberada en una reacció nuclear segons la variació de massa.

$
Delta E_r = (m_0 - m_f) c^2
 \
cases(
  Delta E_r < 0 -> "Endotèrmica",
  Delta E_r > 0 -> "Exotèrmica"
)
$

== Efecte fotoelèctric

=== Energia d'un fotó

$mag(h = qty("6,62e-34", "J s"), name: "constant de Plank")$

$
E_gamma = h f
$

=== Balanç d'energia

$mag(W_0, "J")$: treball d'extracció,  depèn del material

$mag(Ecin, "J")$: energia cinètica dels electrons extrets


$
E_gamma = W_0 + Ecin \ "per a cada fotó" \
$

Es produeix efecte fotoelèctric si $E_gamma > W_0$



=== Freqüència i longitud d'ona llindar

$
W_0 = h f_0 => f > f_0, wide demo(lambda < lambda_0, #8pt)
$

=== Nombre de fotons i potència

$
n_"fotons" = E_"total" / E_gamma, wide 
P_"llum" = E_"total" / t
$

En augmentar la potència, augmenta el nombre d'electrons extrets, però no la seva energia cinètica; augmenta la intensitat elèctrica $I$, però no el voltatge $V$.


=== Potencial de frenada

$mag(Delta V, "V", name: "potencial de frenada")$: tensió que cal aplicar per aturar el flux d'electrons.

$qty("1", "eV")$ és la quantitat d'energia que absorbeix un electró en fer un salt de $qty("1", "V")$. Numèricament, el potencial de frenada en $upright("V")$ és igual a l'energia cinètica d'un electró extret en $"eV"$.

També es pot calcular amb l'energia potencial elèctrica ($E_"pe"$):

$
Ecin = E_"pe" = abs(q_(e^-)) Delta V
$

on $q_(e^-)$ és la càrrega de l'electró en Coulombs.


=== Longitud d'ona de De Broglie

Les partícules subatòmiques tenen fenòmens propis de les ones, com la difracció. Cadascuna té una longitud d'ona associada $lambda_B$.

$
lambda_B = h / p = h / (m v)
$

