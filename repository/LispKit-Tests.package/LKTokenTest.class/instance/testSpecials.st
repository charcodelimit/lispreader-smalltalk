tests
testSpecials

	self assert: (LKToken parse: '+') = #'+' .
	self assert: (LKToken parse: '-') = #'-' .
	self assert: (LKToken parse: '+.') = #'+.' .
	self assert: (LKToken parse: '-.') = #'-.' .
	self assert: (LKToken parse: '+-') = #'+-' .
	self assert: (LKToken parse: '-+') = #'-+' .
	self assert: (LKToken parse: '.') = #'.' .

	self assert: (LKToken parse: 'e') = #e .
	self assert: (LKToken parse: '12e') = #'12e' .
	self assert: (LKToken parse: 'e1') = #'e1' .

	self assert: (LKToken parse: '/') = #'/' .
	self assert: (LKToken parse: '/5') = #'/5' .
	self assert: (LKToken parse: '5/') = #'5/' .