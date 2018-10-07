tests-macro characters
testHexaRational
	| expression |
	expression := self lispExpressionFor: '#xF00'.
	self assert: expression value equals: 3840.
	expression := self lispExpressionFor: '#xff/fa'.
	self assert: expression value equals: 51 / 50