*LispReader
printOn: aStream forLisp: aLisp

	aLisp ifNil: [^ self printOn: aStream].
	aStream nextPutAll: (aLisp class complexString: self base: 10)