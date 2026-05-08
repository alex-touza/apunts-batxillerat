#import "@preview/unify:0.7.1": num,qty

#let inv(a) = $#a^(-1)$
#let star(a) = {
  set text(red.darken(20%))
  $bold(#a)$
}

#let detmat(..args) = $#math.mat(..args, delim: "|")$

#let det = math.mat.with(delim: "|")



#let ran = math.op([ran], limits: false)


#let colon = $#h(0%):$

#let cosec = $op("cosec")$
#let sec = $op("sec")$
#let cotan = $op("cotan")$