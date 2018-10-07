tests-macro characters
testBalancedComment
	| expression |
	expression := self lispExpressionFor: '#||#'.
	self assert: expression equals: #'<eof>'.
	expression := self lispExpressionFor: '#| (test) |#'.
	self assert: expression equals: #'<eof>'.
	expression := self lispExpressionFor: '#|#|Nesting|#|#'.
	self assert: expression equals: #'<eof>'