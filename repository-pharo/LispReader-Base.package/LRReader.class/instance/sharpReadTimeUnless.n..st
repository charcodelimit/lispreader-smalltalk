# macros
sharpReadTimeUnless: aStream n: unused

	unused ifNotNil: [self error].

	self notYetImplemented