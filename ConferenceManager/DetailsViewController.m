//
//  DetailsViewController.m
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/19/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import "DetailsViewController.h"
#import "OxygenBlastCourse.h"
#import "NotesViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
    self.titleLabel.text = self.course.title;
    self.speakerLabel.text = self.course.speaker;
    self.dayLabel.text = [NSString stringWithFormat:@"%ld",(long)self.course.dayNum];
    self.timeLabel.text = self.course.time;
    self.roomLabel.text = self.course.room;
    self.detailsLabel.text = self.course.details;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)showOptions:(id)sender{
    UIAlertController *menu = [UIAlertController alertControllerWithTitle:@"Course Options" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction *favoriteOption =[UIAlertAction actionWithTitle:self.course.isFavorite==NO?@"Mark as favorite":@"Remove from favorite" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        self.course.isFavorite = !self.course.isFavorite;
    }];
    
    UIAlertAction *notesOption = [UIAlertAction actionWithTitle:@"Notes" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self performSegueWithIdentifier:@"notesSegue" sender:self];
    }];
    
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            //nothing
    }];
        
    [menu addAction:favoriteOption];
    [menu addAction:notesOption];
    [menu addAction:cancel];
    
    [self.tabBarController presentViewController:menu animated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    NotesViewController *nvc = [segue destinationViewController];
    nvc.course = self.course;
    
}

#pragma mark - Table view data source


/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
