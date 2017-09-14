//
//  NSDate+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (__Y__)

/**
 * 获取日、月、年、小时、分钟、秒
 */
- (NSUInteger)y_day;
- (NSUInteger)y_month;
- (NSUInteger)y_year;
- (NSUInteger)y_hour;
- (NSUInteger)y_minute;
- (NSUInteger)y_second;
+ (NSUInteger)y_day:(NSDate *)date;
+ (NSUInteger)y_month:(NSDate *)date;
+ (NSUInteger)y_year:(NSDate *)date;
+ (NSUInteger)y_hour:(NSDate *)date;
+ (NSUInteger)y_minute:(NSDate *)date;
+ (NSUInteger)y_second:(NSDate *)date;

/**
 * 转换成本地时间
 */
+ (NSDate *)y_localeDate:(NSDate *)date;
- (NSDate *)y_toLocale;

/**
 * 获取一年中的总天数
 */
- (NSUInteger)y_daysInYear;
+ (NSUInteger)y_daysInYear:(NSDate *)date;

/**
 * 判断是否是润年
 * @return YES表示润年，NO表示平年
 */
- (BOOL)y_isLeapYear;
+ (BOOL)y_isLeapYear:(NSDate *)date;

/**
 * 获取该日期是该年的第几周
 */
- (NSUInteger)y_weekOfYear;
+ (NSUInteger)y_weekOfYear:(NSDate *)date;

/**
 * 获取格式化为YYYY-MM-dd格式的日期字符串
 */
- (NSString *)y_formatYMD;
+ (NSString *)y_formatYMD:(NSDate *)date;

/**
 * 返回当前月一共有几周(可能为4,5,6)
 */
- (NSUInteger)y_weeksOfMonth;
+ (NSUInteger)y_weeksOfMonth:(NSDate *)date;

/**
 * 获取该月的第一天的日期
 */
- (NSDate *)y_begindayOfMonth;
+ (NSDate *)y_begindayOfMonth:(NSDate *)date;

/**
 * 获取该月的最后一天的日期
 */
- (NSDate *)y_lastdayOfMonth;
+ (NSDate *)y_lastdayOfMonth:(NSDate *)date;

/**
 * 返回day天后的日期(若day为负数,则为|day|天前的日期)
 */
- (NSDate *)y_dateAfterDay:(NSUInteger)day;
+ (NSDate *)y_dateAfterDate:(NSDate *)date day:(NSInteger)day;

/**
 * 返回day天后的日期(若day为负数,则为|day|天前的日期)
 */
- (NSDate *)y_dateAfterMonth:(NSUInteger)month;
+ (NSDate *)y_dateAfterDate:(NSDate *)date month:(NSInteger)month;

/**
 * 返回numYears年后的日期
 */
- (NSDate *)y_offsetYears:(int)numYears;
+ (NSDate *)y_offsetYears:(int)numYears fromDate:(NSDate *)fromDate;

/**
 * 返回numMonths月后的日期
 */
- (NSDate *)y_offsetMonths:(int)numMonths;
+ (NSDate *)y_offsetMonths:(int)numMonths fromDate:(NSDate *)fromDate;

/**
 * 返回numDays天后的日期
 */
- (NSDate *)y_offsetDays:(int)numDays;
+ (NSDate *)y_offsetDays:(int)numDays fromDate:(NSDate *)fromDate;

/**
 * 返回numHours小时后的日期
 */
- (NSDate *)y_offsetHours:(int)hours;
+ (NSDate *)y_offsetHours:(int)numHours fromDate:(NSDate *)fromDate;

/**
 * 距离该日期前几天
 */
- (NSUInteger)y_daysAgo;
+ (NSUInteger)y_daysAgo:(NSDate *)date;

/**
 *  获取星期几
 *
 *  @return Return weekday number
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSInteger)y_weekday;
+ (NSInteger)y_weekday:(NSDate *)date;

/**
 *  获取星期几(名称)
 *
 *  @return Return weekday as a localized string
 *  [1 - Sunday]
 *  [2 - Monday]
 *  [3 - Tuerday]
 *  [4 - Wednesday]
 *  [5 - Thursday]
 *  [6 - Friday]
 *  [7 - Saturday]
 */
- (NSString *)y_dayFromWeekday;
+ (NSString *)y_dayFromWeekday:(NSDate *)date;

/**
 *  日期是否相等
 *
 *  @param anotherDate The another date to compare as NSDate
 *  @return Return YES if is same day, NO if not
 */
- (BOOL)y_isSameDay:(NSDate *)anotherDate;

/**
 *  是否是今天
 *
 *  @return Return if self is today
 */
- (BOOL)y_isToday;

/**
 *  Add days to self
 *
 *  @param days The number of days to add
 *  @return Return self by adding the gived days number
 */
- (NSDate *)y_dateByAddingDays:(NSUInteger)days;

/**
 *  Get the month as a localized string from the given month number
 *
 *  @param month The month to be converted in string
 *  [1 - January]
 *  [2 - February]
 *  [3 - March]
 *  [4 - April]
 *  [5 - May]
 *  [6 - June]
 *  [7 - July]
 *  [8 - August]
 *  [9 - September]
 *  [10 - October]
 *  [11 - November]
 *  [12 - December]
 *
 *  @return Return the given month as a localized string
 */
+ (NSString *)y_monthWithMonthNumber:(NSInteger)month;

/**
 * 根据日期返回字符串
 */
+ (NSString *)y_stringWithDate:(NSDate *)date format:(NSString *)format;
- (NSString *)y_stringWithFormat:(NSString *)format;
+ (NSDate *)y_dateWithString:(NSString *)string format:(NSString *)format;

/**
 * 获取指定月份的天数
 */
- (NSUInteger)y_daysInMonth:(NSUInteger)month;
+ (NSUInteger)y_daysInMonth:(NSDate *)date month:(NSUInteger)month;

/**
 * 获取当前月份的天数
 */
- (NSUInteger)y_daysInMonth;
+ (NSUInteger)y_daysInMonth:(NSDate *)date;

/**
 * 返回x分钟前/x小时前/昨天/x天前/x个月前/x年前
 */
- (NSString *)y_timeInfo;
+ (NSString *)y_timeInfoWithDate:(NSDate *)date;
+ (NSString *)y_timeInfoWithDateString:(NSString *)dateString;

/**
 * 分别获取yyyy-MM-dd/HH:mm:ss/yyyy-MM-dd HH:mm:ss格式的字符串
 */
- (NSString *)y_ymdFormat;
- (NSString *)y_hmsFormat;
- (NSString *)y_ymdHmsFormat;
+ (NSString *)y_ymdFormat;
+ (NSString *)y_hmsFormat;
+ (NSString *)y_ymdHmsFormat;
@end
