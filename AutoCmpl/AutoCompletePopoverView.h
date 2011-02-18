//
//  AutoCompletePopoverView.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoCompleteTableViewController.h"

@interface AutoCompletePopoverView : UIViewController {
	AutoCompleteTableViewController* tableController;
}
@property (nonatomic,retain) IBOutlet AutoCompleteTableViewController* tableController;



@end
