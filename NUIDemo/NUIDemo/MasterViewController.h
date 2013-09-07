//
//  MasterViewController.h
//  NUIDemo
//
//  Created by Mario Stallone on 07/09/13.
//  Copyright (c) 2013 Mario Stallone. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
