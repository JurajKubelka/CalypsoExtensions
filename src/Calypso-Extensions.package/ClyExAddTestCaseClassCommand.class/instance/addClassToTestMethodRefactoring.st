private
addClassToTestMethodRefactoring
	^ ClyExOverrideMethodRefactoring 
			addMethod: self classToTestMethodBody
			toClass: [ targetClass environment at: (self testClassNameFrom: targetClass) ]
			inProtocols: #accessing.