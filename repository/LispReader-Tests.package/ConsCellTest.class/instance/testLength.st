tests
testLength

	| c |

	self assert: #(1 2 3) asCons length = 3.
	self should: [(#(1 2) asCons append: 3) length] raise: Error.
	
	c := #(1 2) asCons.
	c append: c.
	self assert: c length isInfinite