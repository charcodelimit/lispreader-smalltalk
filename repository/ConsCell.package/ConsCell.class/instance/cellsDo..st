list operations
cellsDo: aBlock

	| cell |
	cell := self.
	[cell isConsCell] whileTrue: [aBlock value: cell. cell := cell cdr]

