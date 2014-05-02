//
//  MovieVideoView.h
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/25/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TheatreInfo.h"
#import <MediaPlayer/MediaPlayer.h>
#import "MovieInfo.h"


@interface MovieVideoView : UIViewController

{
    IBOutlet UILabel *movieTitleView;
    
}
@property (strong, nonatomic) MovieInfo* movieInfo;
@property (strong, nonatomic) NSArray *totalArray;
- (IBAction)onPlay:(id)sender;
- (IBAction)onStop:(id)sender;

@end
