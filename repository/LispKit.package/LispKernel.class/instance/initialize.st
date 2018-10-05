private - initialization
initialize
topmostLisp := self.
	ignoreCase := false.
	self getNewEnvironment.
	constantVariables := #().
	self defineDefaultBindings.
	self definePrimitiveAliases