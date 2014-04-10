//
//  UserInfo.h
//  TwitterWeekTwo
//
//  Created by Steven Roseman on 4/9/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserInfo : NSObject

-(id)initWithUsers: (UIImage*)userImg userName:(NSString*)userName;

@property (nonatomic, strong) NSString *screenName;
@property (nonatomic, strong) UIImage *avatarImg;

@end
