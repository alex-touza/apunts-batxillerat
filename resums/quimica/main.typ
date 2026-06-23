#import "../../lib/resum.template.typ": *
#import "@preview/fletcher:0.5.6" as fletcher: diagram, node, edge
#import "@preview/whalogen:0.3.0": ce
#import "@preview/xarrow:0.3.1": xarrow



#show: project.with(
  title: "Química II. Resum",
  subject: "Química II",
  flipped: true,
  heading-supplement: n => "Unitat " + n + ".",
  depth: 4,
  justify: true,
  cols-gutter: 16pt,
  annex: include "lab.typ"
)

#let agreg(state) = $#h(0.07em) (upright(state))$

#let standard = $degree #h(-0.45em)$

#let arrowslong = box(xarrow(sym: sym.arrows.lr, h(1.3em)), baseline: 1pt)

#set table(
  stroke: none
)

#let pretable(cols, align-center-or: (x, y) => false, ..body) = {
  let no-cols = cols.all(it => it == none)
  
  align(center, block(breakable: false, table(
    columns: cols.len(), align: (x, y) => if y == 0 or align-center-or(x, y) { horizon + center } else { horizon + left },
    
    ..(if no-cols {()} else {(table.header(..cols), table.hline(),)}),
    ..body
  
  )))
}

#let aigua = ce("H2O")

= Gasos, dissolucions i reaccions químiques

== Concentració de les dissolucions

=== Percentatge en massa

$
%m = m_"solut" / m_"dissolució"
$

=== Percentatge en volum

$
%V  = V_"solut" / V_"dissolució"
$

=== Molaritat

$
M = [upright("A")] = n_"solut" / V_"dissolució" med #unitat("mol/L")
$

=== Molalitat

$
b  = n_"solut" / m_"dissolvent" med #unitat("mol/kg")
$

=== Concentració en massa

$
C_m = m_"solut" / V_"dissolució" med unitat("kg/L")
$

=== Fracció molar

$
chi_i = n_i / n_"total"
$

== Gasos

=== Unitats de pressió

$
qty("1", "atm") = qty("101325", "Pa") \
qty("1", "bar") = qty("e5", "Pa") \
qty("760", "mm")"Hg" = qty("1", "atm") \
$

=== Teoria cineticomolecular


- Xocs elàstics

- $v_"partícules" prop T prop E_c$

=== Condicions estàndard i normals

#table(
  columns: 3,
  stroke: none,
  align: center,
  [], [*Condicions normals*], [*Condicions estàndard*],
  $P$, qty("1", "bar"), qty("1", "bar"),
  $T$, $qty("0", "dC") = qty("273", "K")$, [$T$ de treball],
  $V_"mol"$, qty("22,7", "L/mol"), [--]
  
)


=== Llei dels gasos ideals

$
p V = n R T
$
$
R = qty("8,31", "J/K/mol") = \ = qty("0,082", "atm L / K / mol") = \ =qty("0,083", "bar L / K / mol")
$

=== Llei de Dalton

$
p_"total" = sum p_i
$

=== Llei de Boyle-Mariotte

$
T = const => p V = const
$

=== Llei de Gay-Lussac

$
V = const => p/T = const
$
=== Llei de Charles

$
p = const => V/T = const
$

=== Massa molecular i volum d'una mescla

$
M_"mescla"  = sum chi_i M_i \ V_"mescla"  = sum chi_i V_i 
$
= Termodinàmica

== Primer principi de la termodinàmica

=== Intercanvi de calor i treball


#align(center, canvas({
  import draw: *

  line((-1.5, -0.75), (-1.5, 0.75), (1.5, 0.75), (1.5, -0.75), close: true, fill: gray.lighten(80%))

  content((0, 0))[Sistema]


  let arr(y: true, x: false, dir: "end", t) = {
    let mark = (:)

    mark.insert(dir, ">")

    let x-pos = none

    if x {
      x-pos = 1
    } else {
      x-pos = -1
    }

    let y-pos = none

    if y {
      y-pos = 0.5
    } else {
      y-pos = -0.5
    }

    line((x-pos, y-pos), (x-pos*4, y-pos), mark: mark)
    content((x-pos*2.25, y-pos*1.75), t)
  }

  arr(y: true, x: false, dir: "start")[$+W$]
  arr(y: false, x: false, dir: "start")[$+Q$]
  arr(y: true, x: true, dir: "end")[$-W$]
  arr(y: false, x: true, dir: "end")[$-Q$]

  content((-2.75, 0.2), text(11pt)[Expansió])
  content((2.75, 0.2), text(11pt)[Compressió])
  
}))

=== Conservació de l'energia
$mag(Delta u, "J")$: variació d'energia interna

$mag(Q, "J")$: calor absorbida

$mag(W, "W")$: treball de compressió
$
Delta u = Q + W
$

=== Treball de compressió o expansió d'un gas

$
W  =- Delta x dot F_"ext" = - Delta V p_"ext" \
=> Delta u = Q - p Delta V
$

=== Processos termodinàmics

==== Procés adiabàtic

$
Q = 0 => Delta u = W
$

==== Procés isocòrics

$
Delta V = 0 => W = 0 =>Delta u = Q_V
$

==== Procés isotèrmic

$
Delta T = const => Delta u = 0 => Q = -W
$

==== Procés isobàric

$#mag("H", "J")$: entalpia

$
Delta H = Q_p = Delta u + p Delta V
$

=== Entalpia

$
Delta H = Q_p = H_p  - H_r
$

==== Reaccions endotèrmiques i exotèrmiques

$Delta H$: calor despresa a pressió constant

- $Delta H > 0 => H_"prod" > H_"reac" ->$ reacció endotèrmica

- $Delta H < 0 => H_"prod" < H_"reac" ->$ reacció exotèrmica

==== Entalpia segons l'estat dels productes

- Sòlids i líquids: $Delta V approx 0 => Delta H approx Delta u$

- Gasos: $Delta V != 0 =>  Delta H = Delta u + Delta n R T$

== Energia de les reaccions químiques

=== Calor específica

$mag(Q, "J")$: calor absorbida ($+$) o emesa ($-$) per un cos.

$mag(c_e, "J/kg/K")$: energia en forma de calor per augmentar #qty("1", "K") (o #qty("1", "dC")) la temperatura d'una unitat de massa de qualsevol substància a una pressió de #qty("1", "atm").

$
Q = m c_e Delta T
$

=== Intercanvi de calor

Principi zero de la termodinàmica:
$
sum Q_"cedida" + sum Q_"absorbida" = 0
$

L'intercanvi de calor es produeix fins l'equilibri tèrmic.

=== Calorímetre

Sistema aïllat de l'exterior per mesurar  la calor intercanviada en una reacció química.

$
Q_"reacció" + Q_ce("H2O") + Q_"calorímetre" = 0
$

