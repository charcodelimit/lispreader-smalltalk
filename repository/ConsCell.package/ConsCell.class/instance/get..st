accessing
get: anObject

	"low-level property list support"

	| cell |
	cell := self.
	[cell isConsCell] whileTrue: [
			cell car == anObject ifTrue: [^ cell cadr].
			cell := cell cdr cdr].
	^ nil

	