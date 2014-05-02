//
//  DetailView.h
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"
#import "TheatreInfo.h"
#import "VideoView.h"

@interface DetailView : UIViewController

{
    IBOutlet UILabel *detailFilmTitle;
    IBOutlet UIImageView *detailFilmImg;
    IBOutlet UILabel *detailShowTimes;
    
    
}

@property (nonatomic, strong) MovieInfo* movieInfo;
@end
