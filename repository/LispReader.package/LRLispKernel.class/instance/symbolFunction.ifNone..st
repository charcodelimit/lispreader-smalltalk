private - subclasses may implement
symbolFunction: aSymbol ifNone: aBlock

	"look-up for the function bound to aConscell car (which should be a symbol). if none found, evaluate aBlock"

	^ self class cachedPrimitive bindingFor: aSymbol ifNone: 
		[self nonPrimitiveSymbolFunction: aSymbol ifNone: aBlock]
	

