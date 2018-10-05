# macros
sharpHexaRational: aStream n: unused

	| hn c nc |
	
	unused ifNotNil: [self error].

	nc := #($A $B $C $D $E $F).
	hn := WriteStream on: ''.

	[(c := aStream peek) notNil
		and: [c isDigit or: [nc identityIncludes: c asUppercase]]]
	whileTrue: [hn nextPut: aStream next].
	
	^ Number readFrom: hn contents asUppercase base: 16