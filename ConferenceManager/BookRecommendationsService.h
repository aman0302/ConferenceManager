//
//  BookRecommendationsService.h
//  CollectionViewDemo
//
//  Copyright © 2016 Intertech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BookRecommendationsService : NSObject

-(NSInteger)numberOfBookCategories;
-(NSInteger)numberOfBooksInCategory:(NSInteger)category;
-(NSString *)bookCategoryName:(NSInteger)category;
-(NSString *)bookForCategory:(NSInteger)category item:(NSInteger)item;
-(NSURL *)urlForBookCategory:(NSInteger)category item:(NSInteger)item;
-(NSURL *)imageUrlForBookCategory:(NSInteger)category item:(NSInteger)item;
@end
