testing
testBitVectorPrinting
	| value |
	value := LKBitVector new.
	self assert: value asString = '#*0'.
	value := LKBitVector value: 3.
	self assert: value asString = '#*11'.
	value := LKBitVector value: 4.
	self assert: value asString = '#*100'.
	value := LKBitVector value: 65535.
	self assert: value asString = '#*1111111111111111'.
	value := LKBitVector value: 65536.
	self assert: value asString = '#17*10'.
	value := LKBitVector value: 130559.
	self assert: value asString = '#17*111111101'.
	value := LKBitVector value: 131071.
	self assert: value asString = '#17*1'