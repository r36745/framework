//
//  MovieDetailsView.h
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/25/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"

@interface MovieDetailsView : UIViewController

{
    
    IBOutlet UILabel *movieTitle;
    IBOutlet UIImageView *imgTrailerView;
    IBOutlet UILabel *movieShowtimes;
    
}



@property (nonatomic, strong) MovieInfo *movieInfo;
@end
