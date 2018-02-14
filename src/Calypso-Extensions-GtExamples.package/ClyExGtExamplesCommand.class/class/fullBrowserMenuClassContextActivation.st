activation
fullBrowserMenuClassContextActivation
	"<classAnnotation>"
	^ CmdContextMenuCommandActivation
		byItemOf: ClyExGtExamplesMenuGroup
		order: self menuItemOrder
		for: ClyClassContextOfFullBrowser