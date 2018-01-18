converting
asRefactorings
	^ classes collect: [ :eachClass | | methodBody |
		methodBody := self class codeForClass: eachClass.
		ClyExOverrideMethodRefactoring 
			addMethod: methodBody
			toClass: eachClass
			inProtocols: #(#initialization).
		 ]