testing - monad
testRejectWithInvokesErrorHandlers
	| p error returnedError |
	returnedError := nil.
	error := KeyNotFound new.
	p := Promise ifRejected: [:e | returnedError := e].
	p rejectWith: error.
	self assert: returnedError notNil description: 'Error block did not run.'.
	self assert: error = returnedError description: 'Error not passed into block'.
	self assert: error = p error description: 'Promise didn''t store error'.