//
//  NSDateFormatter+__Y__.h
//  __Y__
//
//  Created by wwyun on 17/9/14.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDateFormatter (__Y__)

/**
 * yyyy-MM-dd HH:mm:ss 初始化
 */
+ (instancetype)y_formatterDefault;

/**
 * yyyy-MM-dd 初始化
 */
+ (instancetype)y_formatterWithYMD;

@end
