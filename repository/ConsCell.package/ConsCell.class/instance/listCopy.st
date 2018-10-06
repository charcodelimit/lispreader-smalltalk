conversion
listCopy

	^ self copy setcdr: (cdr isConsCell ifFalse: [cdr] ifTrue: [cdr listCopy])
