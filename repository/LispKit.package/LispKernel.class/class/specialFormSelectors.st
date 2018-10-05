private
specialFormSelectors

"
	all selectors in categories with names including 'LISP-special forms'
"

	^ Array streamContents: [:str |
			(self allCategories select: [:cat | 
					cat includesSubstring: 'LISP-special forms'])
				do: [:cat | str nextPutAll: (self allMethodsInCategory: cat)]]
