testing
testBitVectorBasics
	| value |
	value := LRBitVector value: 3.
	self assert: value value == 3.
	self assert: (value bitAt: 1) == 1.
	self assert: (value bitAt: 2) == 1.
	self assert: (value bitAt: 3) == 0.
	value resetBitAt: 1.
	self assert: (value bitAt: 1) == 0.
	self assert: (value bitAt: 2) == 1.
	self assert: (value bitAt: 3) == 0.
	self assert: value value == 2.
	value setBitAt: 1.
	self assert: value value == 3.
	value setBitAt: 3.
	self assert: value value == 7.
	value resetBitAt: 2.
	self assert: value value == 5