//
//  NSString+__Y_Regular.m
//  YunCode
//
//  Created by wwyun on 17/9/12.
//  Copyright © 2017年 wwy. All rights reserved.
//
/**
 *　　　　　　　   ┏┓                     ┏┓+ +
 *　　　　　　　┏┛┻━━━━━━━┛┻┓ + +
 *　　　　　　　┃　　　　　　             ┃
 *　　　　　　　┃　　　━　　　          ┃ ++ + + +
 *　　　　　　 █████━█████     ┃+
 *　　　　　　　┃                               ┃ +
 *　　　　　　　┃　　　┻　　　          ┃
 *　　　　　　　┃　　　　　　             ┃ + +
 *　　　　　　　┗━━┓　　　        ┏━┛
 *                                 ┃　　         ┃
 *　　　　　　　　　   ┃　　         ┃ + + + +
 *　　　　　　　　　   ┃　　         ┃　Code is far away from     bug with the animal protecting
 *　　　　　　　　　   ┃　　         ┃ + 　　　　         神兽保佑,代码无bug
 *　　　　　　　　　   ┃　　         ┃
 *　　　　　　　　　   ┃　　         ┃　　+
 *　　　　　　　　　   ┃　 　         ┗━━━┓ + +
 *　　　　　　　　　   ┃ 　　　　　           ┣┓
 *　　　　　　　　　   ┃ 　　　　　           ┏┛
 *　　　　　　　　　   ┗┓┓┏━━━┳┓┏┛ + + + +
 *　　　　　　　　　      ┃┫┫　      ┃┫┫
 *　　　　　　　　　      ┗┻┛　      ┗┻┛+ + + +
 */

#import "NSString+__Y_Regular.h"

@implementation NSString (__Y_Regular)

- (BOOL)y_isPhoneForSimple
{
    NSString *const MOBILE = @"^1(3|4|5|7|8)\\d{9}$";
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    return [predicate evaluateWithObject:self];
}

