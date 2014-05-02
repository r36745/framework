//
//  MovieInfo.h
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieInfo : NSObject

@property (nonatomic, strong) NSString *movieName;
@property(nonatomic, strong) NSString *showTimes;
@property(nonatomic, strong) NSString *movieTrailer;
@property(nonatomic, strong) UIImage *imgTrailer;

@end
