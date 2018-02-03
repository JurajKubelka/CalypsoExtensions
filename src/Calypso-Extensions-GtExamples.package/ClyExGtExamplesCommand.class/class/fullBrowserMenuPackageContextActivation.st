activation
fullBrowserMenuPackageContextActivation
	<classAnnotation>
	^ CmdContextMenuCommandActivation
		byItemOf: ClyExGtExamplesMenuGroup
		order: self menuItemOrder
		for: ClyPackageContextOfFullBrowser