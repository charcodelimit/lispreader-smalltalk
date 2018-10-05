tests
testFloats

	self assert: (LKToken parse: '123.0') isFloat.
	self assert: (LKToken parse: '123.0') equals: 123.
	self assert: (LKToken parse: '123.0I') equals: #'123.0I'.
	self assert: (LKToken parse: '-12.3') equals: -12.3.
	self assert: ((LKToken parse: '+.123') closeTo: 0.123).
	self assert: (LKToken parse: '.0') isFloat.
	self assert: (LKToken parse: '.0') equals: 0.0
