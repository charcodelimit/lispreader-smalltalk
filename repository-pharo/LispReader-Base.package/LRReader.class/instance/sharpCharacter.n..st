# macros
sharpCharacter: aStream n: unused

	| char |

	unused ifNotNil: [self error].

	aStream skip: -1.
	char := (self read: aStream) asString.
	char size = 1 ifTrue: [^ char first].

	^ self class characterNames at: char asLowercase