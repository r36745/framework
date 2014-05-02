//
//  VideoView.m
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "VideoView.h"

@interface VideoView ()

{
    MPMoviePlayerController *moviePlayer;
}

@end

@implementation VideoView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    filmTitle.text = self.theMovieName;
}

-(IBAction)thePlay:(id)sender
{
    NSString *filePath = self.theMovieTrailer;
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    moviePlayer = [[MPMoviePlayerController alloc]initWithContentURL:fileURL];
    if (moviePlayer != nil)
    {
        [movieTrailerView addSubview:moviePlayer.view];
        
        moviePlayer.view.frame = CGRectMake(0.0f, 0.0f, movieTrailerView.frame.size.width, movieTrailerView.frame.size.height);
        moviePlayer.fullscreen = false;
        moviePlayer.controlStyle = MPMovieControlStyleNone;
    }
        [moviePlayer play];
}

-(IBAction)toStop:(id)sender
{
    [moviePlayer stop];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
