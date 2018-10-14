testing
testLargeBitVector
	| value str char |
	char := Character digitValue: 1.
	str := WriteStream on: (String new: 128).
	128 timesRepeat: [ str nextPut: char ].
	value := LRBitVector readFrom: str contents.
	self assert: value value = ((1 << 128) - 1)