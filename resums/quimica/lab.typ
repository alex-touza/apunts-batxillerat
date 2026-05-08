#import "../../lib/resum.template.typ": thmbox, unit, qty

#let lab = thmbox("lab", "Procediment de laboratori", base_level: 0, fill: green.lighten(60%).transparentize(60%), inset: 1em, padding: (top: 0.15em, bottom: 0.15em), radius: 10pt, stroke: green.lighten(60%) + 2pt)

= Procediments de laboratori

#lab[Valoració àcid-base][
  #show: columns.with(2)

  _Material._ Bureta amb pinces i suport, flascó rentador, pipeta aforada, Erlenmeyer, mecanisme d'aspiració i indicador àcid-base ($"pH" >= 7 =>$ fenolftaleïna; $"pH" < 7 =>$ ataronjat de metil).
  
  Solució valorant de concentració $M unit("mol/L")$ (sovint hidròxid de sodi) i $X med "mL"$ d'anàlit (sovint un àcid).

  
  _Procediment._

  1. Realitzem el pas més important: fer el muntatge.
  + Pipetegem $X med "mL"$ d'anàlit amb l'ajuda d'un mecanisme d'aspiració.
  #colbreak()
  3. Aboquem els $X med "mL"$ a l'Erlenmeyer.
  + Hi afegim unes gotes de l'indicador àcid-base indicat abans.
  5. Omplim la bureta amb la solució valorant.
  6. Evitem la presència de bombolles i enrasem a 0.
  + Obrim la clau de la bureta de la solució valorant per anar afegint-ne i neutralitzar l'anàlit, mentre agitem l'Erlenmeyer, fins que la solució canviï de color (punt final de la volumetria).
  + Tanquem la clau de la bureta i anotem el volum consumit de solució valorant, evitant l'error de paral·laxi.

]
#lab[Preparació d'una solució amb solut sòlid][
  #show: columns.with(2)
  
  _Material._ Balança, vareta de vidre, vidre de rellotge, flascó rentador, espàtula, matràs aforat de $X unit("mL")$, mecanisme d'aspiració, vas de precipitats i aigua destil·lada.

  $m unit("g")$ de solut sòlid.

  _Procediment._

  1. Amb una balança, pesem $m unit("g")$ de solut sòlid dins un vidre de rellotge prèviament tarat.
  #colbreak()
  + Dissolem el solut en un vas de precipitats un volum petit d'aigua destil·lada.
  + Aboquem la dissolució en un matràs aforat de $X unit("mL")$.
  + Rentem el vas de precipitats amb aigua destil·lada per recollir tot el solut i l'aboquem al matràs aforat.
  + Enrasem amb aigua destil·lada fins a $X unit("mL")$, tapem el matràs i agitem per homogeneïtzar el contingut.
]

#lab[Preparació d'una dilució][
  #show: columns.with(2)

  Preparació de $X unit("mL")$ d'una solució $A unit("mol/L")$ de $"AB"$ a partir de $Y unit("mL")$ de solució $B unit("mol/L")$ de $"AB"$.
  
  _Material._ Vas de precipitats, pipeta de $Y unit("mL")$, mecanisme d'aspiració, matràs aforat de $X unit("mL")$ i aigua destil·lada.
  
  #colbreak()
  _Procediment._
  1. Col·loquem al vas de precipitats una mica de solució de $"AB"$ $B unit("mol/L")$.
  2. En pipetejem $Y unit("mL")$ amb l'ajut d'una pera i el transvasem a un matràs aforat de $X unit("mL")$
  + Enrasem amb aigua destil·lada fins a $X unit("mL")$, tapem el matràs i l'agitem.
]

#lab[Muntatge d'una pila][
  #show: columns.with(2)

  Muntatge d'una pila formada per una placa de coure i una altra d'alumini a partir d'una solució de sulfat de coure (II) i una solució de clorur d'alumini.

  #align(center, image("pila.png", width: 160pt))

  La substància que s'#underline[oxida] ha d'estar al vas #underline[esquerre] i la substància que es #underline[redueix] ha d'estar al vas #underline[dret].
    
  Els electrons circulen de l'ànode (esquerra) al càtode (dreta) pel fil conductor.
    
  #colbreak()

  _Material._ Dos vasos de precipitats, fil conductor, pont salí i làmines de coure i alumini.

  Solucions de sulfat de coure (II) #qty("1", "mol/L") i clorur d'alumini #qty("1", "mol/L").
  
  _Procediment._

  1. En un vas de precipitats, posem la solució de sulfat de coure (II) i en un altre la solució de clorur d'alumini.
  + A cada vas, hi submergim de forma parcial els elèctrodes; respectivament, una placa metàl·lica de coure i una d'alumini.
  + Es connecten els elèctrodes entre ells amb un fil conductor (opcionalment amb un voltímetre).
  + Tanquem el circuit col·locant un pont salí, tub que connecta els dos vasos i conté una solució aquosa d'un electròlit com, per exemple, $"KCl"$.
]