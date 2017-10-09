//
//  UIColor+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (__Y__)

/**
 *  由16进制颜色格式生成UIColor
 *
 *  @param hex 16进制颜色0x00FF00
 *
 *  @return UIColor
 */
+ (UIColor *)y_colorWithHex:(UInt32)hex;
/**
 *  由16进制颜色格式生成UIColor
 *
 *  @param hex 16进制颜色0x00FF00
 *  @param alpha 透明
 *
 *  @return Color
 */
+ (UIColor *)y_colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;

/**
 *  使用HEX命名方式的颜色字符串生成一个UIColor对象
 *
 *  @param hexString
 *      #RGB        例如#f0f，等同于#ffff00ff，RGBA(255, 0, 255, 1)
 *      #ARGB       例如#0f0f，等同于#00ff00ff，RGBA(255, 0, 255, 0)
 *      #RRGGBB     例如#ff00ff，等同于#ffff00ff，RGBA(255, 0, 255, 1)
 *      #AARRGGBB   例如#00ff00ff，等同于RGBA(255, 0, 255, 0)
 *
 * @return UIColor对象
 */
+ (UIColor *)y_colorWithHexString:(NSString *)hexString;

/**
 *  生成当前颜色的16进制字符串
 *
 *  @return 16进制字符串
 */
- (NSString *)y_hexString;

/**
 *  随机色
 */
+ (UIColor *)y_random;

/**
 *  生成渐变色
 *
 *  @param c1     头
 *  @param c2     尾
 *  @param height 范围
 *
 *  @return 渐变色
 */
+ (UIColor*)y_gradientFromColor:(UIColor*)c1 toColor:(UIColor*)c2 withHeight:(int)height;

/**
 *  翻转颜色
 */
- (UIColor *)y_invertedColor;

/**
 *  半透明色
 */
- (UIColor *)y_colorForTranslucency;

/**
 *  更改颜色亮度
 *  @param lighten 亮度从0到1
 */
- (UIColor *)y_lightenColor:(CGFloat)lighten;

/**
 *  更改颜色亮度
 *  @param darken 亮度从0到1
 */
- (UIColor *)y_darkenColor:(CGFloat)darken;

@end
