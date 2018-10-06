conversion
inArray: aStream

	| k |

	k := car isConsCell ifTrue: [car arrayForm] ifFalse: [car].
	k ifNil: [k := #()].

	cdr isNil ifTrue: [^ aStream nextPut: k].
	cdr isConsCell ifTrue: [^ aStream nextPut: k; nextPutAll: cdr arrayForm].
	self error: 'Not a list'
