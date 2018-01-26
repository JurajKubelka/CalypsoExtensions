private
addClassRefactoring
	^ RBAddClassRefactoring
		addClass: self testClassNameFrom
		superclass: #TestCase
		subclasses: #()
		category: self testClassCategoryFrom