printing
printOn: aStream forLisp: aLisp

	self isEmpty ifTrue: [^ self].
	self size = 1 ifTrue: [^ self first printOn: aStream forLisp: aLisp].

	1 to: self size -1do: [:i | 
		(self at: i) printOn: aStream forLisp: aLisp.
		aStream cr].

	self last printOn: aStream forLisp: aLisp