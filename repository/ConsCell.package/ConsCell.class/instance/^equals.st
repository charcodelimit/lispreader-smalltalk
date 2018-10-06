testing
= aConsCell

	self isCircular ifTrue: 
		[^ self withCut = aConsCell withCut].

	self species = aConsCell species
		ifTrue: [^ car = aConsCell car and: [cdr = aConsCell cdr]]
		ifFalse: [^false]