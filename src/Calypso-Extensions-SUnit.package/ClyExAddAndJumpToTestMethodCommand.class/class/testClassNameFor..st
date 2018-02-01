accessing
testClassNameFor: aClass
	^ (aClass theNonMetaClass name asString, 'Test') asSymbol