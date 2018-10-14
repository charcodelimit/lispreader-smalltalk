tests
testIntegers

	self assert: (LRToken parse: '123') = 123.
	self assert: (LRToken parse: '123.') = 123.
	self assert: (LRToken parse: '123I') = #'123I'.
	self assert: (LRToken parse: '-123') = -123.
	self assert: (LRToken parse: '+123') = 123.
	self assert: (LRToken parse: '0.') = 0.
