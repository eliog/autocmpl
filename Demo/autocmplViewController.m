//
//  autocmplViewController.m
//  autocmpl
//
//  Created by Elio Gonzalez on 2/18/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "autocmplViewController.h"

@implementation autocmplViewController

@synthesize cityTextField, stateTextField;

 
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
				
    }
    return self;
}
 

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


 
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	_cityAutoComplete = [[AutoComplete alloc] init];
	_stateAutoComplete = [[AutoComplete alloc] init];
	[_cityAutoComplete setTextField: cityTextField];
	[_cityAutoComplete setCompleteItems: [NSArray arrayWithObjects: @"Miami", @"Ft. Lauderdale", @"Boca Raton", @"Key West", @"Miami Lakes", @"Miami Gardens",nil]];
	
	[_stateAutoComplete setTextField: stateTextField];
	[_stateAutoComplete setCompleteItems: [NSArray arrayWithObjects: @"Florida", @"New York", @"California", @"North Carolina", @"South Carolina", @"Georgia",nil]];
}
 


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[_cityAutoComplete release];
	[cityTextField release];
    [super dealloc];
}

@end
