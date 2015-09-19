

(defreader L [expr]
  "Something like #L\"foo {x}\" - which will pull x from locals"
  `(apply .format [~expr] (locals)))
