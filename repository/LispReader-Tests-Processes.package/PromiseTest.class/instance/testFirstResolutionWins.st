testing - monad
testFirstResolutionWins
	| p |
	p := Promise new.
	p resolveWith: 1.
	p resolveWith: 2.
	self assert: p isResolved.
	self assert: p value == 1.
