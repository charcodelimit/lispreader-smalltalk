private - variables
printLength

	^ self symbolValue: #'*print-length*' ifNone: [nil]