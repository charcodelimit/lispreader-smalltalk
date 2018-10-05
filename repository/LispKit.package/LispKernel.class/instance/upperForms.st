private - utils
upperForms

	upperLisp ifNil: [^ {self upperForm}].

	^ {self upperForm}, upperLisp upperForms