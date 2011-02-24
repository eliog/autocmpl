//
//  autocmplViewController.h
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LookupTextFieldController.h"
#import "LookupButtonController.h"

@interface autocmplViewController : UIViewController {
	UITextField* cityTextField;
	UITextField* stateTextField;
	UIButton* button;
	LookupTextFieldController* _cityAutoComplete;
	LookupTextFieldController* _stateAutoComplete;
	LookupButtonController* _buttonAutoComplete;
}
@property (nonatomic,retain) IBOutlet UITextField* cityTextField;
@property (nonatomic,retain) IBOutlet UITextField* stateTextField;
@property (nonatomic,retain) IBOutlet UIButton*    button;
@end

