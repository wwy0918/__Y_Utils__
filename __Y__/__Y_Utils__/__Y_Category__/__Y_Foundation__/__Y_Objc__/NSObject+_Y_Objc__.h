//
//  NSObject+_Y_Objc__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (_Y_Objc__)

/**
 * 获取当前类的所有属性列表
 */
+ (NSArray *)y_propertyList;

/**
 *  返回当前类的所有成员变量数组
 *
 *  Tips：用于调试, 可以尝试查看所有不开源的类的ivar
 */
+ (NSArray *)y_ivarList;

/**
 *  返回当前类的所有方法
 */
+ (NSArray *)y_methodList;

/**
 *  返回当前类的所有协议
 */
+ (NSArray *)y_protocolList;

@end
