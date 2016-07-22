//
//  OxygenBlastCourse.h
//  ObjC
//
//  Created by Gupta, Aman on 7/18/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OxygenBlastCourse : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *speaker;
@property (assign, nonatomic) NSInteger *dayNum;
@property (strong, nonatomic) NSString *time;
@property (strong, nonatomic) NSString *room;
@property (strong, nonatomic) NSString *details;
@property (strong, nonatomic) NSString *userNotes;
@property (assign, nonatomic) BOOL *isFavorite;


@end
