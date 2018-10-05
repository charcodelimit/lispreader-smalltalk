# macros
sharpNonReadable: aStream n: unused

	unused ifNotNil: [self error].

	^ LKNonReadableObject new 
		printedRepresentation: (aStream upTo: $>) contents