*LispKit-testing
isQuotedSymbol

	^ (car == #quote or: [car == #quote:]) and: [cdr car isSymbol]