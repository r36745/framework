//
//  UserInfo.m
//  TwitterWeekTwo
//
//  Created by Steven Roseman on 4/9/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "UserInfo.h"

@implementation UserInfo


-(id)initWithUsers: (UIImage*)userImg userName:(NSString*)userName
{
    _screenName = userName;
    _avatarImg = userImg;
    
    return self;
}
@end
