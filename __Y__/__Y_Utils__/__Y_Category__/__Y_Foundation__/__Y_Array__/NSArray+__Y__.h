//
//  NSArray+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (__Y__)

/**
 *  将指定的数组创建反向数组
 */
+ (NSArray *)y_reversedArrayWithArray:(NSArray*)array;

/**
 *  将指定的数组转换成JSON String
 */
+ (NSString *)y_JSONStringWithArray:(NSArray*)array;


/**
 *  创建反向数组
 */
- (NSArray *)y_reversedArray;

/**
 *  转换成JSON String
 */
- (NSString *)y_toJSONString;

@end
