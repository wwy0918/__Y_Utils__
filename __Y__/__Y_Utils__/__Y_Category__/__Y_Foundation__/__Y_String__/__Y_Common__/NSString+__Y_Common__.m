//
//  NSString+__Y_Common__.m
//  YunCode
//
//  Created by wwyun on 17/9/12.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "NSString+__Y_Common__.h"

@implementation NSString (__Y_Common__)

+ (instancetype)y_JSONStringWithObjc:(id)arrayOrDictionary
{
    NSData *JSONData = [NSJSONSerialization dataWithJSONObject:arrayOrDictionary options:NSJSONWritingPrettyPrinted error:nil];
    return [[NSString alloc] initWithData:JSONData encoding:NSUTF8StringEncoding];
}

- (CGFloat)y_heightWithFontSize:(CGFloat)fontSize width:(CGFloat)width
{
    return [self boundingRectWithSize:CGSizeMake(width, 0)
                              options:NSStringDrawingTruncatesLastVisibleLine |NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                           attributes:@{ NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} context:nil].size.height;
}

- (CGFloat)y_widthWithFontSize:(CGFloat)fontSize height:(CGFloat)height
{
    return  [self boundingRectWithSize:CGSizeMake(0, height)
                               options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                            attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} context:nil].size.width;
}


- (NSString *)y_stringByTrim
{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

- (BOOL)y_isBlank
{
    NSCharacterSet *blank = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *new = [self stringByTrimmingCharactersInSet:blank];
    return !new.length;
}

@end
