//
//  MovieTableCell.h
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/25/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"

@interface MovieTableCell : UITableViewCell

{
    IBOutlet UILabel *nameOfMovie;
    IBOutlet UILabel *nameOfLocal;
    IBOutlet UIImageView *theatreImage;
    
}

-(void)refreshCell:(NSString*)movieNameString movieLocale:(NSString*)movieLocale movieTheatreImg:(UIImage*)movieTheatreImg;
@property(nonatomic, strong) NSString *movieTrailerName;
@property(nonatomic, strong) NSString *showTime;
@property(nonatomic, strong) UIImage *currMovieImg;
@end
