private
addClassRefactoring
	^ RBAddClassRefactoring
		addClass: (self testClassNameFrom: targetClass)
		superclass: (targetClass environment at: #TestCase)
		subclasses: #()
		category: (self testClassCategoryFrom: targetClass).