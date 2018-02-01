accessing
testedClassNameFor: aTestCaseClass 
	<return: #Class or: nil>
	| testedClass |
	testedClass := aTestCaseClass 
		compiledMethodAt: #classToTest
		ifPresent: [ :aCompiledMethod | (self testedClassFrom: aCompiledMethod) ]
		ifAbsent: [ nil ].
	testedClass ifNil: [ ^ self testedClassFromClassName: aTestCaseClass ].
	^ testedClass