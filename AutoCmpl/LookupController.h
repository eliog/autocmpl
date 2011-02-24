//
//  LookupController.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LookupItemsPopoverView.h"

@interface LookupController : NSObject {
	NSArray* completeItems;

	UIControl* baseControl;
	UIPopoverController* popoverController;
	LookupItemsPopoverView* popoverView;
}

@property (nonatomic, retain) UIControl* baseControl;
@property (nonatomic,retain) NSArray* completeItems;
@property (nonatomic,retain) UIPopoverController* popoverController;
@property (nonatomic,retain) LookupItemsPopoverView* popoverView;

-(void) showPopover;
-(void) hidePopover;
-(void) madeSelection: (NSString *) selString;

@end
