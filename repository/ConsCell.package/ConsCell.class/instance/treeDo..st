tree operations
treeDo: aBlock

	aBlock value: self.
	car isConsCell ifTrue: [car treeDo: aBlock].
	cdr isConsCell ifTrue: [cdr treeDo: aBlock]

