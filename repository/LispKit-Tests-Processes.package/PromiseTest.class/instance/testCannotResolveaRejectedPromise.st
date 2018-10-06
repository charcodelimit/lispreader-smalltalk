testing - monad
testCannotResolveaRejectedPromise
	| p e |
	p := Promise new.
	e := Error new.
	p rejectWith: e.
	p resolveWith: 1.
	self assert: p isRejected.
	self assert: p error == e.
