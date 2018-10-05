macros
string: aStream

	| s |
	
	s := String streamContents: [:str |
		| c |
		c := nil.
		[c == $"] whileFalse:
		[
			c := aStream next.
			(self class syntacticTypesAt: c asciiValue) == #singleEscape
				ifTrue: [str nextPut: c; nextPut: aStream next]
				ifFalse: [c == $" ifFalse: [str nextPut: c]]
		]].

	^ (lisp ifNil: [^s]) class stringRepresentedBy: s
		
			
	