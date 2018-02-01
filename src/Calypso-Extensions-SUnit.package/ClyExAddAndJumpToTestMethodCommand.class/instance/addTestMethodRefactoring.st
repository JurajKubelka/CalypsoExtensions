private
addTestMethodRefactoring
	^ ClyExOverrideMethodRefactoring
		addMethod: self testMethodBody
		toClass: self testClassName
		inProtocols: { self testMethodProtocol }