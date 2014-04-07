//
//  DetailTweetController.h
//  TwitterApp
//
//  Created by Steven Roseman on 4/3/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailTweetController : UIViewController

{
    IBOutlet UILabel *postText;
    IBOutlet UILabel *postDate;
    
    
}

-(IBAction)onPush:(id)sender;
@property (nonatomic, strong) NSString *detailUserText;
@property (nonatomic, strong) NSString *detailUserData;
@property (nonatomic, strong) NSDictionary *goodTweets;
@end
