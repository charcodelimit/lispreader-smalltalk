tests
testFirst

	| list |

	list := #(1 2 3 4 5) asCons.
	self assert: list first = 1.
	self assert: list second = 2.
	self assert: list third = 3.	
	self assert: list last = #(5) asCons