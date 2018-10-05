accessing
printOn: aStream forLisp: aLisp

	aStream nextPutAll: '#<'; nextPutAll: printedRepresentation; nextPut: $>
	