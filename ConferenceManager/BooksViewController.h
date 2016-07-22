//
//  BooksViewController.h
//  ConferenceManager
//
//  Created by Gupta, Aman on 7/20/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BookRecommendationsService.h"

@interface BooksViewController : UICollectionViewController
@property (strong, nonatomic) BookRecommendationsService *bookService;

@end
