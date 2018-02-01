testing
existsTestedMethodFor: aCompiledMethod 
	"Return true if there is already a test case method."
	| testedClass |
	testedClass := self testedClassNameFor: aCompiledMethod methodClass.
	testedClass ifNil: [ ^ false ].
	^ (self testedMethodNamesFor: aCompiledMethod) anySatisfy: [ :eachSelector | 
			testedClass includesSelector: eachSelector ]