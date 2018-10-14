testing
testBitVectorLeadingZeroPrinting
	| value |
	value := LRBitVector value: 0 length: 2.
	self assert: value asString = '#*00'.
	value := LRBitVector value: 1 length: 4.
	self assert: value asString = '#*0001'.
	value := LRBitVector value: 0 length: 2.
	self assert: value shortString = '#2*0'.
	value := LRBitVector value: 1 length: 4.
	self assert: value shortString = '#4*0001'.
	value := LRBitVector readFrom: '0000'.
	self assert: value value == 0.
	self assert: value numBits == 4.
	self assert: value asString = '#*0000'.
	value := LRBitVector readFrom: '0101'.
	self assert: value value == 5.
	self assert: value numBits == 4.
	self assert: value asString = '#*0101'