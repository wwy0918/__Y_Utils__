//
//  NSDateFormatter+__Y__.m
//  __Y__
//
//  Created by wwyun on 17/9/14.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "NSDateFormatter+__Y__.h"

@implementation NSDateFormatter (__Y__)

+ (instancetype)y_YMD
{
    NSDateFormatter *formatter = [[self alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    return formatter;
}

@end
