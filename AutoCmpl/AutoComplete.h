//
//  AutoComplete.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AutoCompletePopoverView.h"

@interface AutoComplete : NSObject {
	NSArray* completeItems;
	UITextField* _textField;
	UIPopoverController* popoverController;
	AutoCompletePopoverView* popoverView;
}

@property (nonatomic,retain) NSArray* completeItems;
@property (nonatomic,retain) UITextField* textField;
@property (nonatomic,retain) UIPopoverController* popoverController;
@property (nonatomic,retain) AutoCompletePopoverView* popoverView;

-(void) releaseTextField;
-(void) showPopover;
-(void) hidePopover;
-(void) madeSelection: (NSString *) selString;
@end
