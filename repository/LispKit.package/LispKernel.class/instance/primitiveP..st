LISP-functions-predicates
primitiveP: aConsCell
	"(primitive-p SYMBOL)
If SYMBOL globally names a primitive, then a non-nil value is returned; otherwise nil is returned"

	| sf sel |
	sf := self symbolFunction: aConsCell car ifNone: [ ^ self falseValue ].
	sel := nil.
	sf isLKPrimitive
		ifTrue: [ sel := sf selector ].
	sf isSymbol
		ifTrue: [ sel := sf ].
	sel ifNil: [ ^ self falseValue ].
	^ self class test: (self class primitives pointsTo: sel)