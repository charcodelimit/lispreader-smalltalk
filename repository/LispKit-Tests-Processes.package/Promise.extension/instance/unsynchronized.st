*LispKit-Tests-Processes
unsynchronized
	"This is useful for tests, because it's quite easy otherwise to deadlock your image. It is a DISASTER to use this in production code!"
	mutex := NullMutex new.