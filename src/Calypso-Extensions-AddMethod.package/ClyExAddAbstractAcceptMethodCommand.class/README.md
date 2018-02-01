I add abstract accept: methods to selected classes.
For example:

MyClass >> accept: aVisitor
	^ self subclassResponsibility
