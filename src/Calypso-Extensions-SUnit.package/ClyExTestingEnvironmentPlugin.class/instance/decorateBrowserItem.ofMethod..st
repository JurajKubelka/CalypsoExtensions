item decoration
decorateBrowserItem: anItem ofMethod: aMethod

	| testedMethod |
	aMethod origin isTestCase ifFalse: [ ^ self ].
	aMethod isTestMethod ifFalse: [ ^ self ].
	testedMethod := self findTestedMethodCoveredBy: aMethod.
	testedMethod ifNil: [ ^ self ].
	anItem addProperty: (ClyExTestingMethodProperty coveringMethod: testedMethod)