# macros
sharpArray: aStream n: dimensions

	dimensions ifNil: [self error: 'Incorrect array syntax - no rank integer'].

	self notYetImplemented