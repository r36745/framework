//
//  MovieTableCell.m
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/25/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import "MovieTableCell.h"

@implementation MovieTableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
    
    
}

-(void)refreshCell:(NSString*)movieNameString movieLocale:(NSString*)movieLocale movieTheatreImg:(UIImage*)movieTheatreImg
{
    nameOfMovie.text = movieNameString;
    nameOfLocal.text = movieLocale;
    theatreImage.image = movieTheatreImg;
}



- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
