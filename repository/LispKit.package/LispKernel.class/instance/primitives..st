LISP-functions-interpreter
primitives: aConsCell

"(primitives)
Return a list of all functions and special forms implemented as primitives."

	^ (self class primitives sort collect: [:p |
			p last == $: ifFalse: [p]
				ifTrue: [self class aliasForPrimitive: p]]) asConsList
	