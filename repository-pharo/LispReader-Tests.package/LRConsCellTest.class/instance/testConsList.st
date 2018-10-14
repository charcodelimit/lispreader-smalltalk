tests
testConsList
	self assert: #(#(1) 2 #(3) 4 5) asConsList printString = '(#(1) 2 #(3) 4 5)'