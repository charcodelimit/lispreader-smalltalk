parsing
digit: aCharacter

	| value |
	value := aCharacter asciiValue.
	(value between: 48 and: (48 + base - 1)) ifTrue: [^ value - 48].

	base > 10 ifFalse: [^ nil].

	(value between: 65 and: (65 + base - 11)) ifTrue: [^ value - 55].
	(value between: 97 and: (97 + base - 11)) ifTrue: [^ value - 87].

	^ nil