//
//  ViewController.m
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/20/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *movieItemArray;
    NSArray *theatreArray;
    NSArray *hartMoviesArray;
    NSArray *rodriguezMoviesArray;
    NSArray *batmanMoviesArray;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MovieInfo *kevinHart = [[MovieInfo alloc]init];
    kevinHart.movieName = @"Ride Along";
    kevinHart.showTimes = @"12:30, 3:30, 5:00";
    kevinHart.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    kevinHart.imgTrailer = [UIImage imageNamed:@"kevinHart.jpg"];
    
    MovieInfo *kevinHart1 = [[MovieInfo alloc]init];
    kevinHart1.movieName = @"Think Like A Man";
    kevinHart1.showTimes = @"11:15, 1:45, 6:45, 9:15";
    kevinHart1.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    kevinHart1.imgTrailer = [UIImage imageNamed:@"kevinHart.jpg"];
    
    MovieInfo *kevinHart2 = [[MovieInfo alloc]init];
    kevinHart2.movieName = @"Think Like A Man 2";
    kevinHart2.showTimes = @"3:45, 5:45, 7:45, 10:15";
    kevinHart2.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    kevinHart2.imgTrailer = [UIImage imageNamed:@"kevinHart.jpg"];
    
    MovieInfo *kevinHart3 = [[MovieInfo alloc]init];
    kevinHart3.movieName = @"Ride Along 2";
    kevinHart3.showTimes = @"9:15, 11:45, 1:30";
    kevinHart3.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    kevinHart3.imgTrailer = [UIImage imageNamed:@"kevinHart.jpg"];
    
    MovieInfo *kevinHart4 = [[MovieInfo alloc]init];
    kevinHart4.movieName = @"Let Me Explain";
    kevinHart4.showTimes = @"1:15, 3:15, 5:15, 7:15";
    kevinHart4.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    kevinHart4.imgTrailer = [UIImage imageNamed:@"kevinHart.jpg"];
    
    
    
    
    MovieInfo *batman = [[MovieInfo alloc]init];
    batman.movieName = @"Batman";
    batman.showTimes = @"12:30, 3:30, 5:00";
    batman.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    
    batman.imgTrailer = [UIImage imageNamed:@"batman.jpeg"];
    
    MovieInfo *batman1 = [[MovieInfo alloc]init];
    batman1.movieName = @"The Sting";
    batman1.showTimes = @"11:15, 1:45, 6:45, 9:15";
    batman1.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    batman1.imgTrailer = [UIImage imageNamed:@"batman.jpeg"];
    
    MovieInfo *batman2 = [[MovieInfo alloc]init];
    batman2.movieName = @"Friday";
    batman2.showTimes = @"3:45, 5:45, 7:45, 10:15";
    batman2.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    batman2.imgTrailer = [UIImage imageNamed:@"batman.jpeg"];
    
    MovieInfo *batman3 = [[MovieInfo alloc]init];
    batman3.movieName = @"Next Friday";
    batman3.showTimes = @"9:15, 11:45, 1:30";
    batman3.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    batman3.imgTrailer = [UIImage imageNamed:@"batman.jpeg"];
    
    MovieInfo *batman4 = [[MovieInfo alloc]init];
    batman4.movieName = @"About Last Night";
    batman4.showTimes = @"1:15, 3:15, 5:15, 7:15";
    batman4.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    batman4.imgTrailer = [UIImage imageNamed:@"batman.jpeg"];

    
    
    MovieInfo *robertRodriguez = [[MovieInfo alloc]init];
    robertRodriguez.movieName = @"Ride Along";
    robertRodriguez.showTimes = @"12:30, 3:30, 5:00";
    robertRodriguez.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    robertRodriguez.imgTrailer = [UIImage imageNamed:@"rgIII.jpeg"];
    
    MovieInfo *robertRodriguez1 = [[MovieInfo alloc]init];
    robertRodriguez1.movieName = @"Rod";
    robertRodriguez1.showTimes = @"11:15, 1:45, 6:45, 9:15";
    robertRodriguez1.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    robertRodriguez1.imgTrailer = [UIImage imageNamed:@"rgIII.jpeg"];
    
    MovieInfo *robertRodriguez2 = [[MovieInfo alloc]init];
    robertRodriguez2.movieName = @"Rod II";
    robertRodriguez2.showTimes = @"3:45, 5:45, 7:45, 10:15";
    robertRodriguez2.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    robertRodriguez2.imgTrailer = [UIImage imageNamed:@"rgIII.jpeg"];
    
    MovieInfo *robertRodriguez3 = [[MovieInfo alloc]init];
    robertRodriguez3.movieName = @"Rod ";
    robertRodriguez3.showTimes = @"9:15, 11:45, 1:30";
    robertRodriguez3.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    robertRodriguez3.imgTrailer = [UIImage imageNamed:@"rgIII.jpeg"];
    
    MovieInfo *robertRodriguez4 = [[MovieInfo alloc]init];
    robertRodriguez4.movieName = @"About Last Night";
    robertRodriguez4.showTimes = @"1:15, 3:15, 5:15, 7:15";
    robertRodriguez4.movieTrailer = [[NSBundle mainBundle]pathForResource:@"rideAlong" ofType:@"mp4"];
    robertRodriguez4.imgTrailer = [UIImage imageNamed:@"rgIII.jpeg"];

   
    
    
    TheatreInfo *theatreInfo1 = [[TheatreInfo alloc]init];
    theatreInfo1.theatreName = @"AMC Theatres";
    theatreInfo1.theatreLocation = @"South Blvd";
    theatreInfo1.theatreImg = [UIImage imageNamed:@"kevinHart.jpg"];
    theatreInfo1.movieSelectionArray = [NSMutableArray arrayWithObjects:kevinHart,kevinHart1, kevinHart2, kevinHart3, kevinHart4, nil];
    
    TheatreInfo *theatreInfo2 = [[TheatreInfo alloc]init];
    theatreInfo2.theatreName = @"Regal Theatres";
    theatreInfo2.theatreLocation = @"Regal Way";
    theatreInfo2.theatreImg = [UIImage imageNamed:@"batman.jpeg"];
    theatreInfo2.movieSelectionArray = [NSMutableArray arrayWithObjects:batman, batman1, batman2, batman3, batman4, nil];
    
    TheatreInfo *theatreInfo3 = [[TheatreInfo alloc]init];
    theatreInfo3.theatreName = @"Arsley Theatres";
    theatreInfo3.theatreLocation = @"Arsley Way";
    theatreInfo3.theatreImg = [UIImage imageNamed:@"robertRod.jpeg"];
    theatreInfo3.movieSelectionArray = [NSMutableArray arrayWithObjects:robertRodriguez, robertRodriguez1, robertRodriguez2, robertRodriguez3, robertRodriguez4, nil];
    
  
  
    
    theatreArray = [NSArray arrayWithObjects:theatreInfo1, theatreInfo2, theatreInfo3,  nil];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *theatreNum = [[theatreArray objectAtIndex:section]movieSelectionArray];
    
    
    return [theatreNum count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    MovieTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"movieCell"];
    if (cell != nil)
    {
        TheatreInfo *theatreInfo = [theatreArray objectAtIndex:indexPath.section];
        MovieInfo *movieInfo = [theatreInfo.movieSelectionArray objectAtIndex:indexPath.row];
        
        
        
        [cell refreshCell:movieInfo.movieName movieLocale:movieInfo.showTimes movieTheatreImg:movieInfo.imgTrailer];
        
    }
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"detailView"])
    {
        
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [movieTableView indexPathForCell:cell];
        
        TheatreInfo *theatreInfo = [theatreArray objectAtIndex:indexPath.section];
        MovieInfo *currMovie = [theatreInfo.movieSelectionArray objectAtIndex:indexPath.row];
        
        MovieDetailsView *detailView = segue.destinationViewController;
        if (detailView != nil)
        {
            detailView.movieInfo = currMovie;
            
        }
        
    } else if ([segue.identifier isEqualToString:@"movieView"])
    {
        int i = 1;
    }
    
    
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 75;
}

