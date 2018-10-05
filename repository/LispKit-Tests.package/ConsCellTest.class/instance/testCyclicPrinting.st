to do
testCyclicPrinting

	| cons str |

	cons := #(1 2 3 4 5) asCons.
	cons cdr setcar: cons.

	str := cons lispPrintString.

 	self assert: str equals: '#1=(1 #1# 3 4 5)'.
