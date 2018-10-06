list operations
addLast: anObject

	self lastCell cdr: (self tailClass car: anObject)