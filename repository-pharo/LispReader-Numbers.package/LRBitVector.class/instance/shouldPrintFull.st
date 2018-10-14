testing
shouldPrintFull
	^ self numBits
		<= (self class printFullUpToSize ifNil: [ self class defaultPrintFullUpToSize ])