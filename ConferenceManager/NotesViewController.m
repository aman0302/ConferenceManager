//
//  NotesViewController.m
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/19/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import "NotesViewController.h"
#import "OxygenBlastCourse.h"

@interface NotesViewController ()

@end
static NSString *defaultNote = @"Enter your notes here....";
@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *userNotes = defaultNote;
    
    if(self.course.userNotes !=nil){
        userNotes = self.course.userNotes;
    }
    else{
        self.textView.textColor = [UIColor lightGrayColor];
    }
    
    self.textView.text = userNotes;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)saveNotes:(id)sender{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Notes" message:@"Save your notes?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action) {
        self.course.userNotes = self.textView.text;
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
        //do nothing
    }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:^{
        [self.textView resignFirstResponder];
    }];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
