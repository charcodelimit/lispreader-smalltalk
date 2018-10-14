testing
testBitVectorShortPrinting
	| value |
	value := LRBitVector value: 2r0.
	self assert: value shortString = '#1*0'.
	value := LRBitVector value: 2r1.
	self assert: value shortString = '#1*1'.
	value := LRBitVector value: 2r10.
	self assert: value shortString = '#2*10'.
	value := LRBitVector value: 2r11.
	self assert: value shortString = '#2*1'.
	value := LRBitVector value: 2r100.
	self assert: value shortString = '#3*10'.
	value := LRBitVector value: 2r1100.
	self assert: value shortString = '#4*110'.
	value := LRBitVector value: 2r1011.
	self assert: value shortString = '#4*101'.
	value := LRBitVector value: 2r101111.
	self assert: value shortString = '#6*101'.
	value := LRBitVector value: 2r1001111.
	self assert: value shortString = '#7*1001'