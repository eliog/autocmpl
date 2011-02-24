//
//  AutoComplete.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LookupItemsPopoverView.h"
#import "LookupController.h"

@interface LookupTextFieldController : LookupController {
	UITextField* _textField;
	NSArray* allItems;
	
}

@property (nonatomic,retain) UITextField* textField;
@property (nonatomic,retain) NSArray* allItems;

-(void) releaseTextField;

@end
