#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit


#let det = math.mat.with(delim: "|")

#let ai = $hat(i)$
#let aj = $hat(j)$
#let ak = $hat(k)$

#let Ecin = $E_"cin"$
#let Epot = $E_"pot"$
#let Emec = $E_"mec"$


#let neutrino = $nu_e$
#let antineutrino = $overline(neutrino)$

#let demo(content, shift) = box(stroke: (thickness: 1pt, dash: "dashed"), inset: 4pt, baseline: shift, fill: yellow.transparentize(80%), $ content $)

#let default(a, d) = {
  if a == none {
    d
  } else {
    a
  }
}

#let el = (..arr) => math.attach($#arr.pos().first() $, tl: arr.pos().at(1, default: "A"), bl: arr.pos().at(2, default: "Z"),)


#let result = box.with(stroke: (thickness: 1pt, dashness: "dash"), inset: 4pt, baseline: 4pt)