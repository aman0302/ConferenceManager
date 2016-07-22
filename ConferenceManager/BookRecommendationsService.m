//
//  BookRecommendationsService.m
//  CollectionViewDemo
//
//  Copyright © 2016 Intertech. All rights reserved.
//

#import "BookRecommendationsService.h"

@interface BookRecommendationsService ()
@property(nonatomic, strong) NSDictionary<NSString*, NSArray*> *books;
@property(nonatomic, strong) NSArray *categories;
@end

static NSString *const BookCategoryAgile = @"Agile";
static NSString *const BookCategoryIOS = @"iOS";
static NSString *const BookCategoryJava = @"Java";
static NSString *const BookCategoryDotNet = @".NET";

typedef NS_ENUM(NSUInteger, BookDetailType)
{
    BookDetailTitle,
    BookDetailURL,
    BookDetailImageURL
};

@implementation BookRecommendationsService

-(NSDictionary *)books
{
    if( !_books )
    {
        _books = @{
            BookCategoryAgile : @[@[@"The Art of Agile Development", @"https://books.google.com/books?id=g_ji7cRb--UC", @"https://books.google.com/books/content?id=2q6bAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"User Stories Applied", @"https://books.google.com/books?id=SvIwuX4SVigC&dq", @"https://books.google.com/books/content?id=SvIwuX4SVigC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Clean Code", @"https://books.google.com/books?id=dwSfGQAACAAJ", @"https://books.google.com/books/content?id=dwSfGQAACAAJ&printsec=frontcover&img=1&zoom=5&source=gbs_api"]],
            BookCategoryIOS : @[@[@"iOS Programming Fundamentals with Swift", @"https://books.google.com/books?id=opwzBwAAQBAJ", @"https://books.google.com/books/content?id=fZwzBwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_ap"], @[@"iOS 9 Swift Programming Cookbook", @"https://books.google.com/books?id=e5cpCwAAQBAJ", @"https://books.google.com/books/content?id=e5cpCwAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Programming in Objective-C", @"https://books.google.com/books?id=KSmwLl8fRp0C", @"https://books.google.com/books/content?id=KSmwLl8fRp0C&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Effective Objective-C 2.0", @"https://books.google.com/books?id=MVNsAQAAQBAJ", @"https://books.google.com/books/content?id=MVNsAQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Objective-C Pocket Reference", @"https://books.google.com/books?id=aw4dSJechIMC", @"https://books.google.com/books/content?id=aw4dSJechIMC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"]],
            BookCategoryJava : @[@[@"Head First Java", @"https://books.google.com/books?id=KXQrAQAAQBAJ", @"https://books.google.com/books/content?id=KXQrAQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Effective Java", @"https://books.google.com/books?id=ka2VUBqHiWkC", @"https://books.google.com/books/content?id=ka2VUBqHiWkC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Head First Design Patterns", @"https://books.google.com/books?id=NXIrAQAAQBAJ", @"https://books.google.com/books/content?id=NXIrAQAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Java Concurrency in Practice", @"https://books.google.com/books?id=EK43StEVfJIC", @"https://books.google.com/books/content?id=EK43StEVfJIC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Java Generics and Collections", @"https://books.google.com/books?id=VUSbAgAAQBAJ", @"https://books.google.com/books/content?id=VUSbAgAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"]],
            BookCategoryDotNet : @[@[@"Pro C# 5.0 and the .NET Framework", @"https://books.google.com/books?id=I9Zj0ZsDSlsC", @"https://books.google.com/books/content?id=I9Zj0ZsDSlsC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"Head First C#", @"https://books.google.com/books?id=mcWDAAAAQBAJ", @"https://books.google.com/books/content?id=mcWDAAAAQBAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"C# Unleashed", @"https://books.google.com/books?id=TDEsRmRMPNkC", @"https://books.google.com/books/content?id=TDEsRmRMPNkC&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"], @[@"C# in Depth", @"https://books.google.com/books?id=PfyHkQEACAAJ", @"https://books.google.com/books/content?id=PfyHkQEACAAJ&printsec=frontcover&img=1&zoom=5&edge=curl&source=gbs_api"]]
        };
    }
    return _books;
}

-(NSArray<NSString *> *)categories
{
    if( !_categories )
    {
        _categories = @[BookCategoryAgile, BookCategoryIOS, BookCategoryJava, BookCategoryDotNet];
    }
    return _categories;
}

-(NSInteger)numberOfBookCategories
{
    return [self.categories count];
}

-(NSInteger)numberOfBooksInCategory:(NSInteger)category
{
    return [self.books[self.categories[category]] count];
}

-(NSString *)bookCategoryName:(NSInteger)category
{
    return self.categories[category];
}

-(NSString *)bookForCategory:(NSInteger)category item:(NSInteger)item
{
    return self.books[self.categories[category]][item][BookDetailTitle];
}

-(NSURL *)urlForBookCategory:(NSInteger)category item:(NSInteger)item
{
    NSString *urlStr = self.books[self.categories[category]][item][BookDetailURL];
    return [NSURL URLWithString:urlStr];
}
-(NSURL *)imageUrlForBookCategory:(NSInteger)category item:(NSInteger)item
{
    NSString *urlStr = self.books[self.categories[category]][item][BookDetailImageURL];
    return [NSURL URLWithString:urlStr];
}

@end
