accessing
methodSourceCodeForClass: aClass
	"Return body of initialize method"
	<return: #String>
	^ String streamContents: [ :aStream | 
		aStream << 'initialize'; cr.
		aClass isMeta ifFalse: [ aStream tab << 'super initialize.'; cr. ].
		aClass instVarNames sorted 
			do: [ :instVarName |
				aStream tab << instVarName << ' := nil.' ]
			separatedBy: [ aStream cr ] ].
	