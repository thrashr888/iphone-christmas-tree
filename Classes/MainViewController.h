//
//  MainViewController.h
//  ChristmasLights
//
//  Created by Paul on 12/14/08.
//  Copyright Dogster, Inc. 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import <AudioToolbox/AudioQueue.h>

@interface MainViewController : UIViewController {
	IBOutlet UILabel *label;
	IBOutlet UIImageView *tree;
	IBOutlet UIImage *treeImage;
	int treeImageNum;
	float treeImageSpeed;
	NSString *treeImageName;
	NSString *string;
}

@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UIImageView *tree;
@property (nonatomic, retain) UIImage *treeImage;
@property (nonatomic, assign) int treeImageNum;
@property (nonatomic, assign) float treeImageSpeed;
@property (nonatomic, assign) NSString *treeImageName;
@property (nonatomic, copy) NSString *string;

- (void)updateString;
- (void)switchPhoto;
- (void)setTimer:(NSInteger *)timeSpeed;
- (void)playSound:(NSString *)fileURL;
- (void)onTimer;

@end
