tests-macro characters
testVector
	| expression |
	expression := self lispExpressionFor: '#0()'.
	self assert: expression size equals: 0.
	expression := self lispExpressionFor: '#()'.
	self assert: expression size equals: 0.
	expression := self lispExpressionFor: '#(a b c c c c)'.
	self assert: expression size equals: 6.
	self assert: expression equals: #(#a #b #c #c #c #c).
	expression := self lispExpressionFor: '#6(a b c c c c)'.
	self assert: expression size equals: 6.
	self assert: expression equals: #(#a #b #c #c #c #c).
	expression := self lispExpressionFor: '#6(a b c)'.
	self assert: expression size equals: 6.
	self assert: expression equals: #(#a #b #c #c #c #c).
	expression := self lispExpressionFor: '#6(a b c c)'.
	self assert: expression size equals: 6.
	self assert: expression equals: #(#a #b #c #c #c #c).
	expression := self lispExpressionFor: '#128(0)'.
	self assert: expression size equals: 128.
	self assert: (expression reduce: [ :a :b | a + b ]) equals: 0