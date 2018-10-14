tests
testFloats

	self assert: (LRToken parse: '123.0') isFloat.
	self assert: (LRToken parse: '123.0') equals: 123.
	self assert: (LRToken parse: '123.0I') equals: #'123.0I'.
	self assert: (LRToken parse: '-12.3') equals: -12.3.
	self assert: ((LRToken parse: '+.123') closeTo: 0.123).
	self assert: (LRToken parse: '.0') isFloat.
	self assert: (LRToken parse: '.0') equals: 0.0
