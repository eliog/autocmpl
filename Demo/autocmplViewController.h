//
//  autocmplViewController.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AutoComplete.h"

@interface autocmplViewController : UIViewController {
	UITextField* cityTextField;
	UITextField* stateTextField;
	AutoComplete* _cityAutoComplete;
	AutoComplete* _stateAutoComplete;
}
@property (nonatomic,retain) IBOutlet UITextField* cityTextField;
@property (nonatomic,retain) IBOutlet UITextField* stateTextField;
@end

