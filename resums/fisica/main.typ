#import "../../lib/resum.template.typ": *
#import "@preview/unify:0.6.0": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "figures.typ"
#import "shortcuts.typ": *
#import "envs.typ": *
#show: great-theorems-init

#show: project.with(
  subject: "Física II",
  preface: [
    #columns(2)[
      Creat per *Àlex Xavier Touza Luque*, principalment a partir del document original d'*Eduard Hernández*.

      #colbreak()
      #set align(right)
      Contacte: `alex.touza.l@gmail.com`
    ]
    
    //Notació: $log x = log_10 x, wide  ln x = log_e x, wide ["unitats"]$

  ],
  flipped: true,
  justify: true,
  depth: 2,
  margin: (outside: 0.75cm, inside: 1.5cm, y: 1.5cm),
  alternate-numbering: true
)

#include "primer.typ"

#colbreak()
#colbreak()
#colbreak()

#include "segon/1_ones.typ"

#colbreak()
#colbreak()
#colbreak()

#include "segon/2_optica.typ"

#colbreak()
#colbreak()
#colbreak()


#include "segon/3_fisica_nuclear_i_quantica.typ"



#include "segon/4_camp_gravitatori.typ"

#colbreak()
#colbreak()
#colbreak()


#include "segon/5_camp_magnetic.typ"



#include "segon/6_camp_electric.typ"


 
