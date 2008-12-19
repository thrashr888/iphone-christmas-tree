//
//  FlipsideViewController.m
//  ChristmasLights
//
//  Created by Paul on 12/14/08.
//  Copyright Dogster, Inc. 2008. All rights reserved.
//

#import "FlipsideViewController.h"

#define LocStr(key) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]

@implementation FlipsideViewController

@synthesize updateTextView;
@synthesize string;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateString];
    self.view.backgroundColor = [UIColor viewFlipsideBackgroundColor];      
	NSLog(@"FlipsideViewDidLoad");
}

- (void)updateString {
	
	// Store the text of the text field in the 'string' instance variable.
	//self.string = NSLocalizedString(@"About", [[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"]);
	self.string = [NSString stringWithFormat:LocStr(@"About"), [[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"], [[NSUserDefaults standardUserDefaults] stringForKey:@"from_name_preference"]];
	NSLog(self.string);
	
    // Set the text of the label to the value of the 'string' instance variable.
	updateTextView.text = self.string;
	//[updateTextView scrollRangeToVisible:NSMakeRange([updateTextView.text length], 0)]; // scroll to the bottom on updates
}

- (void)visitURL {
	[NSURL URLWithString:@"http://www.paulthrasher.com"];
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}


@end
