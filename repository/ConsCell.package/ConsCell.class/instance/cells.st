list operations
cells

	^ Array streamContents: [:str | 
		self cellsDo: [:cell | str nextPut: cell]]