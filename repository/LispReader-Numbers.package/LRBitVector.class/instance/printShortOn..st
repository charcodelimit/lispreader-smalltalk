printing
printShortOn: aStream
	"write smallest possible representation of bit vector with vector size to
	aStream"

	| numBits bits full short flip end |
	numBits := self numBits.
	aStream nextPut: $#.
	aStream nextPutAll: numBits asString.
	aStream nextPut: $*.
	bits := self numBitsValue.
	full := String
		streamContents: [ :s | 
			length > bits
				ifTrue: [ length - bits timesRepeat: [ s nextPut: $0 ] ].
			value printOn: s base: 2 ].
	flip := self lowestBitFlip.
	end := flip
		ifNil: [ 1 ]
		ifNotNil: [ flip > full size
				ifTrue: [ 1 ]
				ifFalse: [ numBits - (flip - 2) ] ].
	short := full copyFrom: 1 to: end.
	aStream nextPutAll: short