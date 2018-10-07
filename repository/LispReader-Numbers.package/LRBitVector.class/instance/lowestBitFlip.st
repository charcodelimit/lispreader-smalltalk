bit manipulation
lowestBitFlip
	"RETURNs the first position of a bit that is different from self lowestBit.
	If no bit flip occurs, nil is returned"

	| isPowerOfTwo lowestBit numBits |
	numBits := self numBitsValue.
	value == 1
		ifTrue: [ ^ length > numBits
				ifTrue: [ 2 ]
				ifFalse: [ nil ] ].
	isPowerOfTwo := value == (1 bitShift: numBits - 1).
	isPowerOfTwo
		ifTrue: [ ^ numBits ].
	lowestBit := self lowestBit.
	1 to: numBits do: [ :index | 
		(self bitAt: index) ~= lowestBit
			ifTrue: [ ^ index ] ].
	^ (length > numBits and: [ lowestBit == 1 ])
		ifTrue: [ numBits ]
		ifFalse: [ nil ]