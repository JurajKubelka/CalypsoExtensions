converting
asRefactorings
	^ classes collect: [ :eachClass | | methodBody |
		methodBody := self methodSourceCodeForClass: eachClass.
		ClyExOverrideMethodRefactoring 
			addMethod: methodBody
			toClass: eachClass
			inProtocols: self methodProtocols.
		 ]