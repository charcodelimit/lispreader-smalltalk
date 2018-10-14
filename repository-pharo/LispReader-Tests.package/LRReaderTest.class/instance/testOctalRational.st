tests-macro characters
testOctalRational
	| expression |
	expression := self lispExpressionFor: '#o777'.
	self assert: expression value equals: 511.
	expression := self lispExpressionFor: '#o37/15'.
	self assert: expression value equals: 31 / 13