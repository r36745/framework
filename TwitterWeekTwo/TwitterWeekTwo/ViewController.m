//
//  ViewController.m
//  TwitterWeekTwo
//
//  Created by Steven Roseman on 4/9/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self loadAlert];
    [self twitterAccountStore];
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [mainArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"tweetCollectCell" forIndexPath:indexPath];
    
    if (cell != nil)
    {
        UserInfo *user = [mainArray objectAtIndex:indexPath.row];
        
        [cell myrefreshCell:user.screenName avatarImage:user.avatarImg];
    
    
    }
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"detailView"])
    {
        DetailView *detailView = segue.destinationViewController;
        UICollectionViewCell *cell = (UICollectionViewCell*)sender;
        NSIndexPath *path = [_mainCollectionView indexPathForCell:cell];
        
        UserInfo *userInfo = [mainArray objectAtIndex:path.row];
        
        detailView.tweetDetailUserText = userInfo.screenName;
        detailView.detailUserImg = userInfo.avatarImg;
        
    }
}

-(void)twitterAccountStore
{
    ACAccountStore *accountStore = [[ACAccountStore alloc]init];
    if (accountStore != nil)
    {
        ACAccountType *accountType = [accountStore accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierTwitter];
        if (accountType != nil)
        {
            [accountStore requestAccessToAccountsWithType:accountType options:nil completion:^(BOOL granted, NSError *error) {
                if (granted)
                {
                    NSArray *tweetAccounts = [accountStore accountsWithAccountType:accountType];
                    if (tweetAccounts != nil)
                    {
                        ACAccount *currentAccount = [tweetAccounts objectAtIndex:0];
                        if (currentAccount != nil)
                        {
                            NSString *friendListString = @"https://api.twitter.com/1.1/friends/list.json?cursor=-1&skip_status=true&include_user_entities=false";
                            
                            
                            SLRequest *request = [SLRequest requestForServiceType:SLServiceTypeTwitter requestMethod:SLRequestMethodGET URL:[NSURL URLWithString:friendListString] parameters:nil];
                            if (request != nil)
                            {
                                [request setAccount:currentAccount];
                                [request performRequestWithHandler:^(NSData *responseData, NSHTTPURLResponse *urlResponse, NSError *error) {
                                    NSInteger responseCode = [urlResponse statusCode];
                                    if (responseCode == 200)
                                    {
                                        accountFeed = [NSJSONSerialization JSONObjectWithData:responseData options:0 error:nil];
                                        
                                        tempArrays = [accountFeed objectForKey:@"users"];
                                        
                                        mainArray = [[NSMutableArray alloc]init];
                                        for(int i = 0; i < [tempArrays count]; i++)
                                        {
                                            NSString *myStringName = [[tempArrays objectAtIndex:i] valueForKey:@"screen_name"];
                                            NSString *formatString = [NSString stringWithFormat:@"@%@",myStringName];
                                            
                                            NSString *userImage = [[tempArrays objectAtIndex:i]valueForKey:@"profile_image_url"];
                                            
                                            NSString *prettyImg = [userImage stringByReplacingOccurrencesOfString:@"_normal" withString:@""];
                                            
                                            NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:prettyImg]];
                                            
                                            UserInfo *info = [[UserInfo alloc]initWithUsers:[UIImage imageWithData:data] userName:formatString];
                                            
                                            [mainArray addObject:info];
                                            
                                        }
                                        
                                        if (accountFeed != nil)
                                        {
                                             NSLog(@"%@",accountFeed);
                                            [_mainCollectionView reloadData];
                                        }
                                    }
                                }];
                            }
                            
                            
                        }
                    }
                } else
                {
                    NSLog(@"User Did not grant access");
                }
            }];
        }
    }

}

-(void)loadAlert
{
    UIAlertView *launchAlert = [[UIAlertView alloc]initWithTitle:@"Please Wait" message:@"another message" delegate:nil cancelButtonTitle:nil otherButtonTitles: nil];
    
    [self performSelector:@selector(dismiss:) withObject:launchAlert afterDelay:18.0];
    
    [launchAlert show];
}

-(void)dismiss:(UIAlertView*)alert
{
    [alert dismissWithClickedButtonIndex:0 animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
