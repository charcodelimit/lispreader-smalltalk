conversion
safeStoreTopFormsIn: aStream

	aStream nextPut: car.
	cdr isConsCell ifTrue: [cdr safeStoreTopFormsIn: aStream] 

