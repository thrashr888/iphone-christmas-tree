//
//  MainViewController.m
//  ChristmasLights
//
//  Created by Paul on 12/14/08.
//  Copyright Dogster, Inc. 2008. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"

#define LocStr(key) [[NSBundle mainBundle] localizedStringForKey:(key) value:@"" table:nil]

@implementation MainViewController

@synthesize label, tree, treeImage, treeImageName, treeImageNum, treeImageSpeed, string;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}

- (void)updateString {
	
	// Store the text of the text field in the 'string' instance variable.
	//self.string = NSLocalizedString(@"Welcome", [[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"]);
	self.string = [NSString stringWithFormat:LocStr(@"Welcome"), [[NSUserDefaults standardUserDefaults] stringForKey:@"name_preference"]];
	NSLog(self.string);
	
    // Set the text of the label to the value of the 'string' instance variable.
	label.text = self.string;
	//label.font = [UIFont boldSystemFontOfSize:20];
	label.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
	//NSLog(@"array: %@",[UIFont familyNames]);
	//NSLog(@"array: %@",[UIFont fontNamesForFamilyName:@"Helvetica"]);
	
	/*array: (
		Courier,
		AppleGothic,
		Arial,
		"STHeiti TC",
		"Hiragino Kaku Gothic ProN",
		"Courier New",
		Zapfino,
		"Arial Unicode MS",
		"STHeiti SC",
		"American Typewriter",
		Helvetica,
		"Marker Felt",
		"Helvetica Neue",
		"DB LCD Temp",
		Verdana,
		"Times New Roman",
		Georgia,
		"STHeiti J",
		"Arial Rounded MT Bold",
		"Trebuchet MS",
		"STHeiti K"
	)*/
}

-(void)switchPhoto {
	NSLog(@"Switch Photo");
	NSInteger i = (int) self.treeImageNum + (int) 1;
	NSLog(@"i: %d",(int) i);
	
	[self setTreeImageNum:(int) i];
	NSLog(@"treeImageNum: %d",self.treeImageNum);

	if((int) self.treeImageNum == 0 || (int) self.treeImageNum > 4){
		[self setTreeImageNum:(int) 1];
	}
	
	self.treeImageName = [NSString stringWithFormat:@"xmastree_f%d", self.treeImageNum];
	NSLog(@"treeImageName: %@",self.treeImageName);

	self.treeImage = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:self.treeImageName ofType:@"png"]];
	[self.tree setImage:(treeImage)];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSLog(@"MainViewDidLoad");
	//[self setTreeImageNum:(int) 1];
	self.treeImageNum = (int) 1;
	self.treeImageSpeed = (float) 0.5;
    [self updateString];
	
	[self playSound:@"song.wav"];
	
	[NSTimer scheduledTimerWithTimeInterval:self.treeImageSpeed target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

-(void)setTimer:(NSInteger *)timeSpeed {
	//[self setTreeImageSpeed:(float) timeSpeed];
	[NSTimer scheduledTimerWithTimeInterval:self.treeImageSpeed target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

-(void)playSound:(NSString *)fileURL {
	//AudioServicesCreateSystemSoundID (fileURL, soundID);
	//AudioServicesPlaySystemSound (soundID);
}

-(void) onTimer {
	[self switchPhoto];
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
	[label release];
}

- (void)dealloc {
	[label release];
	[tree release];
	[treeImage release];
	[treeImageName release];
	[string release];
    [super dealloc];
}

@end
