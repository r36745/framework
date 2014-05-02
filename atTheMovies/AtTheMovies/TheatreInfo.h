//
//  TheatreInfo.h
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TheatreInfo : NSObject


@property (nonatomic, strong) NSString *theatreName;
@property (nonatomic, strong) NSString *theatreLocation;
@property (nonatomic, strong) UIImage *theatreImg;
@property (nonatomic, strong) NSMutableArray *movieSelectionArray;


@end
