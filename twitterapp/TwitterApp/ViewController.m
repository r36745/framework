//
//  ViewController.m
//  TwitterApp
//
//  Created by Steven Roseman on 4/3/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self theAccountStore];
    
   
    
    
}

-(void)theAccountStore
{
    //Allows to access accounts within
    ACAccountStore *accountStored = [[ACAccountStore alloc]init];
    if (accountStored != nil)
    {
        ACAccountType *accountType = [accountStored accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
        if (accountType != nil)
        {
            [accountStored requestAccessToAccountsWithType:accountType options:nil completion:^(BOOL granted, NSError *error){
                if (granted)
                {
                    NSArray *twitterAccounts = [accountStored accountsWithAccountType:accountType];
                    if (twitterAccounts != nil)
                    {
                        ACAccount *currentAccount = [twitterAccounts objectAtIndex:0];
                        if (currentAccount != nil)
                        {
                            userTimeLine = [NSString stringWithFormat:@"%@?%@&%@", @"https://api.twitter.com/1.1/statuses/user_timeline.json", @"screen_name=stevierose4791", @"count=10"];
                            
                            
                            SLRequest *request = [SLRequest requestForServiceType:SLServiceTypeTwitter requestMethod:SLRequestMethodGET URL:[NSURL URLWithString:userTimeLine] parameters:nil];
                            if (request != nil)
                            {
                                [request setAccount:currentAccount];
                                [request performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error)
                                 {
                                     NSInteger responseCode = [urlResponse statusCode];
                                     if (responseCode == 200)
                                     {
                                         twitterFeed = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:nil];
                                         if (twitterFeed != nil)
                                         {
                                             NSLog(@"%@",[twitterFeed objectAtIndex:0]);
                                             [twitterTableView reloadData];
                                             
                                         }
                                     }
                                 }];
                            }
                        }
                    }
                } else
                {
                    NSLog(@"User did not grant access");
                }
            }];
        }
    }

}

//Refresh button to update timeline
-(IBAction)onRefresh
{
    [self alertRefresh];
    [self theAccountStore];
   
    [tweetAlert show];
    
}

//Tableview Rows
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (twitterFeed != nil)
    {
        return [twitterFeed count];
    }
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TweetTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tweetCell"];
    if (cell != nil)
    {
       
        //Array of twitter feeds
        NSDictionary *tweetDictionary = [twitterFeed objectAtIndex:indexPath.row];
        if (tweetDictionary != nil)
        {
            cell.tweetFeed = [tweetDictionary valueForKeyPath:@"text"];
            cell.imageView.image = [UIImage imageNamed:@"birdie.png"];
        }
        NSDictionary *dateDictionary = [tweetDictionary objectForKey:@"user"];
        if (dateDictionary != nil)
        {
            cell.tweetData = [dateDictionary valueForKeyPath:@"created_at"];
            
        }
       
        [cell refreshCell];
        return  cell;
    }
    
    return nil;
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"tweetDetailView"])
    {
        DetailTweetController *detailController = segue.destinationViewController;
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *tweetPath = [twitterTableView indexPathForCell:cell];
        
        NSDictionary *allTweets = [twitterFeed objectAtIndex:tweetPath.row];
        if (allTweets != nil)
        {
            detailController.detailUserText = [allTweets valueForKeyPath:@"text"];
            detailController.detailUserData = [allTweets valueForKeyPath:@"created_at"];
        }
        
    } else if ([segue.identifier isEqualToString:@"detailView"])
    {
        DetailView *profileView = segue.destinationViewController;
        if (profileView != nil)
        {
            UITableViewCell *cell = (UITableViewCell*)sender;
            NSIndexPath *namePath = [twitterTableView indexPathForCell:cell];
            NSDictionary *detailPath = [twitterFeed objectAtIndex:namePath.row];
            NSDictionary *lastPath = [detailPath objectForKey:@"user"];
            NSLog(@"test:%@", lastPath);
            profileView.currentName = [lastPath valueForKeyPath:@"name"];
            profileView.currentDescription = [lastPath valueForKeyPath:@"screen_name"];
         //   profileView.currentFollowers = [lastPath valueForKeyPath:@"followers_count"];
            NSLog(@"%@",profileView.currentFollowers);
        }
    }
}

-(IBAction)onProfile
{
    
}

//method call for alertview while timeline is refreshing
-(void)alertRefresh
{
     tweetAlert = [[UIAlertView alloc]initWithTitle:@"TimeLine Refreshing" message:@"Please Wait" delegate:nil cancelButtonTitle:nil otherButtonTitles: nil];
    [self performSelector:@selector(dismiss:) withObject:tweetAlert afterDelay:1.0];
}

//method to dismiss alert
-(void)dismiss:(UIAlertView *)alert
{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
