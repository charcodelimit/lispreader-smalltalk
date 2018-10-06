tests-macro characters
testUninternedSymbol
	| expression |
	expression := self lispExpressionFor: '#:foo'.
	self assert: expression asString asLowercase equals: 'foo'.
	expression := self lispExpressionFor: '#:|foo|'.
	self assert: expression asString equals: 'foo'.
	expression := self lispExpressionFor: '#:|FOO|'.
	self assert: expression asString equals: 'FOO'.
	expression := self lispExpressionFor: '#:|\|foo|'.
	self assert: expression asString equals: '|foo'.
	expression := self lispExpressionFor: '#:\a'.
	self assert: expression asString equals: 'a'