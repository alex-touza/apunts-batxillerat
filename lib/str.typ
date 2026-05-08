#let remove-multiple-whitespace(s) = {
  string.replace("/\s\s+/g", " ")
}

#let capitalize(s) = {
  return upper(s.at(0)) + s.slice(1)
}