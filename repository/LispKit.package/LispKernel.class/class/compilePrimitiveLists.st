private
compilePrimitiveLists

	"to be evaluated whenever new primitives are implemented"

	CachedPrimitives := IdentityDictionary new.

	SpecialForms := Array streamContents: [:sfstr |
		Primitives := Array streamContents: [:pstr |	
		self specialFormSelectors do: [:sel | 
			sfstr nextPut: sel.
			pstr nextPut: sel.
			CachedPrimitives at: sel put: (LKPrimitive selector: sel for: self)].
		self primitiveFunctionSelectors do: [:sel | 
			pstr nextPut: sel.
			CachedPrimitives at: sel put: (LKPrimitive selector: sel for: self)]]].

	self definePrimitiveAliases
