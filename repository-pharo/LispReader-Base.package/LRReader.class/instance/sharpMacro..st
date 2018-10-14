macros
sharpMacro: aStream

	| number key |

	number := nil.
	[aStream peek isDigit] whileTrue:
		[number := ((number ifNil: [0]) * 10) + (aStream next asciiValue - 48)].

	^ self perform: (key := self class sharpMacros at: aStream next) 
		withArguments: {aStream . number}

