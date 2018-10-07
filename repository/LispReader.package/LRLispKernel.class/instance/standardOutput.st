private - variables
standardOutput

	^ self symbolValue: #'*standard-output*'	ifNone: [nil]