I am an abstract command that is able to generate new method.
My subclasses should define 
	- constructedMethodSelector to return method's name,
	- methodProtocols to return method's protocol, and
	- methodSourceCodeForClass: to define method's source code
The methods are be defined on the class side.

If a subclass wants to reject classes that already define the constructed method, it should override the shouldRejectClassesWithExistingMethods method.

Any change has to be approved by a user, if a method is redefined (already exists). See the isComplexRefactoring method.