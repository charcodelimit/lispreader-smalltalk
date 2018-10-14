macros
backquote: aStream

	^ #quasiquote inCons addLast: (self read: aStream)