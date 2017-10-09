//
//  NSString+__Y_Common__.h
//  YunCode
//
//  Created by wwyun on 17/9/12.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface NSString (__Y_Common__)

/**
 * 用 数组|字典 初始化一个jSON String
 */
+ (instancetype)y_JSONStringWithObjc:(id)arrayOrDictionary;

/**
 * 计算文字高度
 * @param fontSize 字体
 * @param width 最大宽度
 */
- (CGFloat)y_heightWithFontSize:(CGFloat)fontSize width:(CGFloat)width;

/**
 * 计算文字宽度
 * @param fontSize 字体
 * @param height 最大高度
 */
- (CGFloat)y_widthWithFontSize:(CGFloat)fontSize height:(CGFloat)height;

/**
 * 去掉字符串前后空格
 */
- (NSString *)y_stringByTrim;

/**
 * @"", @" ", @"   ", @"\n" and so or
 */
- (BOOL)y_isBlank;

@end
