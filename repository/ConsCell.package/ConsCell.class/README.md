A Lisp cons cell, or a Prolog list

	It can be converted into an Array:
	(ConsCell car: 1 cdr: (ConsCell car: 2 cdr: nil)) arrayForm    "printIt"

	... or not:
	(ConsCell car: 1 cdr: 2) arrayForm     "doIt"

	It can be created from an Array:
	#('hello' 'world') asCons        "printIt"




