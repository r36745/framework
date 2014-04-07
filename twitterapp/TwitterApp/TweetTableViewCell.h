//
//  TweetTableViewCell.h
//  TwitterApp
//
//  Created by Steven Roseman on 4/3/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TweetTableViewCell : UITableViewCell

{
    IBOutlet UILabel *tweetPost;
    IBOutlet UILabel *tweetDate;
    IBOutlet UILabel *name;
}
-(void)refreshCell;

@property (nonatomic, strong) NSString *tweetFeed;
@property (nonatomic, strong) NSString *tweetData;
@property (nonatomic, strong) NSString *tweetName;
@end
