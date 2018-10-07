testing - monad
testifRejectedDoesNotRunBlockIfPromiseResolves
	| p q error |
	error := nil.
	p := Promise new.
	q := p ifRejected: [:e | error := e].
	p resolveWith: 1.
	self deny: q isRejected.
	self assert: nil equals: error.