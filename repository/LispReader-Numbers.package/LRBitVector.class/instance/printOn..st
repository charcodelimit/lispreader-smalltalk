printing
printOn: aStream 
	self shouldPrintFull
		ifTrue: [self printFullOn: aStream]
		ifFalse: [self printShortOn: aStream]