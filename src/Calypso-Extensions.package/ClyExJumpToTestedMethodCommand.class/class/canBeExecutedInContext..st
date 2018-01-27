testing
canBeExecutedInContext: aToolContext
	true ifTrue: [ ^ false ].
	^ (super canBeExecutedInContext: aToolContext) and: [ 
		aToolContext lastSelectedClass isTestCase and: [ 
			(self existsTestedMethodFor: aToolContext lastSelectedMethod) ] ]