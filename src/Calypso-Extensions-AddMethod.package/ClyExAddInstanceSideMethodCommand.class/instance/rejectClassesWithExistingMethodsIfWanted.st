private
rejectClassesWithExistingMethodsIfWanted
	self shouldRejectClassesWithExistingMethods ifFalse: [ ^ self ].
	classes := classes reject: [ :eachClass | 
		self class constructedMethodSelectorExistsInClass: eachClass ]