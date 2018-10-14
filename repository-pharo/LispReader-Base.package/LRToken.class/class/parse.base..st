parsing
parse: aString base: aNumber

	| tok |
	tok := self void.
	tok base: aNumber.
	tok nextPutAll: aString.
	^ tok parsed
	