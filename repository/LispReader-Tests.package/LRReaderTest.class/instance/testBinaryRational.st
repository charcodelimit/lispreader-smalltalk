tests-macro characters
testBinaryRational
	| expression |
	expression := self lispExpressionFor: '#b1101'.
	self assert: expression value equals: 13.
	expression := self lispExpressionFor: '#b101/11'.
	self assert: expression value equals: 5 / 3