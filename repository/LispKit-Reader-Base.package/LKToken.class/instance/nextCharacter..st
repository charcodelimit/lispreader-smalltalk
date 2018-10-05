parsing
nextCharacter: aCharacter

	nindex := nindex + 1.

	nindex = 1 ifTrue: 
	[
		aCharacter == $- 
			ifTrue: [sign := -1]
			ifFalse: [
				((self digit: aCharacter) notNil 
					or: [aCharacter == $+] or: [aCharacter == $.])
				ifFalse: [couldBeNumber := false]].
	].
		
	couldBeNumber ifFalse: [^ self].

	dot ifNotNil: [dot := dot / 10].
	aCharacter == $. ifTrue: [	
		base = 10 ifFalse: [couldBeNumber := false].
		couldBeFraction := false.
		n1 ifNotNil: [couldBeExponent := false].
		dot ifNotNil: [couldBeNumber := false] ifNil: [dot := 1].
	]
	ifFalse: [
		(couldBeExponent
			and: [n1 isNil] 
			and: [aCharacter == $e or: [aCharacter == $E]])
		ifTrue: [self getN1. couldBeFraction := false]
		ifFalse: [
			(couldBeFraction
				and: [n1 isNil] 
				and: [aCharacter == $/])
			ifTrue: [self getN1. couldBeExponent := false]
			ifFalse:
			[  | d |
				(d := self digit: aCharacter) notNil 
				ifFalse: [
					(((aCharacter == $+)	or: [aCharacter == $-])
						and: [nindex = 1])
					ifFalse: [couldBeNumber := false]
					ifTrue: [n1 ifNotNil: [couldBeFraction := false]]]
				ifTrue: [
					number ifNil: [number := 0].
					dot ifNil: [number := (base * number) + d]
					ifNotNil: [number := number asFloat + (d * dot)]]]]]

	