$mag(a, "kg", name: "Equivalent en aigua")$: massa d'aigua amb el mateix comportament calorimètric que el material del calorímetre

$
Q_ce("H2O") = m_ce("H2O") c_e_ce("H2O") (T_"eq" - T_0) \
Q_"calorímetre" = a c_e_ce("H2O") (T_"eq" - T_0) \
=> Q_"reacció" = - c_e (m_ce("H2O") + a)(T_"eq" - T_0)
$

Sovint s'assumeix que $a approx 0$.
== Entalpia de reacció
=== Entalpia estàndard de reacció 

==== Definició

Quantitat de calor que es desprèn ($-$) o absorbeix ($+$) en una reacció química a pressió constant on les espècies es troben en condicions estàndard.

==== Estat estàndard

Forma física més estable de l'element o compost, a $T=qty("25", "dC")=qty("298", "K"), P = qty("e5", "Pa")$

==== Entalpia estàndard de combustió ($Delta H standard_c$)

Entalpia estàndard d'una reacció de combustió.

==== Entalpia estàndard de formació ($Delta H standard_f$)

Variació d'entalpia com a conseqüència de la formació de #qty("1", "mol") de compost a partir dels seus elements en estat estàndard a pressió constant.

L'entalpia estàndard de formació dels elements en la seva forma més estable en estat estàndard és 0.

=== Llei de Hess

La variació d'entalpia associada a una reacció química a pressió constant és la mateixa en una etapa que en diverses.

$
Q_p = Delta H standard_r = sum Delta H standard_i = \ = underbracket(sum n_upright("p") Delta H standard_upright("f") (upright("p")), #[entalpies de formació \ dels *productes*]) - underbracket(sum n_upright("r") Delta H standard_upright("f") (upright("r")), #[entalpies de formació \ dels *reactius*])
$


=== Entalpia d'enllaç
$
Delta H standard_r = underbracket(sum n_upright("t") Delta H degree (upright("t")), #[entalpia dels \ enllaços *trencats*]) - underbracket(sum n_upright("f") Delta H degree (upright("f")), #[entalpia dels \ enllaços *formats*])
$
=== Cicle de Born-Haber

Energia de dissociació: Trencament de l'enllaç d'una substància (e.g. $"Cl"_2$)

Afinitat electrònica: Addició d'un electró

Energia d'ionització: Extracció d'un electró

Energia reticular: Formació del compost iònic a partir dels ions en estat gasós


=== Entalpia dels canvis d'estat

$mag(L_upright("f"), "J/kg", name: "Calor latent de fusió")$: energia per passar una substància de *sòlida* a *líquida*

$mag(L_upright("v"), "J/kg", name: "Calor latent d'ebullició")$: energia per passar una substància de *líquida* a *gas*

#figure(scope: "parent", placement: auto)[
  #diagram(spacing: 1.5em, {
    let phase(pos,state, temp, ..args) = {
      node(pos, [
        $ce(#str("H2O (" + state + ")"))$
        
        $qty(str(temp), "dC")$
      ], outset: 0pt, inset: 0pt, ..args)
      
    }
  
    let phases = (
      ("s", 0, "fusió", "solidificació", $Q = - m L_f$, $Q = m L_f$),
      ("l", 0, "", "", $Q = m c_e Delta T$, none, "-->"),
      ("l", 100, "ebullició", "condensació", $Q = - m L_v$, $Q = m L_v$),
      ("g", 100),
    )
  
    let steps = (
      [
        fusió \ solidificació
      ]
    )
  
    let step-x = 5
    let eq-y = 0.85
  
    for (i, p) in phases.enumerate() {
      phase((i * step-x, 0), p.at(0), p.at(1), name: label("step" + str(i)))
      if i + 1 != phases.len() {
        let arr = p.at(6, default: "->")
        let coords = (label("step" + str(i)), label("step" + str(i+1)))
        
        edge(..coords, arr, shift: 3pt, label: p.at(2, default: none))
        edge(..coords, "<" + arr.rev().slice(1), shift: -3pt, label: p.at(3, default: none), label-sep: -1.5em)

        let eq-ind = (4, 5)

        for (i, ind) in eq-ind.enumerate() {
          let y
          if i == 0 {
            
          }
        }
        node(((i + 0.5) * step-x,  eq-y), p.at(4, default: none), width: 80pt)
        node(((i + 0.5) * step-x, - eq-y), p.at(5, default: none), width: 80pt)
      }
    }
  
    
    
  
  })
]



== Entropia

$mag(S, "J/K", name: "Entropia")$: Grau de *desordre* microscòpic.

$
Delta S = S_f - S_0 \

S_"gas" > S_"líquid" > S_"sòlid"
$
=== Segon principi de la termodinàmica

En un sistema aïllat i a temperatura constant, espontàniament es produirà un procés que causarà un estat amb major entropia.

L'entropia total de l'univers tendeix a un màxim.

$
Delta S_"univers" = Delta S_"sistema" + Delta S_"entorn" > 0
$

=== Tercer principi de la termodinàmica

L'entropia d'una substància cristal·lina pura a temperatura de #qty("0", "K") és zero.

$
S(qty("0", "K")) = 0
$

=== Entropia estàndard de reacció

$
Delta S standard_r = sum n_upright("p") Delta S degree (upright("p")) - sum n_upright("r") Delta S degree  (upright("r"))
$

L'entropia augmenta amb:

- $arrow.t$ Temperatura

- $arrow.t$ Massa molecular

- Estat d'agregació


- $arrow.t$ N. d'àtoms

- Enllaços dèbils

- Formes al·lotròpiques


=== Entropia en processos químics reversibles

$
Delta S = Q_"reversible" / T_f => Delta S > Q_"irreversible" / T_f
$
== Energia lliure de Gibbs
Relació entre l'entalpia (que tendeix a un mínim) i l'entropia (que tendeix a un màxim).

$
Delta G = Delta H - T Delta S
$

$T Delta S$: Energia utilitzada per ordenar o desordenar el sistema

=== Entalpia lliure estàndard de reacció

Variaciació d'energia lliure de Gibbs generada en sintetizar #qty("1", "mol") d'un compost a partir dels seus elements en estat estàndard.

$G standard_f = 0$ per als elements en la forma al·lotròpica més estable i a $T= qty("25", "dC"), P = qty("e5", "Pa")$

$
Delta G standard_r = sum n_upright("p") Delta G standard_upright("f") (upright("p")) - sum n_upright("r") Delta G standard_upright("f")  (upright("r"))
$


=== Espontaneïtat d'una reacció


#align(center, block(breakable: false, table(
  columns: 2,
  $Delta G > 0$, [reacció *no espontània*],
  $Delta G = 0$, [reacció *en equilibri*],
  $Delta G < 0$, [reacció *espontània*],
)))

=== Temperatura d'equilibri

Temperatura a la qual la reacció és troba en equilibri i és la frontera entre la reacció espontània i no espontània.

