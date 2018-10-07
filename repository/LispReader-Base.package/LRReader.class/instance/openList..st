macros
openList: aStream

	| list item lastCell |

	item := nil.
	list := nil.
	lastCell := nil.
	
	[item == self closeListMarker] whileFalse:
	[
		aStream atEnd ifTrue: [self error: 'open list'].
		item == #'.'
			ifTrue: "dotted pair notation" 
			[
				lastCell := (self read: aStream).
				"handle special case: [. , -> ,@] 
				for example`(a b . ,c) becomes `(a b ,@c)"
				(lastCell isConsCell and: [lastCell car == #unquote])
					ifTrue: [
								list := ((lastCell car: #'unquote-splicing') inCons cdr: list).
								lastCell := nil
								].
				"the form `(... . @, ...) is not allowed"
				(lastCell isConsCell and: [lastCell car == #'unquote-splicing'])
					ifTrue: [self error: 'inappropriate context for unquote-splicing'].
			]
			ifFalse: [list := (item inCons cdr: list)].
		item := self read: aStream.
	].

	(list ifNil: [^ self emptyListMarker]) cells do: [:cell |
		cell setcdr: lastCell.
		lastCell := cell].

	^ lastCell cdr ifNil: [self emptyListMarker]