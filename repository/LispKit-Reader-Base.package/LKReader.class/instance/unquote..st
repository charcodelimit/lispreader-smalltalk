macros
unquote: aStream

	aStream peek == $@
		ifTrue: 
		[
			aStream next.
			^ #'unquote-splicing' inCons addLast: (self read: aStream)
		].

	^ #unquote inCons addLast: (self read: aStream)