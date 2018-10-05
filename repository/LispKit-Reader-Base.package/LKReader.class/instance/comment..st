macros
comment: aStream

	| char |

	char := nil.
	[char == Character lf  
		or: [char == Character cr] 
		or: [aStream atEnd]]
	whileFalse:
		[char := aStream next].

	^ nil