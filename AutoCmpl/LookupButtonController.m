//
//  LookupButton.m
//  autocmpl
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LookupButtonController.h"


@implementation LookupButtonController

-(UIButton*) button {
	return _button;
}
-(void) setButton:(UIButton *) button {
	[self releaseButton];
	[self setBaseControl:button];

	_button = [button retain]; 
	[_button addTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
	
	 	
}
-(void) buttonPress: (id) button {
	[self showPopover];	
	
}
-(void) releaseButton
{ 
	[_button removeTarget:self action:@selector(buttonPress:) forControlEvents:UIControlEventTouchUpInside];
	[_button release];
}
-(void) madeSelection: (NSString *) selString {
	[super madeSelection: selString];
	[self.button setTitle: selString forState: UIControlStateNormal];
	[self.button setTitle: selString forState: UIControlStateApplication];
	[self.button setTitle: selString forState: UIControlStateHighlighted];
	[self.button setTitle: selString forState: UIControlStateReserved];
	[self.button setTitle: selString forState: UIControlStateSelected];
	[self.button setTitle: selString forState: UIControlStateDisabled];

}
-(void) dealloc {
	[self releaseButton];
	 	[super dealloc];
}

@end
