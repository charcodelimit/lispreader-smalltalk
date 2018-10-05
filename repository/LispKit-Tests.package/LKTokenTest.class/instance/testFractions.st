tests
testFractions

	self assert: (LKToken parse: '12/35') equals: (12/35).
	self assert: (LKToken parse: '12/35') isFraction.
	self assert: (LKToken parse: '-12/35') equals: (-12/35).
	self assert: (LKToken parse: '-12/35') isFraction.
	self assert: (LKToken parse: '12//35') equals: #'12//35'.
	self assert: (LKToken parse: '12/3.5') equals: #'12/3.5'.
	self assert: (LKToken parse: '12./35') equals: #'12./35'.
	self assert: (LKToken parse: '12/-35') equals: #'12/-35'.
	self assert: (LKToken parse: '12/+35') equals: #'12/+35'.
	self assert: (LKToken parse: '-12/-35') equals: #'-12/-35'.
