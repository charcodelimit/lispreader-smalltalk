testing - monad
testifRejectedRunsBlockIfPromiseFails
	| p q error |
	error := nil.
	p := Promise new.
	q := p ifRejected: [:e | error := e].
	p rejectWith: KeyNotFound new.
	self assert: q isRejected.
	self assert: KeyNotFound equals: error class.