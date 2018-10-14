private-reading
readNumeral: aStream radix: anInteger
	| validNumeralCharacters sanitizedStream char |
	validNumeralCharacters := anInteger > 10
		ifTrue: [ 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' first: anInteger - 10 ]
		ifFalse: [ '' ].
	sanitizedStream := WriteStream on: ''.
	[ (char := aStream peek) notNil
		and: [ char isDigit or: [ validNumeralCharacters identityIncludes: char asUppercase ] ] ]
		whileTrue: [ sanitizedStream nextPut: aStream next asUppercase ].
	^ sanitizedStream contents