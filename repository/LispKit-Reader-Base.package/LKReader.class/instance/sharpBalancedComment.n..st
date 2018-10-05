# macros
sharpBalancedComment: aStream n: unused

	| c nc depth |

	unused ifNotNil: [self error].

	depth := 0.

	[aStream atEnd] whileFalse:
	[
		c := aStream next.
		nc := aStream peek.
		(c == $# and: [nc == $|])
			ifTrue: [aStream next . depth := depth + 1].
		(c == $| and: [nc == $#])
			ifTrue: 
			[
				aStream next.
				depth isZero ifTrue: [^ nil].
				depth := depth - 1
			].
	].

	self error