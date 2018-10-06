testing - monad
testWaitForResolution
	| p |
	p := Promise new.
	[ (Delay forMilliseconds: 1) wait. p resolveWith: #ok ] fork.
	self assert: [ p wait = #ok ] value