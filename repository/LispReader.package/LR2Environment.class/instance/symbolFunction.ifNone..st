private - subclasses may implement
symbolFunction: aSymbol ifNone: aBlock

	^ self symbolFunctions at: aSymbol 
		ifAbsent: [(upperBindings ifNil: [^ aBlock value])
						symbolFunction: aSymbol ifNone: aBlock]
