//
//  FlipsideViewController.h
//  ChristmasLights
//
//  Created by Paul on 12/14/08.
//  Copyright Dogster, Inc. 2008. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlipsideViewController : UIViewController {
	IBOutlet UITextView *updateTextView;
	NSString *string;
}

@property (nonatomic, retain) UITextView *updateTextView;
@property (nonatomic, copy) NSString *string;

- (void)updateString;
- (void)visitURL;

@end