$
Delta G = 0 => T_"eq" Delta S = Delta H => T_"eq" = (Delta H)/(Delta S)
$

=== Signe de l'energia lliure

De l'expressió $Delta G = Delta H - T Delta S$, deduïm:


#pretable(
  align-center-or: (x, y) => x != 2,
  ($bold(Delta H)$, $bold(Delta S)$, [*Espontaneïtat*]),
  
  table.cell(rowspan: 3)[$Delta H < 0$ \ exotèrmica],
  [$Delta S > 0$],
    [espontània],
  table.cell(rowspan: 2)[$Delta S < 0$],
    [$arrow.t T$ no espontània],
    [$arrow.b T$ espontània],
    
  [], [], [], table.hline(stroke: 0.5pt), [], [], [],
    
  table.cell(rowspan: 3)[$Delta H > 0$ \ endotèrmica],
  table.cell(rowspan: 2)[$Delta S > 0$],
    [$arrow.t T$ espontània],
    [$arrow.b T$ no espontània],
  [$Delta S < 0$],
    [no espontània],
)

on $arrow.t T$ denota $T > T_"eq"$ i $arrow.b T$ denota $T < T_"eq"$.
=== Gràfic d'espontaneïtat



#align(center, canvas({

  import plot: *
  import draw: *
  plot(
    size: (4,4),
    x-min: 0,
    x-max: 4,
    y-min: -4,
    y-max: 4,
    x-tick-step: none,
    y-tick-step: none,
    x-label: $mag(T, "K")$,
    y-label: $mag(Delta G degree, "J")$,
    axis-style: "school-book",
    plot-style: (stroke: black),
  {
    let y = 2
    let m = 1
    add(domain: (0, 5), x => m * x + y)
    add(domain: (0, 5), x => - m * x + y)

    add(domain: (0, 5), x => m * x - y)
    add(domain: (0, 5), x => - m * x - y)

    let area-y = 20

    let alpha = 90%
    
    add(((0, area-y), (5, area-y)), style: (stroke: none, fill: orange.transparentize(alpha)), fill: true)
    add(((0, - area-y), (5, - area-y)), style: (stroke: none, fill: green.transparentize(alpha)), fill: true)
  })
  content((4, 4.5))[_No espontània_]
  content((4, -0.5))[_Espontània_]
  
  content((-0.8, 3), text(11pt)[$Delta H > 0$])
  content((-0.8, 1), text(11pt)[$Delta H < 0$])

  content((0.75, 3.8), text(9pt)[$Delta S < 0$])
  content((0.75, 0.2), text(9pt)[$Delta S > 0$])
  
  content((1.5, 2.7), text(9pt)[$Delta S > 0$])
  content((1.5, 1.3), text(9pt)[$Delta S < 0$])
}))

= Equilibri químic

#let reaction = $ a upright("A") + b upright("B") arrowslong c upright("C") + d upright("D")  $

== Reaccions reversibles i en equilibri

=== Reaccions irreversibles

$
R arrow.long P
$

- Es produeixen *en un sol sentit* i *de forma completa* fins que s'esgoten els reactius. Moltes, però, realment deixen una *quantitat petita sense reaccionar*.
- Si els productes són gasos en un recipient obert, la reacció és irreversible.

=== Reaccions reversibles

$
R arrowslong P
$

- Es produeixen *en els dos sentits alhora* fins a assolir *l'estat d'equilibri*.

- Les reaccions en gasos s'han de fer en recipients tancats.

=== L'equilibri


- Reactius i productes en concentracions constants.

- $v_"directa" = v_"inversa"$

=== Tipus d'equilibris

==== Equilibri homogeni

Totes les espècies en la mateixa fase.

==== Equilibri heterogeni

Les espècies es troben en diferents fases.

== Constants d'equilibri

Expressió general d'una reacció reversible:

#reaction

Les constants d'equilibri expressen la relació entre la concentració o pressió dels reactius i productes en equilibri. Varien amb la temperatura i no tenen unitats.

El quocient de reacció expressa aquesta relació en qualsevol estat.

=== Equilibri en concentracions

$mag([X_i], "mol/dm^3")$: molaritat

==== Quocient de reacció

$
Q_c = ([upright("C")]^c dot [upright("D")]^d) / ([upright("A")]^a dot [upright("B")]^b)
$

==== Constant d'equilibri

$
K_c = ([upright("C")]_"eq"^c dot [upright("D")]_"eq"^d) / ([upright("A")]_"eq"^a dot [upright("B")]_"eq"^b)
$

=== Equilibri en pressions

Sistema químic entre gasos.

$mag(p_i, #("atm", "bar"))$: pressió parcial

==== Quocient de reacció

$
Q_p = (p_C^c dot p_D^d) / (p_A^a dot p_B^b)
$

==== Constant d'equilibri

$
K_p = (p_(C "eq")^c dot p_(D "eq")^d) / (p_(A "eq")^a dot p_(B "eq")^b)
$

=== Relació entre el quocient i la constant

#pretable(
  (none, none),
  [Q < K], [Desplaçament cap a *productes*],
  [Q = K], [En *equilibri*],
  [Q > K], [Desplaçament cap a *reactius*],
)

=== Relació entre constants d'equilibri

$mag(Delta n, "mol")$: increment de mols gasosos


$
K_p = K_c (R T)^(Delta n)
$

=== Equilibris heterogenis

La constant d'equilibri no s'expressa amb espècies sòlides o líquides; les seves concentracions hi queden englobades.

== Càlcul de l'equilibri


=== Taula de concentracions

#{
  table(
    columns: 6, gutter: 0pt, align: center,
    table.cell(inset: 0pt)[], table.cell(inset: (x: 4pt, y: 0pt), ce("PCl5 (g)")),  table.cell(inset: 0pt)[$->$], table.cell(inset: (x: 4pt, y: 0pt), ce("PCl3 (g)")), table.cell(inset: 0pt)[$+$], table.cell(inset: (x: 4pt, y: 0pt), ce("Cl2 (g)")),
    [],[],[],[],[],[],
    table.hline(),
    [*Inici*], $c_0$, [], qty("0", "mol"), [], qty("0", "mol"),
    [*Reacció*], $- x$, [], $+ x$,[], $+ x$,
    [*Final*], $c_0 - x$, [], $x$,[], $x$
  )
}

=== Grau de dissociació

$
alpha = x / n_0 = n_"dissociat" / n_"inicial"
$

