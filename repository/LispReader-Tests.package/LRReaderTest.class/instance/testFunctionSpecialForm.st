tests-macro characters
testFunctionSpecialForm
	| expression |
	expression := self lispExpressionFor: '(disassemble #''sin)'.
	self assert: expression isConsCell.
	self assert: expression second equals: {#function . #sin} asConsList