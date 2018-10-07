accessing
depth

	upperBindings ifNil: [^ 0].
	^ upperBindings depth + 1