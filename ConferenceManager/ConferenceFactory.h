//
//  ConferenceFactory.h
//  ObjC
//
//  Copyright (c) 2016 Intertech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConferenceFactory : NSObject
@property(nonatomic, strong, readonly) NSDictionary *allCourses;

+(instancetype)sharedFactory;
-(void)runTest;

@end
