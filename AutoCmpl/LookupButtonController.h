//
//  LookupButton.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LookupController.h"
#import "LookupButtonControllerDelegate.h"

@interface LookupButtonController : LookupController {
	UIButton* _button;
	id<LookupButtonControllerDelegate> delegate;
}

@property (nonatomic, retain) UIButton* button;
@property (nonatomic, assign) id<LookupButtonControllerDelegate> delegate;
-(void) releaseButton;
-(void) setButtonTitle: (NSString *) newTitle;
@end
