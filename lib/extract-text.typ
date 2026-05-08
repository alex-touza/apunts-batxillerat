#let stringify-by-func(it) = {
  let func = it.func()
  return if func in (parbreak, pagebreak, linebreak) {
    "\n"
  } else if func == smartquote {
    if it.double { "\"" } else { "'" } // "
  } else if it.fields() == (:) {
    // a fieldless element is either specially represented (and caught earlier) or doesn't have text
    ""
  } else if repr(func) == "h" or repr(func) == "metadata" {
    ""
  } else {
    panic("Not sure how to handle type `" + repr(func) + "`")
  }
}

#let plain-text(it) = {
  return if type(it) == str {
    it
  } else if it == [ ] {
    " "
  } else if it.has("children") {
    it.children.map(plain-text).flatten().join()
  } else if it.has("body") {
    plain-text(it.body)
  } else if it.has("text") {
    if type(it.text) == "string" {
      it.text
    } else {
      plain-text(it.text)
    }
  } else if "key" in it.fields() {
    ""
  } else if "child" in it.fields() {
    if it.fields().child.func() == super {
      ""
    } else {
      it.fields().child.fields().children.map(plain-text)
    }
  } else {
    // remove this to ignore all other non-text elements
    stringify-by-func(it)
  }
}
