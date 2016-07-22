//
//  ConferenceFactory.m
//  ObjC
//
//  Copyright (c) 2016 Intertech. All rights reserved.
//

#import "ConferenceFactory.h"
#import "OxygenBlastCourse.h"

@implementation ConferenceFactory
@synthesize allCourses = _allCourses;

+(instancetype)sharedFactory
{
    static ConferenceFactory *sharedFactory;
    static dispatch_once_t token;
    dispatch_once(&token, ^{
        sharedFactory = [ConferenceFactory new];
    });
    return sharedFactory;
}

-(NSDictionary *)allCourses
{
    // This dictionary contains two entries: Day One and Day Two.  The value of each entry is
    // an array of courses that are delivered for that particular day.
    if( _allCourses == nil )
    {
        _allCourses = @{@"Day One": [self populateDayOne], @"Day Two": [self populateDayTwo]};
    }
    return _allCourses;
}

-(NSArray *)populateDayOne {
    
    OxygenBlastCourse *matisseOne = [[OxygenBlastCourse alloc] init];
    matisseOne.title = @"Test Driven Development";
    matisseOne.speaker = @"Jane Doe";
    matisseOne.dayNum =1;
    matisseOne.time = @"9:00 AM";
    matisseOne.room = @"Matisse";
    matisseOne.details = @"Explore the topics and tools related to Test Driven Development.";
    matisseOne.isFavorite = NO;
    
    OxygenBlastCourse *rothkoOne = [[OxygenBlastCourse alloc] init];
    rothkoOne.title = @"Java Tools";
    rothkoOne.speaker = @"Jim White";
    rothkoOne.dayNum = 1;
    rothkoOne.time = @"9:00 AM";
    rothkoOne.room = @"Rothko";
    rothkoOne.details = @"Discuss the latest set of tools used to help ease software development.";
    rothkoOne.isFavorite = NO;
    
    OxygenBlastCourse *picassoOne = [[OxygenBlastCourse alloc] init];
    picassoOne.title = @"ORM for .NET";
    picassoOne.speaker = @"Davin Mickelson";
    picassoOne.dayNum = 1;
    picassoOne.time = @"9:00 AM";
    picassoOne.room = @"Picasso";
    picassoOne.details = @"Learn about Object Relational Mapping for .NET.";
    picassoOne.isFavorite = NO;
    
    OxygenBlastCourse *vanGoghOne = [[OxygenBlastCourse alloc] init];
    vanGoghOne.title = @"iOS Profiling";
    vanGoghOne.speaker = @"Jason Shapiro";
    vanGoghOne.dayNum = 1;
    vanGoghOne.time = @"9:00 AM";
    vanGoghOne.room = @"Van Gogh";
    vanGoghOne.details = @"Explore how to profile your iOS apps.";
    vanGoghOne.isFavorite = NO;
    
    OxygenBlastCourse *matisseTwo = [[OxygenBlastCourse alloc] init];
    matisseTwo.title = @"Scrum Master";
    matisseTwo.speaker = @"Jane Doe";
    matisseTwo.dayNum = 1;
    matisseTwo.time = @"1:00 PM";
    matisseTwo.room = @"Matisse";
    matisseTwo.details = @"Learn the roles and responsibilities of a Scrum Master";
    matisseTwo.isFavorite = NO;
    
    OxygenBlastCourse *rothkoTwo = [[OxygenBlastCourse alloc] init];
    rothkoTwo.title = @"Design Patterns";
    rothkoTwo.speaker = @"Jim White";
    rothkoTwo.dayNum = 1;
    rothkoTwo.time = @"1:00 PM";
    rothkoTwo.room = @"Rothko";
    rothkoTwo.details = @"Apply best practices and sound architectures to software design.";
    rothkoTwo.isFavorite = NO;
    
    OxygenBlastCourse *picassoTwo = [[OxygenBlastCourse alloc] init];
    picassoTwo.title = @"MongoDB";
    picassoTwo.speaker = @"Davin Mickelson";
    picassoTwo.dayNum = 1;
    picassoTwo.time = @"1:00 PM";
    picassoTwo.room = @"Picasso";
    picassoTwo.details = @"Learn about \"NoSQL\" databases.";
    picassoTwo.isFavorite = NO;
    
    OxygenBlastCourse *vanGoghTwo = [[OxygenBlastCourse alloc] init];
    vanGoghTwo.title = @"Debugging with Xcode";
    vanGoghTwo.speaker = @"Jason Shapiro";
    vanGoghTwo.dayNum = 1;
    vanGoghTwo.time = @"1:00 PM";
    vanGoghTwo.room = @"Van Gogh";
    vanGoghTwo.details = @"Explore different patterns for debugging your iOS apps.";
    vanGoghTwo.isFavorite = NO;
    
    return @[matisseOne, rothkoOne, picassoOne, vanGoghOne, matisseTwo, rothkoTwo, picassoTwo, vanGoghTwo];
}

