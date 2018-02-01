accessing
methodSourceCodeForClass: aClass
	^ 'accept: aVisitor
	^ aVisitor visit', aClass name, ': self'