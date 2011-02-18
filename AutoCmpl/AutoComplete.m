//
//  AutoComplete.m
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "AutoComplete.h"


@implementation AutoComplete

@synthesize  completeItems, popoverController,   popoverView;
-(UITextField*) textField {
	return _textField;
}
-(void) setTextField:(UITextField *) field {
	[self releaseTextField];
	_textField = [field retain];
	[_textField addTarget:self action:@selector(editingDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
	[_textField addTarget:self action:@selector(editingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
	[_textField addTarget:self action:@selector(editing:) forControlEvents:UIControlEventEditingChanged ];
	
	self.popoverView = [[AutoCompletePopoverView alloc] initWithNibName:@"AutoCompletePopoverView" bundle:nil];
	self.popoverController = [[UIPopoverController alloc] initWithContentViewController:self.popoverView];
	[self.popoverView.tableController setAutoComplete:self];

}

-(void) releaseTextField
{
	[_textField removeTarget:self action:@selector(editingDidBegin:) forControlEvents:UIControlEventEditingDidBegin];
    [_textField removeTarget:self action:@selector(editingDidBegin:) forControlEvents:UIControlEventEditingDidEnd];
	[_textField removeTarget:self action:@selector(editing:) forControlEvents:UIControlEventEditingChanged];
	[_textField release];
}
-(void) madeSelection: (NSString *) selString {
	[_textField setText: selString];
	[self hidePopover];
}
-(IBAction)editingDidBegin:(id)sender  
{
 	NSLog(@"editing did begin");	
	 
}
-(IBAction)editingDidEnd:(id)sender
{
	NSLog(@"editing did end");
	[self hidePopover];
}
-(IBAction)editing:(id)sender
{
	NSMutableArray* autoCompleteUrls = [NSMutableArray arrayWithCapacity: [completeItems count]];
	for (NSString* data in completeItems) {
		NSRange substringRange = [data rangeOfString:_textField.text options:NSCaseInsensitiveSearch];
		if (substringRange.location ==0) {
			[autoCompleteUrls addObject:data];
		}
	}
	if ([autoCompleteUrls count]==0) {
		[self hidePopover];
	} else {
		[[self.popoverView tableController] setItems: autoCompleteUrls];
		[self showPopover];
	}
}
-(void) showPopover {
	[self.popoverController presentPopoverFromRect: _textField.frame inView:[_textField superview] permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}

-(void) hidePopover {
	[self.popoverController dismissPopoverAnimated:YES];

	
}
-(void) dealloc {
	[self releaseTextField];
	[popoverView release];
	[popoverController release];
	[_textField release];
	[completeItems release];
	[super dealloc];
}

@end
