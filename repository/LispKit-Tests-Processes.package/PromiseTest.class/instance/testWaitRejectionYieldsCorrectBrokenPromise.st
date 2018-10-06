testing - monad
testWaitRejectionYieldsCorrectBrokenPromise
	| p |
	p := Promise new.
	[ (Delay forMilliseconds: 1) wait. p rejectWith: Error new ] fork.
	[ p wait ] on: BrokenPromise do: [ :bp | ^ self assert: [ bp promise == p ] value ].
	self fail: 'Should not reach this point'