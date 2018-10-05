private - initialization
defineDefaultBindings

	constantVariables := Array streamContents: [:str |
		str nextPutAll: constantVariables.
	self constantBindings associationsDo: [:assoc | 
		environment addSymbolValue: assoc.
		str nextPut: assoc key]].

	self defaultBindings associationsDo: [:assoc | 
		environment addSymbolValue: assoc.]
