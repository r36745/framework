//
//  ViewController.h
//  AtTheMovies
//
//  Created by Steven Roseman on 5/1/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieCell.h"
#import "TheatreInfo.h"
#import "MovieInfo.h"
#import "DetailView.h"
#import "VideoView.h"

@interface ViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

{
    IBOutlet UITableView *filmTableView;
    NSArray *theatresArray;
    NSMutableArray *movieItemsArray;
    
}

@end
