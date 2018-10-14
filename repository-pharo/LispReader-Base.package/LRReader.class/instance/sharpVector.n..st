# macros
sharpVector: aStream n: aNumber

	| v |

	aStream skip: -1.
	v := (self read: aStream) topForms.

	aNumber ifNotNil: 
	[
		v size > aNumber ifTrue: [self error: 'incorrect vector format'].
		v size < aNumber ifTrue:
		[  | nv |
			nv := Array new: aNumber withAll: v last.
			1 to: v size - 1 do: [:n |
				nv at: n put: (v at: n)].
			v := nv
		]
	].

	^ v.

	