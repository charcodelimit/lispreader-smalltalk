-- hacks --
endEntry
	"Display all the characters since the last endEntry, and reset the stream"

	self changed: #endEntry.
"	self dependents ifNotEmpty: [self reset]."
	