#{
  table(
    columns: 6, gutter: 0pt, align: center,
    table.cell(inset: 0pt)[], table.cell(inset: (x: 4pt, y: 0pt), ce("PCl5 (g)")),  table.cell(inset: 0pt)[$->$], table.cell(inset: (x: 4pt, y: 0pt), ce("PCl3 (g)")), table.cell(inset: 0pt)[$+$], table.cell(inset: (x: 4pt, y: 0pt), ce("Cl2 (g)")),
    [],[],[],[],[],[],
    table.hline(),
    [*Inici*], $c_0$, [], qty("0", "mol"), [], qty("0", "mol"),
    [*Reacció*], $- c_0 alpha$, [], $+ c_0 alpha$,[], $+ c_0 alpha$,
    [*Final*], $c_0 (1 - alpha)$, [], $c_0 alpha$,[], $c_0 alpha$
  )
}

=== Influència dels coeficients estequiomètrics

Multiplicant els coeficients estequiomètrics per $n$:

$
K' = (K)^n
$

=== Direcció de la reacció

Intercanviant els reactius i els productes:

$
K' = 1 / K
$

== Alteracions en l'equilibri

=== Principi de Le Chatelier

Si es realitza una pertorbació en un sistema químic en equilibri, evolucionarà en el sentit de contrarrestar-la.

=== Canvis en la concentració

Quan es varien les concentracions, el sistema evoluciona a un nou estat d'equilibri, sense modificar la constant.

#pretable(
  ([*Pertorbació*], [*Efecte*]),
  [$arrow.t ["reactius"]$], table.cell(rowspan: 2)[Desplaçament cap a *productes*],
  [$arrow.b ["productes"]$],
  [], [],
  [$arrow.t ["productes"]$], table.cell(rowspan: 2)[Desplaçament cap a *reactius*],
  [$arrow.b ["reactius"]$],
)


En equilibris heterogenis, la variació de concentració de sòlids o líquids no desplaça l'equilibri.
=== Canvis en la pressió

Alteren l'equilibri de les reaccions entre gasos, sense modificar la constant.


#table(
  columns: 2,
  $arrow.t p$, [Desplaçament cap on hi ha *menys mols gasosos*],
  $arrow.b p$, [Desplaçament cap on hi ha *més mols gasosos*],
)

$Delta n = 0 =>$ els canvis de pressió no afecten l'equilibri

Afegint un gas inert, les pressions parcials disminueixen però la pressió total augmenta.

=== Canvis en la temperatura

En variar la temperatura, es modifica el valor de la constant, per l'equació de Van't Hoff.

#pretable(
  align-center-or: (x, y) => x != 2,
  ($bold(Delta H)$, $bold(Delta T)$, [*Desplaçament*]),
  
  table.cell(rowspan: 2)[$Delta H < 0$ \ exotèrmica],
  [$arrow.t T$],
    [reactius],
  [$arrow.b T$],
    [productes],

    
   table.hline(stroke: 0.5pt), 
    
  table.cell(rowspan: 2)[$Delta H > 0$ \ endotèrmica],
  [$arrow.t T$],
    [productes],
  [$arrow.b T$],
    [reactius],
)


=== Catàlisi

La catàlisi no afecta l'equilibri; només augmenta la velocitat de la reacció, de manera que l'equilibri s'assoleix abans.

=== Energia lliure

$
Delta G standard_#h(0.3em) =  cases(
  - R T ln K_c &"dissolució",
  - R T ln K_p wide &"gasos",
)
$

#pretable(align-center-or: (x, y) => x != 1,
  ([*Espontaneïtat*], [*Desplaçament actual*]),
  [$Delta G standard_#h(0.35em) < 0$ \ espontània],
  [productes],
  [$Delta G standard_#h(0.35em) > 0$ \ no espontània],
  [reactius],
)

= Cinètica química

== Velocitat de reacció

Rapidesa amb  què té lloc una transformació química.

#figure(scope: "parent", placement: bottom)[
  #stack(dir: ltr,
    spacing: 1em,
     
      canvas({
      
        import plot: plot, add
        import draw: content
        plot(
          size: (3.5,3),
          x-min: 0,
          x-max: 3,
          y-min: 0,
          y-max: 4.5,
          x-tick-step: none,
          y-tick-step: none,
          x-label: $t$,
          y-label: $v$,
          axis-style: "left",
          plot-style: (stroke: black),
          {
            add(domain: (0.1, 5), x => calc.pow(x + 0.45, -1.85) + 2, style: (stroke: blue))
          }
        )
      }),
       canvas({
      
        import plot: plot, add
        import draw: content
        plot(
          size: (3,3),
          x-min: 0,
          x-max: 3,
          y-min: 0,
          y-max: 4.5,
          x-tick-step: none,
          y-tick-step: none,
          x-label: $t$,
          y-label: $v$,
          axis-style: "school-book",
          plot-style: (stroke: black),
          {
            add(domain: (0.1, 5), x => calc.pow(x + 0.45, -1.85) + 2, style: (stroke: blue))
            add(domain: (0.1, 5), x => -calc.pow(x + 0.45, -1.85) + 2, style: (stroke: red))
      
          }
        )
        content((2.25, 1.85), text(9pt, blue.darken(50%))[Reacció directa])
        content((2.25, 0.85), text(9pt, red.darken(50%))[Reacció inversa])
      }),
    )
  ]
)

=== Velocitat mitjana

=== Velocitat instantània

== Teories de les reaccions químiques

=== Teoria de les col·lisions

=== Teoria del complex activat

== Equació de velocitat

=== Llei d'acció de masses

=== Ordre de la reacció

== Alteracions en la velocitat de reacció

=== Naturalesa química

=== Temperatura i xocs efectius

=== Termodinàmica

=== Energia d'activació

L'energia d'activació és l'energia mínima necesssària que han d'absorbir les molècules perquè, en col·lidir, la seva energia cinètica els permeti dur a terme la reacció química.
=== Estat físic

=== Superfície de contacte

=== Presència de catalitzadors

== Catàlisi

=== Efecte dels catalitzadors

=== Tipus de catalitzadors segons l'efecte

=== Tipus de catalitzadors segons la fase

==== Catàlisi homogènia

==== Catàlisi heterogènia

=== Biocatàlisi

== Mecanismes de reacció

=== Reaccions elementals i mecanisme

=== Molecularitat

=== Intermedis de reacció

=== Velocitat de la reacció global

=== Reaccions en cadena

#colbreak()

#colbreak()
#colbreak()

= Reaccions de transferència de protons

#let ph = $upright("pH")$
#let poh = $upright("pOH")$
#let pkw = $upright("p") K_w$
#let pka = $upright("p") K_a$
#let pkb = $upright("p") K_b$

#let shelltemp(text) = c => $limits(#c)_#[#v(1.5em) #text]$

#let acid1 = shelltemp("àcid 1")
#let base2 = shelltemp("base 2")
#let base1 = shelltemp("base 1")
#let acid2 = shelltemp("àcid 2")

