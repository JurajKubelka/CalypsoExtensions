item decoration
decorateBrowserItem: anItem ofClass: aClass

	| testedClass |
	aClass isTestCase ifFalse: [ ^ self ].
	testedClass := self findTestedClassCoveredBy: aClass ifAbsent: [ ^ self ].
	testedClass ifNil: [ ^ self ].
	anItem addProperty: (ClyExTestingClassProperty coveringClass: testedClass)