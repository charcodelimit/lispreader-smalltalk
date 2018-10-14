# macros
sharpNonReadable: aStream n: unused

	unused ifNotNil: [self error].

	^ LRNonReadableObject new 
		printedRepresentation: (aStream upTo: $>) contents