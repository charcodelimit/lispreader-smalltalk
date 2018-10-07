tests
testSpecials

	self assert: (LRToken parse: '+') = #'+' .
	self assert: (LRToken parse: '-') = #'-' .
	self assert: (LRToken parse: '+.') = #'+.' .
	self assert: (LRToken parse: '-.') = #'-.' .
	self assert: (LRToken parse: '+-') = #'+-' .
	self assert: (LRToken parse: '-+') = #'-+' .
	self assert: (LRToken parse: '.') = #'.' .

	self assert: (LRToken parse: 'e') = #e .
	self assert: (LRToken parse: '12e') = #'12e' .
	self assert: (LRToken parse: 'e1') = #'e1' .

	self assert: (LRToken parse: '/') = #'/' .
	self assert: (LRToken parse: '/5') = #'/5' .
	self assert: (LRToken parse: '5/') = #'5/' .