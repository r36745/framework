//
//  DetailView.m
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "DetailView.h"

@interface DetailView ()

@end

@implementation DetailView

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
    
    detailFilmTitle.text = self.movieInfo.movieName;
    detailShowTimes.text = self.movieInfo.showTimes;
    detailFilmImg.image = self.movieInfo.imgTrailer;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"videoViewSegue"])
    {
        VideoView *videoView = segue.destinationViewController;
        if (videoView != nil)
        {
            NSString *tempStr = [NSString stringWithFormat:@"%@",detailFilmTitle.text];
            videoView.theMovieName = tempStr;
            videoView.theMovieTrailer = self.movieInfo.movieTrailer;
        }
        
        
        
    }

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
