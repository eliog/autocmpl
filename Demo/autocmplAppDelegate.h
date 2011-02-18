//
//  autocmplAppDelegate.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class autocmplViewController;

@interface autocmplAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    autocmplViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet autocmplViewController *viewController;

@end

