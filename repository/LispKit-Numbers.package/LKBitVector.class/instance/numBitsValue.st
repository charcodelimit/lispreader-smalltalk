private
numBitsValue
	"RETURNs the minimum number of bits required to represent self value"

	^ value == 0
		ifTrue: [ 1 ]
		ifFalse: [ (value log: 2) floor + 1 ]