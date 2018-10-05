to do
testCyclicPrinting3

	| cons str |

	cons := #(1 2 3 4 5) asCons.
	cons cdr setcar: cons.
	cons setcar: (Array with: #a with: cons with: #b).

	str := cons lispPrintString.

 	self assert: str equals: '#1=(#(a #1# b) #1# 3 4 5)'.
