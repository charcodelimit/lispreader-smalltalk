tests
testConsList

	self assert: #(1 2 3 4 5) asConsList = #(1 2 3 4 5) asCons.
	self assert: #() asConsList = nil.
	self assert: #(1) asConsList = #(1) asCons.
	self assert: #((1) 2 (3) 4 5) asConsList printString = '(#(1) 2 #(3) 4 5)' .