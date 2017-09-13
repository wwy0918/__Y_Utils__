//
//  NSDictionary+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (__Y__)

/**
 *  将指定字典转JSON
 */
+ (NSString *)y_JSONWithDictionary:(NSDictionary *)dictionary;

/**
 *  转JSON
 */
- (NSString *)y_toJSON;

@end
