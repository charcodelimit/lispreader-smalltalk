testing
foundToken: aStream

	"tells weither a token can be read from aStream"

	[aStream atEnd not 
		and: [(self class syntacticTypesAt: aStream peek asciiValue) == #whiteSpace]] 
	whileTrue: [aStream next].

	^ aStream atEnd not