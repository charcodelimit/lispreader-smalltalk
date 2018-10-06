tests-macro characters
testStructureSyntax
	self
		should: [ self lispExpressionFor:'#S(RANDOM-STATE DATA #(14 49 98436589 786345 8734658324))' ]
		raise: NotYetImplemented