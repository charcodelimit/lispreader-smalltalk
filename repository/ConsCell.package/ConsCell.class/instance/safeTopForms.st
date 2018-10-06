conversion
safeTopForms

	cdr ifNil: [^ {car}].
	cdr isConsCell ifTrue:
	[
		cdr cdr ifNil: [^ {car . cdr car}].
		cdr cdr isConsCell ifTrue:
			[cdr cdr cdr ifNil: [^ {car . cdr car . cdr cdr car}]]
	].

	^ Array streamContents: [:stream | self safeStoreTopFormsIn: stream]

