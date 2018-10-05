tests
testIntegers

	self assert: (LKToken parse: '123') = 123.
	self assert: (LKToken parse: '123.') = 123.
	self assert: (LKToken parse: '123I') = #'123I'.
	self assert: (LKToken parse: '-123') = -123.
	self assert: (LKToken parse: '+123') = 123.
	self assert: (LKToken parse: '0.') = 0.
