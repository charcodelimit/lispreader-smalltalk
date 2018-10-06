tests-macro characters
testArray
	self
		should: [ self lispExpressionFor: '#2A((0 1 5) (foo 2 (hot dog)))' ]
		raise: NotYetImplemented