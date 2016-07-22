//
//  AllCoursesViewController.m
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/20/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import "AllCoursesViewController.h"
#import "ConferenceFactory.h"
#import "OxygenBlastCourse.h"
#import "DetailsViewController.h"

@interface AllCoursesViewController ()

@end

@implementation AllCoursesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [[ConferenceFactory sharedFactory].allCourses count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSInteger numberOfRows =0;
    if(section==0){
        numberOfRows =[[ConferenceFactory sharedFactory].allCourses[@"Day One"] count];
    }
    else if (section ==1){
        numberOfRows =[[ConferenceFactory sharedFactory].allCourses[@"Day Two"] count];
    }
    return numberOfRows;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *header;
    if(section==0){
        header=@"Day 1";
    } else if(section ==1){
        header=@"Day 2";
    } else{
        header=@"Fuck";
    }
    
    return header;
}
-(OxygenBlastCourse *)getCourseForIndexPath:(NSIndexPath *) indexPath{
    NSArray *courses;
    if(indexPath.section==0){
        courses = [ConferenceFactory sharedFactory].allCourses[@"Day One"];
    }else {
        courses = [ConferenceFactory sharedFactory].allCourses[@"Day Two"];
    }
    
    OxygenBlastCourse *theCourse = courses[indexPath.row];
    return theCourse;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"courseCell" forIndexPath:indexPath];
    
    OxygenBlastCourse *theCourse = [self getCourseForIndexPath:indexPath];
    
    cell.textLabel.text = theCourse.title;
    cell.detailTextLabel.text =[NSString stringWithFormat:@"%@ - %@", theCourse.time, theCourse.room];
    
    if(theCourse.isFavorite){
        cell.backgroundColor = [UIColor lightGrayColor];
    }else {
        cell.backgroundColor = [UIColor whiteColor];
    }
    
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    OxygenBlastCourse *theCourse = [self getCourseForIndexPath:[self.tableView indexPathForSelectedRow]];
    DetailsViewController *dvc = [segue destinationViewController];
    dvc.course = theCourse;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

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
