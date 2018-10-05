private - variables
printLevel

	^ self symbolValue: #'*print-level*' ifNone: [nil]