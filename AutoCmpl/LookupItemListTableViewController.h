//
//  AutoCompleteTableViewController.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LookupController;


@interface LookupItemListTableViewController : UITableViewController {
	NSArray* items;
	LookupController* autoComplete;
}




-(void)setItems:(NSArray *) newItems;
-(void)setAutoComplete: (LookupController *) newAutoComplete;
@end
