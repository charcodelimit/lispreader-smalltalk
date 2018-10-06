testing
withCut

	| cons c2 |
	cons := self veryDeepCopy.
	c2 := cons cdr.
	cons cdr: nil.		
	^ c2