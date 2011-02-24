//
//  LookupButtonControllerDelegate.h
//  charmIos
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LookupButtonController;

@protocol LookupButtonControllerDelegate

-(void) itemPickedFor: (LookupButtonController *) lbc value:(NSString *) selString;

@end
