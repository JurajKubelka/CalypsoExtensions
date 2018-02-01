testing
isComplexRefactoring
	"If any method already defines the constructed method, it has to be approved by a user."
	^ classes anySatisfy: [ :eachClass | 
		self class constructedMethodSelectorExistsInClass: eachClass ]