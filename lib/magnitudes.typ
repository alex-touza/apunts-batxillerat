#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit


#let unitat(s) = {
  $[#h(-0.15em)#unit(s)]$
}


#let mag(..arr, name: none, nounit: false) = {
  let sim = arr.pos().at(0)
  let u = arr.pos().at(1, default: none)

  if u == none {
    u = []
  } else if type(u) == function {
    u = u()
  } else {
    if type(u) != array {
      u = (u,)
    }
    
    u = $med #u.map(item => if nounit {$[upright(item)]$} else {$unitat(item)$}).join($med$)$
  } 

  
  
  $#(if name != none {name}) sim #u$
}