- (BOOL)y_isPhone
{
    if (self.length != 11)
    {
        return NO;
    }
    /**
     * 手机号码:
     * 13[0-9], 14[5,7], 15[0, 1, 2, 3, 5, 6, 7, 8, 9], 17[0, 1, 6, 7, 8], 18[0-9]
     * 移动号段: 134,135,136,137,138,139,147,150,151,152,157,158,159,170,178,182,183,184,187,188
     * 联通号段: 130,131,132,145,155,156,170,171,172,175,176,185,186
     * 电信号段: 133,149,153,170,173,177,180,181,189
     */
    NSString *MOBILE = @"^1(3[0-9]|4[57]|5[0-35-9]|7[0135678]|8[0-9])\\d{8}$";
    /**
     * 中国移动：China Mobile
     * 134,135,136,137,138,139,147,150,151,152,157,158,159,170,178,182,183,184,187,188
     */
    NSString *CM = @"(^1(3[4-9]|4[7]|5[0-27-9]|7[08]|8[2-478])\\d{8}$";
    /**
     * 中国联通：China Unicom
     * 130,131,132,145,155,156,170,171,172,175,176,185,186
     */
    NSString *CU = @"(^1(3[0-2]|4[5]|5[56]|701256||8[56])\\d{8}$";
    /**
     * 中国电信：China Telecom
     * 133,149,153,170,173,177,180,181,189
     */
    NSString *CT = @"^1(3[3]|4[9]|53|7[037]|8[019])\\d{8}$";
    
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:self] == YES)
        || ([regextestcm evaluateWithObject:self] == YES)
        || ([regextestct evaluateWithObject:self] == YES)
        || ([regextestcu evaluateWithObject:self] == YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

- (BOOL)y_isChinaMobile
{
    /*!
     * 中国移动：China Mobile
     * 134,135,136,137,138,139,150,151,152,157,158,159,182,183,184,187,188,147,178,1705
     */
    NSString *CM = @"(^1(3[4-9]|4[7]|5[0-27-9]|7[8]|8[2-478])\\d{8}$)|(^1705\\d{7}$)";
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    return [regextestcm evaluateWithObject:self];
}

- (BOOL)y_isChinaUnicom
{
    /*!
     * 中国联通：China Unicom
     * 130,131,132,155,156,185,186,145,176,1709
     */
    NSString *CU = @"(^1(3[0-2]|4[5]|5[56]|7[6]|8[56])\\d{8}$)|(^1709\\d{7}$)";
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    return [regextestcm evaluateWithObject:self];
}

- (BOOL)y_isChinaTelecom;
{
    /*!
     * 中国电信：China Telecom
     * 133,153,180,181,189,177,1700
     */
    NSString *CT = @"^1((33|53|8[019])[0-9]|349)\\d{7}$";
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    return [regextestcm evaluateWithObject:self];
}

- (BOOL)y_isRealName
{
    NSString *nicknameRegex = @"^[\u4e00-\u9fa5]{2,8}$";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",nicknameRegex];
    return [predicate evaluateWithObject:self];
}

- (BOOL)y_isEmail
{
    NSString *pattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    NSArray *results = [regex matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    return results.count > 0;
}

- (BOOL)y_isDigit
{
    NSString *pattern = @"^[0-9]*$";
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    NSArray *results = [regex matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    return results.count > 0;
}

- (BOOL)y_isAlphabet
{
    NSString *pattern = @"^[A-Za-z]+$";
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    NSArray *results = [regex matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    return results.count > 0;
}

- (BOOL)y_isLetterOrNumber
{
    NSString *letterOrNumberRegex = @"[A-Z0-9a-z]+";
    NSPredicate *letterOrNumberTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", letterOrNumberRegex];
    return [letterOrNumberTest evaluateWithObject:self];
}

- (BOOL)y_isIdCard
{
    NSString *idCardNumberStr = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSInteger length = 0;
    if (!idCardNumberStr)
    {
        return NO;
    }
    else
    {
        length = idCardNumberStr.length;
        if (length != 15 && length !=18)
        {
            return NO;
        }
    }
    /*! 省份代码 */
    NSArray *areasArray =@[@"11", @"12", @"13", @"14", @"15", @"21", @"22", @"23", @"31", @"32", @"33", @"34", @"35", @"36", @"37", @"41", @"42", @"43", @"44", @"45", @"46", @"50", @"51", @"52", @"53", @"54", @"61", @"62", @"63", @"64", @"65", @"71", @"81", @"82", @"91"];
    
    NSString *valueStart2 = [idCardNumberStr substringToIndex:2];
    BOOL areaFlag = NO;
    for (NSString *areaCode in areasArray)
    {
        if ([areaCode isEqualToString:valueStart2])
        {
            areaFlag =YES;
            break;
        }
    }
    if (!areaFlag)
    {
        return NO;
    }
    
    NSRegularExpression *regularExpression;
    NSUInteger numberofMatch;
    
    NSInteger year = 0;
    switch (length)
    {
        case 15:
            year = [idCardNumberStr substringWithRange:NSMakeRange(6,2)].intValue +1900;
            
            if (year % 4 ==0 || (year % 100 ==0 && year % 4 ==0))
            {
                /*! 测试出生日期的合法性 */
                regularExpression = [[NSRegularExpression alloc] initWithPattern:@"^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$"
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:nil];
            }
            else
            {
                /*! 测试出生日期的合法性 */
                regularExpression = [[NSRegularExpression alloc] initWithPattern:@"^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$"
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:nil];
            }
            numberofMatch = [regularExpression numberOfMatchesInString:idCardNumberStr
                                                               options:NSMatchingReportProgress
                                                                 range:NSMakeRange(0, idCardNumberStr.length)];
            
            if(numberofMatch > 0)
            {
                return YES;
            }
            else
            {
                return NO;
            }
            break;
        case 18:
            
            year = [idCardNumberStr substringWithRange:NSMakeRange(6,4)].intValue;
            if (year % 4 ==0 || (year % 100 ==0 && year % 4 ==0))
            {
                /*! 测试出生日期的合法性 */
                regularExpression = [[NSRegularExpression alloc] initWithPattern:@"^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$"
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:nil];
            }
            else
            {
                /*! 测试出生日期的合法性 */
                regularExpression = [[NSRegularExpression alloc] initWithPattern:@"^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$"
                                                                         options:NSRegularExpressionCaseInsensitive
                                                                           error:nil];
            }
            numberofMatch = [regularExpression numberOfMatchesInString:idCardNumberStr
                                                               options:NSMatchingReportProgress
                                                                 range:NSMakeRange(0, idCardNumberStr.length)];
            
            if(numberofMatch > 0)
            {
                NSInteger S = ([idCardNumberStr substringWithRange:NSMakeRange(0,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(10,1)].intValue) *7 + ([idCardNumberStr substringWithRange:NSMakeRange(1,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(11,1)].intValue) *9 + ([idCardNumberStr substringWithRange:NSMakeRange(2,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(12,1)].intValue) *10 + ([idCardNumberStr substringWithRange:NSMakeRange(3,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(13,1)].intValue) *5 + ([idCardNumberStr substringWithRange:NSMakeRange(4,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(14,1)].intValue) *8 + ([idCardNumberStr substringWithRange:NSMakeRange(5,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(15,1)].intValue) *4 + ([idCardNumberStr substringWithRange:NSMakeRange(6,1)].intValue + [idCardNumberStr substringWithRange:NSMakeRange(16,1)].intValue) *2 + [idCardNumberStr substringWithRange:NSMakeRange(7,1)].intValue *1 + [idCardNumberStr substringWithRange:NSMakeRange(8,1)].intValue *6 + [idCardNumberStr substringWithRange:NSMakeRange(9,1)].intValue *3;
                NSInteger Y = S % 11;
                NSString *M = @"F";
                NSString *JYM = @"10X98765432";
                /*! 判断校验位 */
                M = [JYM substringWithRange:NSMakeRange(Y,1)];
                if ([M isEqualToString:[idCardNumberStr substringWithRange:NSMakeRange(17,1)]])
                {
                    /*! 检测ID的校验位 */
                    return YES;
                }
                else
                {
                    return NO;
                }
                
            }
            else
            {
                return NO;
            }
            break;
        default:
            return NO;
            break;
    }
}

- (BOOL)y_isChinese
{
    NSString *pattern = @"[\u4e00-\u9fa5]+";
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    NSArray *results = [regex matchesInString:self options:0 range:NSMakeRange(0, self.length)];
    return results.count > 0;
}

- (BOOL)y_isValidAlphaNumberPassword
{
    NSString *regex = @"^(?!\\d+$|[a-zA-Z]+$)\\w{6,12}$";
    NSPredicate *identityCardPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    return [identityCardPredicate evaluateWithObject:self];
}

- (BOOL)y_isValidVerifyCode
{
    NSString *pattern = @"^[0-9]{4}";
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return [predicate evaluateWithObject:self];
}

- (BOOL)y_isBankCard
{
    NSString* const BANKCARD = @"^(\\d{16}|\\d{19})$";
    NSPredicate* predicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", BANKCARD];
    return [predicate evaluateWithObject:self];
}

- (void)y_bankWithComplete:(void (^)(NSString *, BOOL))complete
{
    NSString *bankName = nil;
    BOOL isValid = YES;
    if(self.length<16 || self.length>19){
        isValid = NO;
        bankName = @"卡号不合法";
    }
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"_Y_Bank" ofType:@"plist"];
    NSDictionary* resultDic = [NSDictionary dictionaryWithContentsOfFile:plistPath];
    NSArray *bankBin = resultDic.allKeys;
    
    //6位Bin号
    NSString* cardbin_6 = [self substringWithRange:NSMakeRange(0, 6)];
    //8位Bin号
    NSString* cardbin_8 = [self substringWithRange:NSMakeRange(0, 8)];
    
    if ([bankBin containsObject:cardbin_6]) {
        bankName = [resultDic objectForKey:cardbin_6];
    }else if ([bankBin containsObject:cardbin_8]){
        bankName = [resultDic objectForKey:cardbin_8];
    }else{
        bankName = @"其他银行";
    }
    
    if (complete) {
        complete(bankName, isValid);
    }
}

- (BOOL)y_isCarNumber
{
    //车牌号:湘K-DE829 香港车牌号码:粤Z-J499港
    NSString *carRegex = @"^[\u4e00-\u9fff]{1}[a-zA-Z]{1}[-][a-zA-Z_0-9]{4}[a-zA-Z_0-9_\u4e00-\u9fff]$";//其中\u4e00-\u9fa5表示unicode编码中汉字已编码部分，\u9fa5-\u9fff是保留部分，将来可能会添加
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    return [pre evaluateWithObject:self];
}

- (BOOL)y_isValidateCarType
{
    NSString *CarTypeRegex = @"^[\u4E00-\u9FFF]+$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",CarTypeRegex];
    return [carTest evaluateWithObject:self];
}

- (BOOL)y_isIPAddress
{
    NSString *regex = [NSString stringWithFormat:@"^(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})\\.(\\d{1,3})$"];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL rc = [pre evaluateWithObject:self];
    
    if (rc) {
        NSArray *componds = [self componentsSeparatedByString:@","];
        BOOL v = YES;
        for (NSString *s in componds) {
            if (s.integerValue > 255) {
                v = NO;
                break;
            }
        }
        return v;
    }
    return NO;
}

- (BOOL)y_isMacAddress
{
    NSString * macAddRegex = @"([A-Fa-f\\d]{2}:){5}[A-Fa-f\\d]{2}";
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",macAddRegex];
    return [pre evaluateWithObject:self];
}

- (BOOL)y_isValidUrl
{
    NSString *regex = @"^((http)|(https))+:[^\\s]+\\.[^\\s]*$";
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

- (BOOL)y_isValidPostalcode
{
    NSString *postalRegex = @"^[0-8]\\d{5}(?!\\d)$";
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",postalRegex];
    return [pre evaluateWithObject:self];
}

- (BOOL)y_isValidTaxNo
{
    NSString *taxNoRegex = @"[0-9]\\d{13}([0-9]|X)$";
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",taxNoRegex];
    return [pre evaluateWithObject:self];
}

- (BOOL)y_isPasswordQualified
{
    //    NSString *pattern = @"^[a-zA-Z]\\w.{5,17}$";
    //    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    //    NSArray *results = [regex matchesInString:passwordStr options:0 range:NSMakeRange(0, passwordStr.length)];
    //    return results.count > 0;
    
    NSString *passWordRegex = @"^[a-zA-Z]\\w.{5,17}$";
    NSPredicate *passWordPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",passWordRegex];
    return [passWordPredicate evaluateWithObject:self];
    
    //    BOOL result = false;
    //    if ([passwordStr length] >= 6 && ([passwordStr length] <= 16))
    //    {
    //        /*! 判断长度大于6位后，再接着判断是否同时包含数字和字符 */
    //        NSString * regex = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$";
    //        NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
    //        result = [pred evaluateWithObject:passwordStr];
    //    }
    //    return result;
}

- (BOOL)y_isValidWithMinLenth:(NSInteger)minLenth
                   maxLenth:(NSInteger)maxLenth
             containChinese:(BOOL)containChinese
        firstCannotBeDigtal:(BOOL)firstCannotBeDigtal;
{
    //  [\u4e00-\u9fa5A-Za-z0-9_]{4,20}
    NSString *hanzi = containChinese ? @"\u4e00-\u9fa5" : @"";
    NSString *first = firstCannotBeDigtal ? @"^[a-zA-Z_]" : @"";
    
    NSString *regex = [NSString stringWithFormat:@"%@[%@A-Za-z0-9_]{%d,%d}", first, hanzi, (int)(minLenth-1), (int)(maxLenth-1)];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

- (BOOL)y_isValidWithMinLenth:(NSInteger)minLenth
                   maxLenth:(NSInteger)maxLenth
             containChinese:(BOOL)containChinese
              containDigtal:(BOOL)containDigtal
              containLetter:(BOOL)containLetter
      containOtherCharacter:(NSString *)containOtherCharacter
        firstCannotBeDigtal:(BOOL)firstCannotBeDigtal;
{
    NSString *hanzi = containChinese ? @"\u4e00-\u9fa5" : @"";
    NSString *first = firstCannotBeDigtal ? @"^[a-zA-Z_]" : @"";
    NSString *lengthRegex = [NSString stringWithFormat:@"(?=^.{%@,%@}$)", @(minLenth), @(maxLenth)];
    NSString *digtalRegex = containDigtal ? @"(?=(.*\\d.*){1})" : @"";
    NSString *letterRegex = containLetter ? @"(?=(.*[a-zA-Z].*){1})" : @"";
    NSString *characterRegex = [NSString stringWithFormat:@"(?:%@[%@A-Za-z0-9%@]+)", first, hanzi, containOtherCharacter ? containOtherCharacter : @""];
    NSString *regex = [NSString stringWithFormat:@"%@%@%@%@", lengthRegex, digtalRegex, letterRegex, characterRegex];
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

+ (BOOL)y_isNormalText:(NSString *)normalStr WithHighLightText:(NSString *)HighLightStr
{
    NSString *pattern = [NSString stringWithFormat:@"%@",HighLightStr];
    NSRegularExpression *regex = [[NSRegularExpression alloc] initWithPattern:pattern options:0 error:nil];
    NSArray *results = [regex matchesInString:normalStr options:0 range:NSMakeRange(0, normalStr.length)];
    for (NSTextCheckingResult *resltText in results) {
        NSLog(@"----------------%zd",resltText.range.length);
    }
    return results.count > 0;
}

@end
