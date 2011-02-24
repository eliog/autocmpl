//
//  AutoComplete.m
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LookupTextFieldController.h"


@implementation LookupTextFieldController

@synthesize allItems;

-(UITextField*) textField {
	return _textField;
}
-(void) setTextField:(UITextField *) field {
	[self releaseTextField];
	[self setBaseControl:field];
	_textField = [field retain]; 
	[_textField addTarget:self action:@selector(editingDidEnd:) forControlEvents:UIControlEventEditingDidEnd];
	[_textField addTarget:self action:@selector(editing:) forControlEvents:UIControlEventEditingChanged ];
	
	

}
-(void) setCompleteItems:(NSArray *) items {
	self.allItems = items;
}
-(void) releaseTextField
{ 
    [_textField removeTarget:self action:@selector(editingDidBegin:) forControlEvents:UIControlEventEditingDidEnd];
	[_textField removeTarget:self action:@selector(editing:) forControlEvents:UIControlEventEditingChanged];
	[_textField release];
}
-(void) madeSelection: (NSString *) selString {
	[super madeSelection: selString];
	[_textField setText: selString];
	 
}
 
-(IBAction)editingDidEnd:(id)sender
{
	[self hidePopover];
}
-(IBAction)editing:(id)sender
{
	NSMutableArray* autoCompleteUrls = [NSMutableArray arrayWithCapacity: [allItems count]];
	for (NSString* data in allItems) {
		NSRange substringRange = [data rangeOfString:_textField.text options:NSCaseInsensitiveSearch];
		if (substringRange.location ==0) {
			[autoCompleteUrls addObject:data];
		}
	}
	if ([autoCompleteUrls count]==0) {
		[self hidePopover];
	} else {
		[super setCompleteItems: autoCompleteUrls];
		[self showPopover];
	}
}

-(void) dealloc {
	[self releaseTextField];
	[allItems release];
	[super dealloc];
}

@end
