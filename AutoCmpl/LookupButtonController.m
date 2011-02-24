//
//  LookupButton.m
//  autocmpl
//
//  Created by Elio Gonzalez on 2/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "LookupButtonController.h"


@implementation LookupButtonController

@synthesize delegate;

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
	[self setButtonTitle: selString];
	[delegate itemPickedFor:self value:selString];
}
-(void) setButtonTitle: (NSString *) newTitle {
	[self.button setTitle: newTitle forState: UIControlStateNormal];
	[self.button setTitle: newTitle forState: UIControlStateApplication];
	[self.button setTitle: newTitle forState: UIControlStateHighlighted];
	[self.button setTitle: newTitle forState: UIControlStateReserved];
	[self.button setTitle: newTitle forState: UIControlStateSelected];
	[self.button setTitle: newTitle forState: UIControlStateDisabled];
	
}
-(void) dealloc {
	[self releaseButton];
	[super dealloc];
}

@end
