tests
testFractions

	self assert: (LRToken parse: '12/35') equals: (12/35).
	self assert: (LRToken parse: '12/35') isFraction.
	self assert: (LRToken parse: '-12/35') equals: (-12/35).
	self assert: (LRToken parse: '-12/35') isFraction.
	self assert: (LRToken parse: '12//35') equals: #'12//35'.
	self assert: (LRToken parse: '12/3.5') equals: #'12/3.5'.
	self assert: (LRToken parse: '12./35') equals: #'12./35'.
	self assert: (LRToken parse: '12/-35') equals: #'12/-35'.
	self assert: (LRToken parse: '12/+35') equals: #'12/+35'.
	self assert: (LRToken parse: '-12/-35') equals: #'-12/-35'.
