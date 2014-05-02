//
//  MovieVideoView.m
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/25/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "MovieVideoView.h"

@interface MovieVideoView ()
{
    
    MPMoviePlayerController *moviePlayer;
}

@end

@implementation MovieVideoView

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
    
    movieTitleView.text = self.movieInfo.movieName;

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

- (IBAction)onPlay:(id)sender {
    NSString *filePath = self.movieInfo.movieTrailer;
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    moviePlayer = [[MPMoviePlayerController alloc]initWithContentURL:fileURL];
    if (moviePlayer != nil)
    {
        [movieTitleView addSubview:moviePlayer.view];
        
        moviePlayer.view.frame = CGRectMake(0.0f, 0.0f, movieTitleView.frame.size.width, movieTitleView.frame.size.height);
        moviePlayer.fullscreen = false;
        moviePlayer.controlStyle = MPMovieControlStyleNone;
        
        [moviePlayer play];
    }
    
}

- (IBAction)onStop:(id)sender {
    [moviePlayer stop];
}
@end