-(UIView*)tableView:(UITableView*)tableView viewForHeaderInSection:(NSInteger)section
{
    
        UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, movieTableView.frame.size.width, 75.0f)];
        
        NSString *theatreName = [[theatreArray objectAtIndex:section]theatreName];
        NSString *theatreLocale = [[theatreArray objectAtIndex:section]theatreLocation];
        UIImage *theatreImage = [[theatreArray objectAtIndex:section]theatreImg];
        
        UILabel *favTheatreName = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 15.0f, movieTableView.frame.size.width, 25.0f)];
        if (favTheatreName != nil)
        {
            favTheatreName.text = theatreName;
            favTheatreName.textAlignment = NSTextAlignmentCenter;
        }
        
        UILabel *localeFav = [[UILabel alloc]initWithFrame:CGRectMake(0.0f, 50.0f,movieTableView.frame.size.width, 25.0f)];
        if (localeFav != nil)
        {
            localeFav.text = theatreLocale;
            localeFav.textAlignment = NSTextAlignmentCenter;
        }
    
    UIImageView *theatreImgMovieView = [[UIImageView alloc]initWithFrame:CGRectMake(0.0f, 0.0f, 50, 75)];
    
    if (theatreImgMovieView != nil)
    {
        theatreImgMovieView.image = theatreImage;
    }
    
    [mainView addSubview:favTheatreName];
    [mainView addSubview:localeFav];
    [mainView addSubview: theatreImgMovieView];

    
    
    return mainView;
   
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return [theatreArray count];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
