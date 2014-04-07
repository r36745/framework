//
//  TweetTableViewCell.m
//  TwitterApp
//
//  Created by Steven Roseman on 4/3/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "TweetTableViewCell.h"
#import <Social/Social.h>

@implementation TweetTableViewCell
@synthesize tweetFeed, tweetData;


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(void)refreshCell
{
    tweetPost.text = tweetFeed;
    
    tweetDate.text = tweetData;
    
    
    
    
}

@end
