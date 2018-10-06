*ConsCell
printOn: aStream depth: aNumber forLisp: aLisp level: cpl maxLevel: mpl length: len maxLength: mlen done: anIdentitySet cycles: anIdentityDictionary

	(anIdentityDictionary keys includes: self)
	ifTrue: 
	[
		aStream nextPut: $#; 
				nextPutAll: (anIdentityDictionary at: self) asString; 
				nextPut: $=.
		anIdentitySet add: self.
	].

	aStream nextPutAll: (aLisp ifNil: ['#(']
		ifNotNil: [aLisp class vectorOpeningString]).
	self do: [:element | 
		(anIdentitySet includes: element)
		ifTrue:
		[
			aStream nextPut: $#; 
				nextPutAll: (anIdentityDictionary at: element) asString; 
				nextPut: $#
		]
		ifFalse:
		[
			element printOn: aStream depth: aNumber forLisp: aLisp 
				level: cpl maxLevel: mpl length: len maxLength: mlen 
				done: anIdentitySet cycles: anIdentityDictionary
		].
		aStream space
	].
	self ifNotEmpty: [aStream skip: -1].
	aStream nextPut: (aLisp ifNil: [$)]
		ifNotNil: [aLisp class vectorClosingChar])