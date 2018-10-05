to do
testCyclicPrinting5

	| cons vec str |

	cons := #(1 2 3) asCons.
	vec := {10 . cons . 20}.
	cons cdr setcar: vec.

	str := cons lispPrintString.
 	self assert: str equals: '#1=(1 #(10 #1# 20) 3)'.

	str := vec lispPrintString.
 	self assert: str equals: '#1=#(10 (1 #1# 3) 20)'.
