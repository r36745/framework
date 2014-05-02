//
//  MovieCell.h
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCell : UITableViewCell

{
    IBOutlet UIImageView *celebImg;
    IBOutlet UILabel *celebFilmName;
    IBOutlet UILabel *movieShowtimes;
    
}

-(void)refreshMovieCell:(NSString*)movieName movieShowtimes:(NSString*)movieShowTimes movieImage:(UIImage*)movieImage;

@end
