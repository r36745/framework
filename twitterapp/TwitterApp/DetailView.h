//
//  DetailView.h
//  TwitterApp
//
//  Created by Steven Roseman on 4/6/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController

{
    IBOutlet UILabel *nameLabel;
    IBOutlet UILabel *descriptionLabel;
    IBOutlet UILabel *followersLabel;
    IBOutlet UILabel *numFriendsLabel;
    
    
}
@property (strong, nonatomic) NSString *currentName;
@property (strong, nonatomic) NSString *currentDescription;
@property (strong, nonatomic) NSNumber* currentFollowers;
@property (nonatomic) NSString *currentNumFriends;

@end
