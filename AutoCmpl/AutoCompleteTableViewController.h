//
//  AutoCompleteTableViewController.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AutoComplete;


@interface AutoCompleteTableViewController : UITableViewController {
	NSArray* items;
	AutoComplete* autoComplete;
}




-(void)setItems:(NSArray *) newItems;
-(void)setAutoComplete: (AutoComplete *) newAutoComplete;
@end
