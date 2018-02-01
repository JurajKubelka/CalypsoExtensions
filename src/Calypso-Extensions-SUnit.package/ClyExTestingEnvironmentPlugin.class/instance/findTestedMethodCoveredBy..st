tests lookup
findTestedMethodCoveredBy: aMethod
	| selectorString coveredClass |
	aMethod isTestMethod ifFalse: [ ^ nil ].
	coveredClass := self findTestedClassCoveredBy: aMethod origin ifAbsent: [ ^ nil ].
	
	selectorString := (self normalizeSelectorForComparison: aMethod selector).
	
	^ coveredClass methods
		detect: [ :each | 'test', (self normalizeSelectorForComparison: each selector) = selectorString ]
		ifNone: [ nil ]