//
//  ABOViewController.h
//  md5Creator
//
//  Created by Adam Weeks on 7/29/13.
//  Copyright (c) 2013 AppsVersusRobots. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ABOViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextView *md5Source;
@property (strong, nonatomic) IBOutlet UITextView *md5Result;
- (IBAction)goMD5:(id)sender;
- (IBAction)resetMD5:(id)sender;

@end
