accessing
syntacticTypesAt: anInteger

	anInteger > SyntacticTypes size ifTrue: [^ #constituent].

	^ SyntacticTypes at: anInteger 
		