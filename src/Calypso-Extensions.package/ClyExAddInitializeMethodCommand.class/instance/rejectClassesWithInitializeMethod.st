private
rejectClassesWithInitializeMethod
	classes := classes reject: [ :eachClass | 
		self class hasInitializeMethod: eachClass ]