//
//  ViewController.h
//  RosemanTheatre
//
//  Created by Steven Roseman on 4/20/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieTableCell.h"
#import "MovieDetailsView.h"
#import "MovieVideoView.h"
#import "TheatreInfo.h"
#import "MovieInfo.h"

@interface ViewController : UIViewController<UITabBarDelegate,UITableViewDataSource>
{
    IBOutlet UITableView *movieTableView;
    
}
@property (nonatomic,strong) TheatreInfo* theatreInfo;
@end
