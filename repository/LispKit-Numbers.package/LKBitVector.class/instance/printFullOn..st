printing
printFullOn: aStream
	"write string representation of all bits of the bit vector to aStream"

	| bits |
	bits := self numBitsValue.
	aStream nextPutAll: '#*'.
	length > bits
		ifTrue: [ length - bits timesRepeat: [ aStream nextPut: $0 ] ].
	value printOn: aStream base: 2