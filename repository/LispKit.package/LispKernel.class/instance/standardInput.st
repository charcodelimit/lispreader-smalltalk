private - variables
standardInput

	^ self symbolValue: #'*standard-input*' ifNone: [nil]