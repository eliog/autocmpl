//
//  LookupButton.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LookupController.h"

@interface LookupButtonController : LookupController {
	UIButton* _button;
}

@property (nonatomic, retain) UIButton* button;

-(void) releaseButton;
@end
