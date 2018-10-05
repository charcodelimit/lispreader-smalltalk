*LispKit-evaluation
symbolsForBinding

	"return the symbols that would be locally bound by the receiver considered as a lambda form arguments list.

	handles &rest and &optional (no other keyword implemented).
	&body and . are synonyms of &rest

	see #bindingsWithArguments for the actual binding algorithm"

	| symbs |

	symbs := self.
	symbs isSymbol ifTrue: [^ {symbs}].
	symbs ifNil: [^ #()].

	^ Array streamContents: [:str |
		[symbs isNil or: [symbs car isNil]] 
		whileFalse: 
		[
			| sym |
			sym := symbs car.
			symbs := symbs cdr.

			(sym == #'&optional') 
				ifTrue: [sym := symbs car. symbs := symbs cdr].

			(sym == #'&rest' or: [sym == #'&body'])
				ifTrue: [str nextPut: symbs car. symbs := nil]
				ifFalse:
				[
					str nextPut: sym.
					symbs isSymbol ifTrue: [str nextPut: symbs. symbs := nil]]
				]
		]