#let reac-acid-base(..args, state: none, type: "acid") = {
  let a = $H A$
  let b = $B$
  let c = $A^-$
  let d = $H B^+$

  if args.pos().len() == 4 {
    (a, b, c, d) = args.pos()
  }
  let st

  if state == none {
  } else {
    st = $#h(0.07em) (state)$
  }

  let bp

  if b == ce("H2O") {
    bp = $#b agreg("l")$
  } else {
    bp = $#b #bp$
  }
  
  if type == "acid" {
    return $acid1(#a st) + base2(#bp) arrowslong base1(#c st) + acid2(#d st)$
  } else if type == "base" {
    return $base1(#a st) + acid2(#bp) arrowslong acid1(#c st) + base2(#d st)$
  }
}

#let oxoni = ce("H3O^+")
#let hidròxid = ce("OH^-")

== Àcids i bases


=== Teoria de Lewis

Un *àcid* és una espècie química capaç d'alliberar protons ($H^+$) en solució aquosa.

$
H A agreg("aq") -->^ce("H2O") ce("H^+") agreg("aq") + A^- agreg("aq")
$

Una *base* és una espècie química capaç d'alliberar ions hidròxid ($ce("OH^-")$).

$
B #h(0.05em) "OH" agreg("aq") -->^ce("H2O") B^+ agreg("aq") + "OH"^- agreg("aq")
$

=== Teoria de Brønsted-Lowry

==== Definició d'àcid i base

Un *àcid* és una espècie química capaç d'alliberar protons ($ce("H^+")$).

Una *base* és una espècie química capaç de captar protons ($ce("H^+")$).

==== Parell conjugat

Reacció genèrica entre un àcid $ce("H") A$ i una base $B$:

$
#reac-acid-base()
$

El parell àcid 1#{sym.dash.en}base 1 ($H A, A^-$) i el parell base 2#{sym.dash.en}àcid 2 ($B, H B^+$) s'anomenen *parell conjugat àcid#{sym.dash.en}base*.

$A^-$ és la *base conjugada* de l'àcid $ce("H") A$. \ $B ce("H")^+$ és l'*àcid conjugat* de la base $B$.

L'existència d'un àcid suposa la presència d'una base i viceversa.

==== Àcids i bases en solució aquosa

Reacció d'un àcid amb l'aigua:

$
#reac-acid-base($ce("H") A$, ce("H2O"), $A^-$, oxoni, state: "aq")
$

Reacció d'una base amb l'aigua:

$
#reac-acid-base($B$, ce("H2O"), $B ce("H")^+$, hidròxid, state: "aq", type: "base")
$

==== Substància amfipròtica

Una *substància amfipròtica* (o amfòtera) pot actuar com a àcid o com a base (e.g. l'aigua).

$
#reac-acid-base(ce("HCl"), aigua, ce("Cl^-"), oxoni, state: "aq") \
#reac-acid-base(ce("NH3"), aigua, ce("NH4^+"), hidròxid, state: "aq", type: "base") 
$

=== Reaccions de neutralització
$
"Àcid" + "Base" --> "Sal" + aigua, \

ce("H") A agreg("aq") + M #h(0.05em) ce("OH") agreg("aq") -> ce("H2O") agreg("l") + M A agreg("aq")
$


== Acidesa i basicitat

=== Autoionització de l'aigua

==== Equilibri

$
ce("H2O") agreg("l") +ce("H2O") agreg("l") arrowslong ce("H3O^+") agreg("aq") + ce("OH^-") agreg("aq")
$

==== Constant $K_w$

L'equilibri està desplaçat a les molècules d'aigua.

$
K_w = K_c = [oxoni] [hidròxid] \
T = qty("25", "Celsius") => K_w = 10^(-14)
$

Com que l'aigua és neutra, es compleix que $[oxoni] = [hidròxid]$. Per tant, $T = qty("25", "Celsius") => [oxoni] = qty("e-7", "mol/dm^3")$

==== Acidesa segons la ionització de l'aigua

#{

show table.cell: set par(justify: false)
table(
  columns: 2, align: horizon,
  [*Solucions àcides*], [$[oxoni] > qty("e-7", "mol/dm^3") \ [oxoni] > [hidròxid]$],
  [*Solucions neutres*], [$[oxoni] = qty("e-7", "mol/dm^3") \ [oxoni] = [hidròxid]$],
  [
  *Solucions bàsiques*], [$[hidròxid] > qty("e-7", "mol/dm^3") \ [oxoni]< [hidròxid]$]
)

}
=== pH i pOH

==== Definició

El *pH* mesura l'acidesa d'una solució i el *pOH* la basicitat d'una solució.

$
ph = - log [oxoni], wide poh = - log [hidròxid] 
$

==== Acidesa segons el pH
#{

show table.cell: set par(justify: false)
table(
  columns: 2, align: horizon,
  [*Solucions àcides*], [$ph < 7$],
  [*Solucions neutres*], [$ph = 7$],
  [
  *Solucions bàsiques*], [$ph > 7$]
)

}

==== Relació entre pH, pOH i $K_w$

$
pkw = ph + poh \
T = qty("25", "Celsius") => 14 = ph + poh
$

=== Electròlits

Electròlit: substància que, dissolta en aigua, es ionitza o dissocia en cations i anions; causa la conductivitat de la solució

