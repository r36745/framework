//
//  CollectionCell.h
//  TwitterWeekTwo
//
//  Created by Steven Roseman on 4/9/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionCell : UICollectionViewCell

-(void)myrefreshCell:(NSString*)screenUsersName avatarImage:(UIImage*)avatarImage;
@property (strong, nonatomic) IBOutlet UIImageView *avatarImg;
@property (strong, nonatomic) IBOutlet UILabel *userName;


@end
