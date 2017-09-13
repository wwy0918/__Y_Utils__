//
//  NSArray+__Y__.m
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "NSArray+__Y__.h"

@implementation NSArray (__Y__)

+ (NSArray *)y_reversedArrayWithArray:(NSArray*)array
{
    // 从一个阵列容量初始化阵列
    NSMutableArray *arrayTemp = [NSMutableArray arrayWithCapacity:[array count]];
    // 获取NSArray的逆序枚举器
    NSEnumerator *enumerator = [array reverseObjectEnumerator];
    
    for(id element in enumerator) [arrayTemp addObject:element];
    
    return arrayTemp;
}

+ (NSString *)y_JSONStringWithArray:(NSArray*)array
{
    NSString *json = nil;
    NSError *error = nil;
    // 生成一个Foundation对象JSON数据
    NSData *data = [NSJSONSerialization dataWithJSONObject:array
                                                   options:0
                                                     error:&error];
    if(!error)
    {
        json = [[NSString alloc] initWithData:data
                                     encoding:NSUTF8StringEncoding];
        return json;
    }
    else
        // 返回主用户显示消息的错误
        return error.localizedDescription;
}

- (NSArray *)y_reversedArray
{
    return [NSArray y_reversedArrayWithArray:self];
}

- (NSString *)y_toJSONString
{
    return [NSArray y_JSONStringWithArray:self];
}



@end