Electròlits iònics: dissociació (e.g #ce("NaCl")) \ Electròlits moleculars: ionització (e.g. #ce("HCl"))

Electròlits forts: completament dissociats \
Electròlits febles: parcialment dissociats

=== Constants d'acidesa i basicitat

==== Equilibri i constants

Si es tracta d'un àcid o base fort, no hi ha equilibri. Si és feble, s'estableix el següent equilibri: 

$
#reac-acid-base($ce("H") A$, ce("H2O"), $A^-$, oxoni, state: "aq") \

K_a = ([A^-][oxoni]) / ([ce("H") A]) 
$

$
#reac-acid-base($B$, ce("H2O"), $ce("H") B^+$, hidròxid, state: "aq", type: "base") \
K_b = ([ce("H") B^+][hidròxid]) / ([B]) 
$

$arrow.t K_a =>$ Solució més àcida \ 
$arrow.t K_b =>$ Solució més bàsica

==== Relació entre les constants

Relació entre les constants d'un parell conjugat:

$
K_a K_b = K_w \ pka + pkb = pkw
$

==== Força segons les constants

$K < 10^(-8) =>$ àcid o base molt feble \
$10^(-8) < K < 10^(-3) =>$ àcid o base feble \
Un àcid o base fort no té constant.

==== Força en un parell conjugat


Quant més fort és un àcid, més feble és la seva base conjugada. \ Quant més forta és una base, més feble és el seu àcid conjugat.

Quant més alt sigui el grau de dissociació, més forta serà l'espècie.



=== Determinació de la fortalesa d'àcids i bases

==== Alcalins i alcalinoterris

Totes les bases d'alcalins ($"Li", "Na", upright("K"), "Rb", "Cs", "Fr"$) i alcalinoterris ($"Be", "Mg", "Ca", "Sr", "Ba", "Ra"$) són fortes. E.g: $ce("LiOH"), ce("NaOH"), ce("Ca(OH)_2")$.

==== Àcids orgànics

Tots els àcids orgànics són febles.

==== Oxoàcids

Regla de Pauling

$ upright("H")_n X upright("O")_m $

$m = n =>$ àcid molt feble \
$m = n + 1 =>$ àcid feble \
$m > n + 1 =>$ àcid fort \

=== Influència de l'estructura química en la constant d'acidesa

==== Hidràcids o àcids binaris

$
arrow.b "grup" => arrow.t "volum atòmic" => \ => "enllaç més feble" => arrow.t K_a
$

== Hidròlisi de sals

La *hidròlisi* és la reacció dels ions d'una sal amb l'aigua.

$
underbrace("HCl", "àcid fort") + underbrace("NH"_3, "base feble") --> underbrace(ce("NH4Cl"), "sal") \

underbrace(ce("NH4Cl"), "sal") --> underbrace(ce("NH4^+"), "àcid relativament feble") + underbrace(ce("Cl-"), "base molt feble") \

"Cl"^- + ce("H2O") cancel(->) ce("HCl") + ce("OH-") \
ce("NH4^+") + ce("H2O") arrowslong ce("NH3") + oxoni
$

== Volumetria àcid-base

Una volumetria àcid-base permet conèixer les variacions de pH que es produeixen en una neutralització.

*Valorar* és determinar la quantitat d'un àcid o base de concentració desconeguda (*reactiu valorat o anàlit*) en una solució, a partir d'una solució de base o àcid de concentració coneguda (*solució valorant*).

Es fixa el volum de l'anàlit, que s'ubica a l'Erlenmeyer, i es varia la quantitat de solució valorant, que s'ubica a la bureta i es va abocant quantitat dins l'Erlenmeyer fins trobar el *punt d'equivalència*.

Un cop coneguda la quantitat de solució valorant necessària per neutralitzar


#colbreak()
#colbreak()

= Reaccions de transferència d'electrons

== Piles

== Electròlisi

Ús de l'energia elèctrica per dur a terme una reacció redox no espontània ($E standard_"pila" < 0$)

=== Electròlisi de l'aigua

Oxidació: $ ce("H2O (l)") --> ce("1/2 O2 (g)") + 2 ce("H+ (aq)") + 2 ce("e-") $

Reducció:

$
ce("2 H+ (aq)") + 2 ce("e-") --> ce("H2 (g)")
$

=== Muntatge

Càtode: negatiu \
Ànode: positiu

#align(center, image("image (1).png", width: 220pt))


= Solubilitat i precipitació

== Equilibris de solubilitat

=== Solubilitat i precipitació

Solubilitat: Reacció de sòlid a líquid. \
Precipitació: Reacció de líquid a sòlid. \

=== Taula de concentracions

#{
  table(
    columns: 6, gutter: 0pt, align: center,
    table.cell(inset: 0pt)[], table.cell(inset: (x: 4pt, y: 0pt), $A_x B_y upright("(s)")$),  table.cell(inset: 0pt)[$arrowslong$], table.cell(inset: (x: 4pt, y: 0pt), $x A^(y+) upright("(aq)")$), table.cell(inset: 0pt)[$+$], table.cell(inset: (x: 4pt, y: 0pt), $y B^(x-) upright("(aq)")$),
    [],[],[],[],[],[],
    table.hline(),
    [*Ini*], $c_0$, [], qty("0", "mol"), [], qty("0", "mol"),
    [*Eq*], $c_0 - S$, [], $x S$,[], $y S$
  )
}

$
K_s = [A^(y+)]^x dot [B^(x-)]^y = (x S)^x dot (y S)^y
$

$mag(S, "mol/L", name: "Solubilitat molar")$: nombre de mols dissolts per litre de solució saturada \
Producte iònic $Q_s$ \

Es forma precipitat si $Q_s > K_s$

== Desplaçament d'equilibris de precipitació

=== Efecte de la pressió

Als equilibris de precipitació, no hi solen intervenir gasos, així que no són desplaçats per canvis de pressió.

=== Efecte de la temperatura

Augmentar la temperatura augmenta la solubilitat perquè la dissolució és gairebé sempre un procés endotèrmic.

=== Efecte de l'ió comú

Si es dissol una sal insoluble en una solució que ja conté un dels ions de la sal, la seva solubilitat disminueix.

== Dissolució de precipitats

Aplicació del principi de Le Chatelier quan s'afegeix una altra substància.

=== Reaccions àcid-base

1. Dissolució d'hidròxids i carbonats afegint un àcid fort.
2. Dissolució  de sals que contenen un anió d'un àcid feble amb un àcid.

=== Reaccions redox

Dissolució de sulfurs amb l'addició d'àcid nítric (o bé amb un àcid no oxidant, amb el qual es produeix una reacció àcid-base)

=== Formació de complexos

Acomplexa'm aquesta rahhhh

= Tècniques d'identificació de la matèria

== Espectroscòpia de masses

=== Funcionament

Producció d'ions a partir d'un compost neutre a la qual es subministra una determinada energia, bombardejant la mostra prèviament vaporitzada amb un feix d'electrons d'alta energia. La molècula es fragmenta formant ions positius, amb un electró arrencat.

A l'espectre, es detecta l'abundància d'un conjunt d'ions amb una determinada relació massa/càrrega que correspon a la fragmentació de la molècula original.

L'estudi dels ions que apareixen a l'espectre permet determinar el pes molecular del compost així com la seva estructura.

=== Pics notables

==== Pic molecular

El pic amb la relació massa/càrrega més gran. Correspon a la molècula quan perd un electró, i per tant, al pes molecular del compost original.

==== Pic base

Ió més abundant corresponent al fragment més estable, que dona el senyal més fort i correspon al valor 100% de l'espectre.

=== Gràfic

#align(center, image("espectre_masses.png"))

Eix X: Relació massa/càrrega ($m slash z$) dels fragments de la molècula.2

Eix Y: Intensitat relativa al pic base, en %.
== Espectroscòpia infraroja

=== Funcionament

Quan una molècula absorbeix radiació infraroja, es produeixen canvis d'energia vibracional dels enllaços de la molècula. L'energia d'aquesta radiació és capaç de provocar un salt des del nivell fonamental d'energia vibracional a un nivell excitat.

Els pics representen els canvis d'energia dels diferents tipus de vibracions dels enllaços que conté la molècula. Els pics de l'espectre corresponen a enllaços que conté la molècula.

=== Gràfic

#align(center, image("espectre_ir.png"))

Absorció d'energia d'un compost en funció de la longitud d'ona (o nombre d'ona) de la radiació.

Eix X: nombre d'ona [$"cm"^(-1)$]

Eix Y: Transmitància [$%$]

=== Nombre d'ona

$mag(sigma, "m^-1", name: "nombre d'ona")$

$
sigma = 1 / lambda
$

