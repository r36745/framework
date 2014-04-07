//
//  DetailView.m
//  TwitterApp
//
//  Created by Steven Roseman on 4/6/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "DetailView.h"

@interface DetailView ()

@end

@implementation DetailView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *numFollowers = [NSString stringWithFormat: @"%@",self.currentFollowers];
    NSString *numFriends = [NSString stringWithFormat: @"%@",self.currentNumFriends];
    nameLabel.text = _currentName;
    descriptionLabel.text = _currentDescription;
    followersLabel.text = numFollowers;
    numFriendsLabel.text = numFriends;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end