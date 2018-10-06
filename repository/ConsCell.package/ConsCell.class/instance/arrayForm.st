conversion
arrayForm

	^ Array streamContents: [:stream | self inArray: stream]

