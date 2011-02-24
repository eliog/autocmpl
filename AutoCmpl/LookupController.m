//
//  LookupController.m
//  autocmpl
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LookupController.h"


@implementation LookupController
	
@synthesize baseControl;
@synthesize completeItems;
@synthesize popoverController;
@synthesize popoverView;

-(void) showPopover {
	[[self.popoverView tableController] setItems: self.completeItems];
	[self.popoverController presentPopoverFromRect: baseControl.frame inView:[baseControl superview] permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}

-(void) hidePopover {
	[self.popoverController dismissPopoverAnimated:YES];
}

-(void) setBaseControl: (UIControl*) control {
	[baseControl release];
	baseControl = [control retain];
	
	self.popoverView = [[LookupItemsPopoverView alloc] initWithNibName:@"LookupItemsPopoverView" bundle:nil];
	self.popoverController = [[UIPopoverController alloc] initWithContentViewController:self.popoverView];
	[self.popoverView.tableController setAutoComplete:self];
}



-(void) madeSelection: (NSString *) selString {
	[self hidePopover];
}

-(void) dealloc {
	[baseControl release];
	[completeItems release];
	[popoverView release];
	[popoverController release];
	
	[super dealloc];
}

@end