== Espectroscòpia de RMN

=== Funcionament

Un espectròmetre de RMN consta d'un imant que produeix un camp magnètic fort, un emissor de radiofreqüències, un detector i un enregistrador.

La mostra es posa entre els pols de l'imant. En aplicar el pols de radiofreqüència, hi haurà protons de la mostra que passaren de l'estat de baixa energia (paral·lel) al d'alta energia (antiparal·lel). Quan alguns d'aquests protons retornin al nivell inferior d'energia, emetran radiació, que és detectada segons la freqüència de la radiació, que depèn del camp extern i dels camps locals deguts als electrons dels àtoms veïns.

Els protons ($ce("H+")$) amb diferents entorns moleculars estaran sotmesos a camps magnètics lleugerament diferents i, per tant, absorbiran diferents freqüències de radiació. Com a resultat, apareixeran diferents pics RMN a l'espectre, que permetran identificar els diferents tipus d'hidrogen que hi ha a cada molècula, així com el seu nombre.

Els àtoms d'hidrogen químicament equivalents són els que estan relacionats per simetria.

=== Gràfic

Eix X: desplaçament químic ($delta$, adimensional, $["ppm"]$); relació entre la freqüència absorbida per l'hidrogen analitzat respecte la que absorbeixen els hidrògens del TMS (tetrametilsilà), que s'ha escollit com a referència. Distància d'un pic al del TMS.

Eix Y: Cada pic és proporcional al nombre de protons de cada tipus.

= Teoria atòmica i taula periòdica

== Radiació electromagnètica

=== Ones electromagnètiques

$mag(nu, "Hz", name: "freqüència")$ \
$mag(lambda, "m", name: "longitud d'ona")$ \
$mag(c = qty("3e8", "m/s"), name: "velocitat de la llum")$

$
nu= c / lambda
$

=== Espectres d'emissió i absorció

#image("espectres_em.png")

L'*espectre atòmic* és l'espectre de radiació electromagnètica que un element pot absorbir o emetre.

És una conseqüència de les transicions dels seus electrons entre nivells energètics.

L'espectre d'emissió i absorció són el negatiu un de l'altre.


== Mecànica quàntica


=== Energia electromagnètica

$mag(epsilon, "J", name: "energia electromagnètica")$ \
$mag(h = qty("6,26e-34", "J s"), name: "constant de Plank")$

$
epsilon = h nu
$

=== Quàntum

L'energia electromagnètica s'absorbeix o s'emet en "paquets", no pot prendre qualsevol valor.

Aquests paquets són els *quàntums d'energia* o *fotons*.

=== Efecte fotoelèctric

En incidir una radiació electromagnètica d'una determinada longitud d'ona sobre una superfície metàl·lica, s'incideix energia en forma de fotons.

Els àtoms, en conseqüència, s'exciten i poden alliberar-se de l'àtom.

==== Energia llindar
L'energia necessària per alliberar un electró d'un metall és l'energia llindar o treball d'extracció $W$:

$
W = planck nu_0 = planck c / lambda_0
$
Si l'energia del fotó $epsilon_gamma$ compleix que $epsilon_gamma > W$, aleshores es produeix l'efecte fotoelèctric.

==== Energia cinètica de l'electró

Quan es supera l'energia llindar, l'energia sobrant es converteix energia cinètica dels electrons extrets.

$
epsilon_gamma - W = E_"cin" = 1 / 2 m v^2
$

=== Principi d'incertesa de Heisenberg

És impossible conèixer simultàniament i amb exactitud la posició i la
quantitat de moviment d’una partícula.

El producte de la incertesa de les dues magnituds ha de ser major o igual a un valor
constant:

$
Delta x Delta p >= planck.reduce / 2
$

=== Dualitat ona-corpuscle de De Broglie
==== Ones i partícules
Si bé a nivell macroscòpic ones i partícules són diferents, segons la mecànica quàntica les partícules es poden comportar com a ones i viceversa.

Això s'observa en el fet que, per exemple, la radiació electromagnètica i els electrons presenten característiques de les ones ---difracció, refracció...--- i de les partícules ---massa, volum---.


==== Longitud d'ona associada

Qualsevol partícula té una longitud d'ona associada.

$mag(p, "N s", name: "quantitat de moviment")$

$
lambda = planck / p = planck / (m v)
$

== Model mecanicoquàntic de l'àtom

=== Els orbitals atòmics

==== Concepte d'orbital

Pel principi d'incertesa de Heisenberg, no es pot predir la posició exacta d'un electró, així que la idea d'òrbita de la teoria de Bohr es substitueix per la d'*orbital*.

Un orbital és una regió de l'espai on és més probable trobar un electró en un determinat estat energètic, fixats els nombres quàntics $(n, l, m_l)$. Es defineixen amb les funcions d'ona, són les solucions de l'equació de Schrödinger.

==== Nivell energètic
A cada nivell energètic, hi ha un nombre d'orbitals concret on hi cap un nombre limitat d'electrons.

==== Aparellament
A cada orbital pot haver-hi fins a dos electrons, amb un valor d'espín diferent. Quan n'hi ha dos, diem que l'orbital està complet i que els electrons estan aparellats.

=== Nombres quàntics

Els electrons en un àtom es caracteritzen pels qatre nombres quàntics:

$
(n, l, m_l, s)
$
Nombre quàntic principal $n$ \
Nombre quàntic secundari o azimutal $l$ \
Nombre quàntic magnètic $m_l,$ \
Nombre quàntic d'espín $s$ \

==== Nombre quàntic principal

$
n in {1, 2, 3,..., 7}
$

Correspon a la capa o nivell energàtic de l'electró.

$n =1$ correspon al valor més baix d'energia i a un electró més proper al nucli, mentre que $n=7$ és el més energètic i més allunyat del nucli.


==== Nombre quàntic secundari o azimutal

$
l in {0, 1, ..., min(n-1, 3)}
$

Indica el subnivell energètic; el tipus i la forma de l'orbital.

Els electrons amb $n$ i $l$ iguals tenen la mateixa energia.

#columns(2)[
  #table(
    columns: 2,
    align: center,
    table.header[*Valor*][*Lletra*],
    $0$, $upright("s")$,
    $1$, $upright("p")$,
    
  )

  #colbreak()
  
  #table(
    columns: 2,
    align: center,
    table.header[*Valor*][*Lletra*],
    $2$, $upright("d")$,
    $3$, $upright("f")$,
  )
]

==== Nombre quàntic magnètic

$
m_l in {-l, ..., 0, ..., +l}
$

Indica les possibles orientacions que pot adoptar l'òrbita de l'electró quan es sotmet a un camp magnètic extern.

==== Nombre quàntic d'espín

$
s in {-1/2, +1/2}
$

Indica el sentit de gir de l'electró entorn al seu propi eix. Per a l'electró, només pot prendre aquests dos valors.

