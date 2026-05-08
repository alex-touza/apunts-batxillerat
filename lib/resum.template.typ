#import "@preview/unify:0.7.1": num, qty, numrange, qtyrange, unit
#import "@preview/cetz:0.3.2": canvas, draw
#import "@preview/cetz-plot:0.1.1": plot
#import "ctheorems.typ": *
#import "magnitudes.typ": mag, unitat


#let const = $"const"$

#let result = box.with(stroke: 1pt, inset: 4pt, baseline: 4pt)

#let project(
  title: none,
  name: "Àlex Xavier Touza Luque - 2n B Batxillerat",
  subject: none,
  font: "New Computer Modern",
  lang: "ca",
  margin: (x: 0.75cm, y: 1.5cm),
  justify: false, 
  flipped: false,
  preface: none,
  heading-numbering: "1.1.",
  heading-supplement: n => "Bloc " + n + ".",
  depth: 3,
  n-columns: 3,
  cols-gutter: 8pt,
  annex: none,
  alternate-numbering: false,
  doc
) = {
  set text(
    font: "New Computer Modern",
    size: 13pt,
    lang: if type(lang) == array {lang.first()} else{lang}, region: if type(lang) == array {lang.last()} else {none}
  )

  set par(justify: justify)

let header = [
      #name #h(1fr) #subject
    ]

  
  set page(
    margin: margin,
    header: header, numbering: "1", number-align: left,
    flipped: flipped,
  ) /*if not alternate-numbering

  set page(
    margin: margin,
    header: header, footer: locate(
  loc => if calc.even(loc.page()) {
    align(right, counter(page).display("1"));
  } else {
    align(left, counter(page).display("1"));
  }
),
    flipped: flipped,
  ) if alternate-numbering
*/
  set heading(numbering: heading-numbering)

  show link: underline
  show link: text.with(blue.darken(50%))


  show heading.where(level: 3): set heading(numbering: (a, b, c) => numbering("A.", c))

  show heading.where(level: 3): it => {
    set text(14pt, style: "italic", weight: "bold")
    set block(below: 1em, above: 1.1em)
  
    it
  }

  show heading.where(level: 4): set heading(numbering: none)
  show heading.where(level: 4): set block(above: 1em, below: 0.75em)


  if title == none {
    title = subject
  }
  
  text(weight: 800, size: 24pt)[#title]

  parbreak()
  
  preface

  {
    heading(outlined: false, numbering: none, level: 1)[Índex]
    
    show: columns.with(2)

    show outline.entry.where(level: 1): set block(above: 0.9em)
  
    show outline.entry: entry => {
      if entry.level == 1 {

        if sys.version.minor < 13 and (not (entry.body.has("children")) or not entry.body.children.first() == [Bloc 1.]) {
          v(0.5em)
        }
        
        set text(weight: "bold")
        entry
      } else {
        entry
      }
    }
    outline(title: none, indent: 1em, depth: depth)
  }

  

  colbreak()

  show: thmrules
  {
    show: columns.with(n-columns, gutter: cols-gutter)
  
    show heading.where(level: 1): set heading(numbering: (..a) => heading-supplement(str(a.pos().first())))
  
    show heading.where(level: 1): it => {
      colbreak(weak: true)
  
      it
    }
  
    doc
  }

  pagebreak(weak: true)
  set heading(numbering: none)

  annex
}