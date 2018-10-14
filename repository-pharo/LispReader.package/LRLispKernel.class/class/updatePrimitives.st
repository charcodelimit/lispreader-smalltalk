private
updatePrimitives

"Perform the integration of newly defined primitives into the LispKernel hierarchy system, clean up if necessary
This has on-the-fly effect to all lisp interpreter instances"

	LRLispKernel withAllSubclasses do: [:lispclass | 
		lispclass compilePrimitiveLists].