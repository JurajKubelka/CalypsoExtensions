converting
asRefactorings
	^ classes collect: [ :eachClass | | methodBody |
		methodBody := 'accept: aVisitor
	^ aVisitor visit', eachClass name, ': self'.
		ClyExOverrideMethodRefactoring 
			addMethod: methodBody
			toClass: eachClass
			inProtocols: #(#visitor).
		 ]