//
//  BooksViewController.m
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/20/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import "BooksViewController.h"
#import "BookCollectionViewCell.h"

@interface BooksViewController ()

@end

@implementation BooksViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    /*
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    */
    
    self.bookService = [BookRecommendationsService new];
    self.collectionView.contentInset = UIEdgeInsetsMake(10.0, 10.0, 10.0, 10.0);
     
     
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.bookService numberOfBookCategories];
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.bookService numberOfBooksInCategory:section];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    BookCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"bookCell" forIndexPath:indexPath];
    
    // Configure the cell
    [cell.contentView.layer setBorderColor:[UIColor blackColor].CGColor];
    [cell.contentView.layer setBorderWidth:1.0];
    cell.coverLabel.backgroundColor = [UIColor colorWithRed:[self randomColorValurGenerator] green:[self randomColorValurGenerator] blue:[self randomColorValurGenerator] alpha:1.0];
    
    cell.titleLabel.text = [self.bookService bookForCategory:indexPath.section item:indexPath.item];
    
    
    return cell;
}

-(CGFloat)randomColorValurGenerator {
    return arc4random_uniform(256)/255.0;
}

-(UICollectionReusableView *) collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    UICollectionReusableView *view =[collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:@"categoryCell" forIndexPath:indexPath];
    ((UILabel *)[view viewWithTag:1]).text = [self.bookService bookCategoryName:indexPath.section];
    return view;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
