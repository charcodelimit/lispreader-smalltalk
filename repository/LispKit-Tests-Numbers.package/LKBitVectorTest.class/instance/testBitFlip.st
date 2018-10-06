testing
testBitFlip
	| value |
	value := LKBitVector value: 2r0.
	self assert: value lowestBitFlip isNil.
	value := LKBitVector value: 2r1.
	self assert: value lowestBitFlip isNil.
	value := LKBitVector value: 2r10.
	self assert: value lowestBitFlip == 2.
	value := LKBitVector value: 2r11.
	self assert: value lowestBitFlip isNil.
	value := LKBitVector value: 2r100.
	self assert: value lowestBitFlip == 3.
	value := LKBitVector value: 2r1100.
	self assert: value lowestBitFlip == 3.
	value := LKBitVector value: 2r1011.
	self assert: value lowestBitFlip == 3.
	value := LKBitVector value: 2r101111.
	self assert: value lowestBitFlip == 5.
	value := LKBitVector value: 2r1001111.
	self assert: value lowestBitFlip == 5.
	value := LKBitVector value: 2r1111111.
	self assert: value lowestBitFlip isNil