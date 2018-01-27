accessing
testedClass
	| testedClass |
	testedClass := targetClass 
		compiledMethodAt: #classToTest
		ifPresent: [ :aCompiledMethod | (self testedClassFrom: aCompiledMethod) ]
		ifAbsent: [ nil ].
	testedClass ifNil: [ ^ self testedClassFromClassName ].
	^ testedClass