converting
asRefactorings
	| methodBody |
	methodBody := 'accept: aVisitor
	^ self subclassResponsibility'.
	^ classes collect: [ :eachClass | 
		ClyExOverrideMethodRefactoring 
			addMethod: methodBody
			toClass: eachClass
			inProtocols: #(#visitor).
		 ]