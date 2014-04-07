//
//  ViewController.h
//  TwitterApp
//
//  Created by Steven Roseman on 4/3/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TweetTableViewCell.h"
#import "DetailTweetController.h"
#import <Accounts/Accounts.h>
#import <Social/Social.h>
#import "DetailView.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

{
    IBOutlet UITableView *twitterTableView;
    IBOutlet UILabel *detailsView;
    NSArray *twitterFeed;
    UIAlertView *tweetAlert;
    NSString *userTimeLine;
    NSDictionary *tweetTime;

}
-(IBAction)onProfile;
-(IBAction)onRefresh;
-(void)theAccountStore;
-(void)dismiss:(UIAlertView*)alert;
-(void)alertRefresh;

@property (weak, nonatomic) NSString *myText;

@end
