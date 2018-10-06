list operations
detect: aBlock ifNone: bBlock

	| cell |
	cell := self.
	[cell isConsCell] whileTrue: [
		(aBlock value: cell car) ifTrue: [^ cell car]. 
		cell := cell cdr].

	^ bBlock value
