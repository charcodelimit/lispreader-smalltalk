testing
testBitFlip
	| value |
	value := LRBitVector value: 2r0.
	self assert: value lowestBitFlip isNil.
	value := LRBitVector value: 2r1.
	self assert: value lowestBitFlip isNil.
	value := LRBitVector value: 2r10.
	self assert: value lowestBitFlip == 2.
	value := LRBitVector value: 2r11.
	self assert: value lowestBitFlip isNil.
	value := LRBitVector value: 2r100.
	self assert: value lowestBitFlip == 3.
	value := LRBitVector value: 2r1100.
	self assert: value lowestBitFlip == 3.
	value := LRBitVector value: 2r1011.
	self assert: value lowestBitFlip == 3.
	value := LRBitVector value: 2r101111.
	self assert: value lowestBitFlip == 5.
	value := LRBitVector value: 2r1001111.
	self assert: value lowestBitFlip == 5.
	value := LRBitVector value: 2r1111111.
	self assert: value lowestBitFlip isNil