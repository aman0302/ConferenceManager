//
//  OxygenBlastCourse.m
//  ObjC
//
//  Created by Gupta, Aman on 7/18/16.
//  Copyright © 2016 eBay. All rights reserved.
//

#import "OxygenBlastCourse.h"

@implementation OxygenBlastCourse

-(NSString *)description{
    return [NSString stringWithFormat:@"Title : %@ \nSpeaker : %@ \nDayNum : %ld \nTime : %@ \nRoom : %@ \nDetails : %@ \nUserNotes : %@ \nIsFavorite : %@ ",self.title,self.speaker,(long)self.dayNum, self.time, self.room, self.details,self.userNotes, self.isFavorite ? @"Yes":@"No"];
}

@end
