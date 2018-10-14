to do
testCyclicPrinting4
	| cons str |
	cons := #(1 2) asCons.
	cons := {cons.
	cons.
	cons} asCons.
	str := cons lispPrintString.
	self assert: str equals: '(#1=(1 2) #1# #1#)'