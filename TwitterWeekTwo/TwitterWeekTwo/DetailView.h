//
//  DetailView.h
//  TwitterWeekTwo
//
//  Created by Steven Roseman on 4/9/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailView : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *detailedUserName;
@property (weak, nonatomic) IBOutlet UIImageView *detailImg;
@property (nonatomic, strong) NSString *tweetDetailUserText;
@property (nonatomic, strong) UIImage *detailUserImg;

@end
