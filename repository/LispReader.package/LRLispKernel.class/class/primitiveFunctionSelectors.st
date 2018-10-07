private
primitiveFunctionSelectors
	"
	all selectors in categories with names including 'LISP-functions'
"

	^ Array
		streamContents: [ :str | 
			(self allCategories select: [ :cat | cat includesSubstring: 'LISP-functions' ])
				do: [ :cat | str nextPutAll: (self organization listAtCategoryNamed: cat) ] ]