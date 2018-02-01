execution
applyResultInContext: aToolContext
	super applyResultInContext: aToolContext.
	property ifNil: [ ^ self ].
	aToolContext browser selectMethod: property coveredMethod.