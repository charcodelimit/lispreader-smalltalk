private - subclasses may implement
symbolValue: aSymbol ifNone: aBlock

	":keywords evaluate to themselves"
	aSymbol first == $: ifTrue: [^ aSymbol].

	 ^ environment symbolValue: aSymbol ifNone: aBlock