macros
quote: aStream

	^ #quote inCons addLast: (self read: aStream)