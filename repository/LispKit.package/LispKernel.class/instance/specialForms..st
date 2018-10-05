LISP-functions-interpreter
specialForms: aConsCell

"(special-forms)
Return a list of all special forms implemented as primitives."

	^ ((self class specialForms sort collect: [:p |
			p last == $: ifFalse: [p]
				ifTrue: [self class aliasForPrimitive: p]])
		select: [:p | (self primitiveP: p inCons) == self trueValue]) asConsList
	