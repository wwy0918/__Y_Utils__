//
//  NSDictionary+__Y__.m
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "NSDictionary+__Y__.h"

@implementation NSDictionary (__Y__)

+ (NSString *)y_JSONWithDictionary:(NSDictionary *)dictionary
{
    NSData *JSONData = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:nil];
    return [[NSString alloc] initWithData:JSONData encoding:NSUTF8StringEncoding];
}

- (NSString *)y_toJSON
{
    return [NSDictionary y_JSONWithDictionary:self];
}
@end
