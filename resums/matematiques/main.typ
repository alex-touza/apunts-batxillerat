#import "../../lib/resum.template.typ": *

#show: project.with(
  title: "Matemàtiques. Resum",
  subject: "Matemàtiques I i II",
  flipped: true,
  heading-supplement: n => "Unitat " + n + ".",
  depth: 4,
  justify: true,
  cols-gutter: 16pt,
)

#include "primer.typ"
#include "segon.typ"