-(NSArray *)populateDayTwo {
    
    OxygenBlastCourse *matisseOne = [[OxygenBlastCourse alloc] init];
    matisseOne.title = @"Advanced C#";
    matisseOne.speaker = @"Jane Doe";
    matisseOne.dayNum = 2;
    matisseOne.time = @"9:00 AM";
    matisseOne.room = @"Matisse";
    matisseOne.details = @"Explore Advanced C# topics.";
    matisseOne.isFavorite = NO;
    
    OxygenBlastCourse *rothkoOne = [[OxygenBlastCourse alloc] init];
    rothkoOne.title = @"Intro to Groovy";
    rothkoOne.speaker = @"Jim White";
    rothkoOne.dayNum = 2;
    rothkoOne.time = @"9:00 AM";
    rothkoOne.room = @"Rothko";
    rothkoOne.details = @"Discuss the pros and cons of meta-progamming.";
    rothkoOne.isFavorite = NO;
    
    OxygenBlastCourse *picassoOne = [[OxygenBlastCourse alloc] init];
    picassoOne.title = @"HTML 5 Overview";
    picassoOne.speaker = @"Davin Mickelson";
    picassoOne.dayNum = 2;
    picassoOne.time = @"9:00 AM";
    picassoOne.room = @"Picasso";
    picassoOne.details = @"Learn about HTML5 - what works, and what doesn't.";
    picassoOne.isFavorite = NO;
    
    OxygenBlastCourse *vanGoghOne = [[OxygenBlastCourse alloc] init];
    vanGoghOne.title = @"iOS Mapkit";
    vanGoghOne.speaker = @"Jason Shapiro";
    vanGoghOne.dayNum = 2;
    vanGoghOne.time = @"9:00 AM";
    vanGoghOne.room = @"Van Gogh";
    vanGoghOne.details = @"Explore the changes in iOS's MapKit.";
    vanGoghOne.isFavorite = NO;
    
    OxygenBlastCourse *matisseTwo = [[OxygenBlastCourse alloc] init];
    matisseTwo.title = @"Windows Mobile";
    matisseTwo.speaker = @"Jane Doe";
    matisseTwo.dayNum = 2;
    matisseTwo.time = @"1:00 PM";
    matisseTwo.room = @"Matisse";
    matisseTwo.details = @"Learn the tools and techniques to author Windows mobile apps.";
    matisseTwo.isFavorite = NO;
    
    OxygenBlastCourse *rothkoTwo = [[OxygenBlastCourse alloc] init];
    rothkoTwo.title = @"Continuous Deployment";
    rothkoTwo.speaker = @"Jim White";
    rothkoTwo.dayNum = 2;
    rothkoTwo.time = @"1:00 PM";
    rothkoTwo.room = @"Rothko";
    rothkoTwo.details = @"Learn the advantages and risks of Continuous Deployment.";
    rothkoTwo.isFavorite = NO;
    
    OxygenBlastCourse *picassoTwo = [[OxygenBlastCourse alloc] init];
    picassoTwo.title = @"CSS3";
    picassoTwo.speaker = @"Davin Mickelson";
    picassoTwo.dayNum = 2;
    picassoTwo.time = @"1:00 PM";
    picassoTwo.room = @"Picasso";
    picassoTwo.details = @"Learn what's new in CSS3.";
    picassoTwo.isFavorite = NO;
    
    OxygenBlastCourse *vanGoghTwo = [[OxygenBlastCourse alloc] init];
    vanGoghTwo.title = @"The New iOS JSON APIs";
    vanGoghTwo.speaker = @"Jason Shapiro";
    vanGoghTwo.dayNum = 2;
    vanGoghTwo.time = @"1:00 PM";
    vanGoghTwo.room = @"Van Gogh";
    vanGoghTwo.details = @"Explore how to use JSON in iOS apps.";
    vanGoghTwo.isFavorite = NO;
    
    return @[matisseOne, rothkoOne, picassoOne, vanGoghOne, matisseTwo, rothkoTwo, picassoTwo, vanGoghTwo];
}

-(void)runTest{
    NSDictionary *testAgenda =[self allCourses];
    for (NSString *key in testAgenda){
        for(OxygenBlastCourse *course in testAgenda[key]){
            NSLog(@"Course : \n %@", course);
        }
    }
}

@end
