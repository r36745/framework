//
//  VideoView.h
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"
#import <MediaPlayer/MediaPlayer.h>

@interface VideoView : UIViewController

{
    
    IBOutlet UILabel *filmTitle;
    IBOutlet UIView *movieTrailerView;
}
-(IBAction)thePlay:(id)sender;
-(IBAction)toStop:(id)sender;
@property (nonatomic, strong) NSString *theMovieTrailer;
@property (nonatomic, strong) NSString *theMovieName;
@property (nonatomic, strong) MovieInfo* movieInfo;
@property (strong, nonatomic) NSArray *totalArray;
@end
