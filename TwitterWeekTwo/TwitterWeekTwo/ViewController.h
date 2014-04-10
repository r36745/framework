//
//  ViewController.h
//  TwitterWeekTwo
//
//  Created by Steven Roseman on 4/9/14.
//  Copyright (c) 2014 Steven Roseman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Social/Social.h>
#import <Accounts/Accounts.h>
#import "UserInfo.h"
#import "DetailView.h"
#import "CollectionCell.h"

@interface ViewController : UIViewController<UICollectionViewDelegate, UICollectionViewDataSource>

{
    NSDictionary *accountFeed;
    NSArray *tempArrays;
    NSMutableArray *mainArray;
    
    
}

@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;


@end
