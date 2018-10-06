*ConsCell
storeCycles: anIdentityDictionary with: anIdentitySet

	(anIdentitySet includes: self)
	ifTrue: 
	[
		(anIdentityDictionary keys includes: self)
			ifFalse: [anIdentityDictionary add: self -> (anIdentityDictionary size + 1)].
		^ anIdentityDictionary
	]. 
	anIdentitySet add: self.

	self do: [:ea |
		(ea isConsCell | ea isArray) ifTrue:
			[ea storeCycles: anIdentityDictionary with: anIdentitySet]].

	^ anIdentityDictionary