Diferencia els dos electrons que ocupen l'orbital determinat pels altres tres nombres quàntics.


== Configuració electrònica

=== Configuració electrònica
La *configuració electrònica* és la distribució dels electrons d'un àtom en els diferents orbitals.

Els electrons s'omplen en ordre creixent d'energia.

#let el(s) = {
  assert(s.len() == 3 or s.len() == 4)
  let n = int(s.at(0))
  let orb = (s.at(1))
  let e

  if s.len() == 3 {
    e = int(s.at(2))
  } else {
    e = int(s.slice(2, 4))
  }

  [$#n upright(orb)^(#e)$]
}

=== Diagrama de Moeller

#align(center, canvas({
  import draw: content, line

  let col = blue.transparentize(60%)
  
  line((-1.5, 2.5), (-2.3, 1.9),stroke: col, mark: (end: ">"))
  line((-1.5, 1.8), (-2.3, 1.1),stroke: col, mark: (end: ">"))
  line((-0.3, 1.8), (-2.3, 0.4),stroke: col, mark: (end: ">"))
  line((-0.3, 1.1), (-2.3, -0.4),stroke: col, mark: (end: ">"))
  line((1, 1.1), (-2.3, -1.2),stroke: col, mark: (end: ">"))
  line((1, 0.3), (-2.3, -1.9),stroke: col, mark: (end: ">"))
  line((2.2, 0.3), (-2.3, -2.6),stroke: col, mark: (end: ">"))
  line((2.2, -0.5), (-1.2, -2.6),stroke: col, mark: (end: ">"))
  content((0, 0), [
    #grid(
      inset: 0.5em,
      columns: 4,
      rows: 7,
      el("1s2"),[],       [],        [],
      el("2s2"),el("2p6"),[],        [],
      el("3s2"),el("3p6"),el("3d10"),[],
      el("4s2"),el("4p6"),el("4d10"),el("4f14"),
      el("5s2"),el("5p6"),el("5d10"),el("5f14"),
      el("6s2"),el("6p6"),el("6d10"),[],
      el("7s2"),el("7p6"),[],        [],
    )
  ])

},))

=== Principi de construcció d'Aufbau

S'omplen primer els nivells amb menor energia.

=== Regla de màxima multiplicitat de Hund

En l'estat fonamental, els electrons que ocupen orbitals de la mateixa energia (mateixos $n$ i $l$) tenen tendència a mantenir-se desaparellats, de manera que es reparteixen entre els orbitals amb espins iguals (paral·lels).

Si tots els orbitals en un nivell ja estan semidesenvolupats, aleshores es van aparellant afegint electrons en el sentit contrari.

=== Principi d'exclusió de Pauli

Dos electrons no poden tenir els mateixos quatre nombres quàntics.

Això limita el nombre d'electrons màxim en un orbital a dos. Per força, han de ser antiparal·lels; han de tenir un valor d'espín diferent.

=== Elements no representatius

Hi ha elements que no segueixen les normes de la configuració electrònica degut a tenir un nivell ple o semiplè que redueix l'energia total de l'àtom.


=== Grups de la taula periòdica

#table(
  columns: 4,
  inset: 0.5em,
  align: horizon,
  table.header[*Bloc*][*Grup*][*Nom*][*$e^-$*],
  table.hline(stroke: 2pt),
  table.cell(rowspan: 2)[$upright("s")$], [1], [Metalls alcalins], $n upright("s")^1$,
  [2], [Metalls alcalinoterris], $n upright("s")^2$,
  table.hline(),
  table.cell(rowspan: 5)[$upright("p")$],
  [13], [Grup del bor], $n upright("s")^2space n upright("p")^1$,
  [14], [Grup del carboni], $n upright("s")^2space n upright("p")^2$,
  [15], [Pnicurs], $n upright("s")^2space n upright("p")^3$,
  [16], [Calcògens], $n upright("s")^2space n upright("p")^4$,
  [17], [Halògens], $n upright("s")^2space n upright("p")^5$,
  table.hline(),
  [],[18],[Gasos nobles], $n upright("s")^2 space n upright("p")^6 *$,
  table.hline(),
  table.cell(rowspan: 1)[$upright("d")$], [3#{sym.dash.en}12], table.cell(colspan: 2)[Metalls de transició],
)

\*Excepte l'heli, que és $1 upright("s")^2$.

#table(
  columns: (auto, auto, 1fr, auto),
  inset: 0.5em,
  align: horizon,
  table.header[*Bloc*][*Període*][*Nom*][*$e^-$*],
  table.hline(stroke: 2pt),
  table.cell(rowspan: 2)[$upright("f")$],
  [6], [Lantànids], $4 upright("f")$,
  [7], [Actínids], $5 upright("f")$
)

== Propietats periòdiques

=== Radi atòmic

El *radi atòmic* és la meitat de la distància que separa els centres de dos àtoms veïns.


En el mateix període, el radi atòmic dels elements representatius #underline[decreix] d'esquerra a dreta. Això es deu al fet que, en tenir més protons i electrons, tenen més càrregues internes i les forces d'atracció fa que el radi sigui inferior.

En el mateix grup, el radi atòmic dels elements #underline[creix] de dalt a baix. Això es deu al fet de tenir electrons en capes superiors, que augmenta el radi atòmic.



=== Radi iònic

El radi d'un àtom disminueix en perdre electrons i augmenta en guanyar-ne.

=== Energia de ionització

L'*energia de ionització* és l'energia mínima necessària per arrencar un electró d'un àtom en fase gasosa i en l'estat fonamental.


$
X"(g)"  --> X^+"(g)" + 1 e^- wide E_upright("i")
$

L'energia necessària per arrencar successius electrons augmenta. Això es deu al fet que l'electró extern següent estarà més a prop del nucli i, per tant, fa falta més energia per  compensar la càrrega nuclear efectiva sobre l'electró i arrencar-lo.

És un procés no espontani, requereix energia externa.  Per tant, el signe és positiu.

L'energia de ionització creix inversament amb el radi.

=== Afinitat electrònica

L'*afinitat electrònica* és l'energia absorbida o alliberada en el procés de guany d'un electró d'un àtom en estat gasós i fonamental.

$
X"(g)" + 1 e^- --> X^-"(g)" wide E_"ea"
$

El procés pot ser endotèrmic o bé exotèrmic, així que el signe pot ser negatiu o positiu.

Com més exotèrmic és el valor ---més negatiu---, més fàcilment es forma l'anió.


=== Electronegativitat

L'*electronegativitat* d'un element és la tendència dels seus àtoms a atreure electrons d'àtoms d'altres elements amb els quals s'enllaça.

El fluor, l'element més electronegatiu, té assignat un valor de 4, i el franci, el menys electronegatiu, un valor de 0,7. No s'assigna cap valor als gasos nobles.

L'electronegativitat creix en un mateix període d'esquerra a dreta i decreix amb el grup
