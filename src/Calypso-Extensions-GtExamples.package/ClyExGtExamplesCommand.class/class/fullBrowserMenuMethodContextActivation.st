activation
fullBrowserMenuMethodContextActivation
	"<classAnnotation>"
	^ CmdContextMenuCommandActivation
		byItemOf: ClyExGtExamplesMenuGroup
		order: self menuItemOrder
		for: ClyMethodContextOfFullBrowser