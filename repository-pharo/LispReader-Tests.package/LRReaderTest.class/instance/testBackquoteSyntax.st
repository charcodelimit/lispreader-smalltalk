tests-macro characters
testBackquoteSyntax
	| exp |
	exp := self lispExpressionFor: '`x'.
	self assert: exp car equals: #quasiquote.
	self assert: exp cadr equals: #x.
	exp := self lispExpressionFor: ',x'.
	self assert: exp car equals: #unquote.
	self assert: exp cadr equals: #x.
	exp := self lispExpressionFor: '`(format t ,expr)'.
	self assert: exp car equals: #quasiquote.
	exp := self lispExpressionFor: ',@x'.
	self assert: exp car equals: #'unquote-splicing'.
	self assert: exp cadr equals: #x