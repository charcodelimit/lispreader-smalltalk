printing
storeOn: aStream

	aStream nextPutAll: '(ConsCell car: '.
	car storeOn: aStream.
	aStream nextPutAll: ' cdr: '.
	cdr storeOn: aStream.
	aStream nextPut: $)