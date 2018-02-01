testing
existsTestCaseFor: aClass
	"Return true if aClass already has a test case class."
	^ aClass environment 
		at: (self testClassNameFor: aClass)
		ifPresent: [ true ]
		ifAbsent: [ false ]