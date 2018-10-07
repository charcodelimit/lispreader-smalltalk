testing
testBitVectorPrinting
	| value |
	value := LRBitVector new.
	self assert: value asString = '#*0'.
	value := LRBitVector value: 3.
	self assert: value asString = '#*11'.
	value := LRBitVector value: 4.
	self assert: value asString = '#*100'.
	value := LRBitVector value: 65535.
	self assert: value asString = '#*1111111111111111'.
	value := LRBitVector value: 65536.
	self assert: value asString = '#17*10'.
	value := LRBitVector value: 130559.
	self assert: value asString = '#17*111111101'.
	value := LRBitVector value: 131071.
	self assert: value asString = '#17*1'