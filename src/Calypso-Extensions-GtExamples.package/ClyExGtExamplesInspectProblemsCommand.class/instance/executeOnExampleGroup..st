execution
executeOnExampleGroup: aGtExampleGroup 
	| examples |
	examples := aGtExampleGroup examples select: [ :eachExampleWithResult | 
		eachExampleWithResult example hasProblems ].
	examples
		ifNotEmpty: [ examples inspect ]
		ifEmpty: [ self notifyNoExamples ]