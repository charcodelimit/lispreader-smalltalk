tests-macro characters
testBitVector
	| expression |
	expression := self lispExpressionFor: '#*101111'.
	self assert: (expression isKindOf: LKBitVector).
	self assert: expression value equals: 47.
	expression := self lispExpressionFor: '#6*101111'.
	self assert: (expression isKindOf: LKBitVector).
	self assert: expression value equals: 47.
	expression := self lispExpressionFor: '#6*101'.
	self assert: (expression isKindOf: LKBitVector).
	self assert: expression value equals: 47.
	expression := self lispExpressionFor: '#6*1011'.
	self assert: (expression isKindOf: LKBitVector).
	self assert: expression value equals: 47.
	expression := self lispExpressionFor: '#*'.
	self assert: (expression isKindOf: LKBitVector).
	self assert: expression value equals: 0.
	expression := self lispExpressionFor: '#0*'.
	self assert: (expression isKindOf: LKBitVector).
	self assert: expression value equals: 0