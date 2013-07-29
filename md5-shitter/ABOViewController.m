//
//  ABOViewController.m
//  md5Creator
//
//  Created by Adam Weeks on 7/29/13.
//  Copyright (c) 2013 AppsVersusRobots. All rights reserved.
//

#import "ABOViewController.h"
#import <CommonCrypto/CommonCrypto.h>
#import <CommonCrypto/CommonDigest.h>

@interface ABOViewController ()

@end

@implementation ABOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goMD5:(id)sender {
    [_md5Source resignFirstResponder];
    [_md5Result resignFirstResponder];
    
    NSString *stringToEncode = _md5Source.text;


    const char * cString = [stringToEncode cStringUsingEncoding:NSUTF8StringEncoding];
    
    //Calculate the MD5 of our key
    unsigned char rawMD5 [CC_MD5_DIGEST_LENGTH];
    bzero( rawMD5, sizeof(rawMD5));
    CC_MD5( cString, strlen(cString), rawMD5);
    
    //Convert the MD5 16 bit data into a 32bit string
    NSMutableString * md5HexString = [NSMutableString string];
    
    for (int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [md5HexString appendFormat:@"%02x", rawMD5[i]];
        
    _md5Result.text = [NSString stringWithString:md5HexString];
}

- (IBAction)resetMD5:(id)sender {
    _md5Result.text = @"";
    _md5Source.text = @"";
}
@end
