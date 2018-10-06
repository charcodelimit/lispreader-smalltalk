tests-macro characters
testRadixNRational
	| expression |
	expression := self lispExpressionFor: '#3r102'.
	self assert: expression equals: 11.
	expression := self lispExpressionFor: '#11r32'.
	self assert: expression equals: 35.
	expression := self lispExpressionFor: '#16r1E'.
	self assert: expression equals: 30.
	expression := self lispExpressionFor: '#10r1/3'.
	self assert: expression equals: (1 / 3).
	expression := self lispExpressionFor: '#14r1A/2'.
	self assert: expression equals: 12.
	expression := self lispExpressionFor: '#16rF/E'.
	self assert: expression equals: (15 / 14).
	expression := self lispExpressionFor: '#16r0F/10'.
	self assert: expression equals: (15 / 16).
	expression := self lispExpressionFor: '#11R10/A'.
	self assert: expression equals: (11 / 10).