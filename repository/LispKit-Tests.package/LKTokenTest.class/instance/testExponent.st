tests
testExponent

	self assert: (LKToken parse: '-12e8') equals: -1.2e9 .
	self assert: (LKToken parse: '-12.e8') equals: -1.2e9 .
	self assert: (LKToken parse: '-12.0e8') equals: -1.2e9 .
	self assert: (LKToken parse: '-12e+8') equals: -1.2e9 .
	self assert: (LKToken parse: '-12e+8.') equals: #'-12e+8.' .
	self assert: ((LKToken parse: '12e-3') closeTo: 0.012).
	self assert: ((LKToken parse: '12.e-3') closeTo: 0.012).
	self assert: (LKToken parse: '12e-+3') equals: #'12e-+3' .