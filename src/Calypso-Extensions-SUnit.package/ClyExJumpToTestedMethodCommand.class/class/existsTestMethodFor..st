testing
existsTestMethodFor: aCompiledMethod 
	"Return true if there is already a test case method."
	^ aCompiledMethod methodClass environment
			at: (self testClassNameFor: aCompiledMethod methodClass)
			ifPresent: [ :testCaseClass | 
				testCaseClass includesSelector: (self testMethodNameFor: aCompiledMethod) ]
			ifAbsent: [ false ]