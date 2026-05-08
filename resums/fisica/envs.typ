#import "@preview/great-theorems:0.1.1": *
#import "@preview/rich-counters:0.2.1": *
#import "../../lib/resum.template.typ": * 

#let heading-supplement =  n => "Bloc " + n + "."


#show heading.where(level: 1): set heading(numbering: (..a) => heading-supplement(str(a.pos().first())))

  #show heading.where(level: 1): it => {
    colbreak(weak: true)

    it
  }
