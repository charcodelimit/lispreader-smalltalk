testing
hash
	"Hash is reimplemented because = is implemented."

	self isCircular ifTrue: [^ self withCut hash].

	^ car hash bitXor: cdr hash.