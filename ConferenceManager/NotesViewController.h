//
//  NotesViewController.h
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/19/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import <UIKit/UIKit.h>


@class OxygenBlastCourse;

@interface NotesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) OxygenBlastCourse *course;

@end
