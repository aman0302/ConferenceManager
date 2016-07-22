//
//  DetailsViewController.h
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/19/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import <UIKit/UIKit.h>

@class OxygenBlastCourse;
@interface DetailsViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *speakerLabel;
@property (weak, nonatomic) IBOutlet UILabel *dayLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *roomLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
@property (strong, nonatomic) OxygenBlastCourse *course;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *showOptions;

@end
