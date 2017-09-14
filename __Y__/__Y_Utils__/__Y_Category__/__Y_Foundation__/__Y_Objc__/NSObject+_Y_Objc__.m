//
//  NSObject+_Y_Objc__.m
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <objc/runtime.h>
#import "NSObject+_Y_Objc__.h"

@implementation NSObject (_Y_Objc__)

+ (void)y_enumerateProperties:(y_propertiesEnumeration)enumeration
{
    
}

+ (NSArray *)y_propertyList
{
    unsigned int count = 0;
    // 获取属性的列表
    objc_property_t *propertys = class_copyPropertyList([self class], &count);
    NSMutableArray *propertyArray = [NSMutableArray array];
    
    for(int i=0;i<count;i++)
    {
        // 取出每一个属性
        objc_property_t property = propertys[i];
        // 获取每一个属性的变量名
        const char *cPropertyName = property_getName(property);
        // 转换成OC字符串
        NSString *proName = [[NSString alloc] initWithCString:cPropertyName encoding:NSUTF8StringEncoding];
        [propertyArray addObject:proName];
//        const char *cPropertyAttri = property_getAttributes(property);
//        NSString *proAttr = [[NSString alloc] initWithCString:cPropertyAttri encoding:NSUTF8StringEncoding];
//        NSLog(@"%@",proAttr);
    }
    // 遇到copy要手动释放
    free(propertys);
    
    return propertyArray.copy;
}

+ (NSArray *)y_ivarList
{
    // 获取当前类的所有 '成员变量'
    unsigned int count = 0;
    Ivar *ivars = class_copyIvarList([self class], &count);
    
    // 遍历 成员变量 数组, 获取成员变量的名
    NSMutableArray *ivarArray = [NSMutableArray array];
    for (unsigned int i = 0; i < count; i++) {
        Ivar ivar = ivars[i];
        // - C语言的字符串都是 ‘char *‘ 类型的
        const char *ivarName_C = ivar_getName(ivar);
        // - 将 C语言的字符串 转换成 OC字符串
        NSString *ivarName_OC = [NSString stringWithUTF8String:ivarName_C];
        // - 将本类 ‘成员变量名‘ 添加到数组
        [ivarArray addObject:ivarName_OC];
    }
    free(ivars);
    return ivarArray.copy;
}

+ (NSArray *)y_methodList
{
    // 获取当前类的方法数组
    unsigned int count = 0;
    Method *list = class_copyMethodList([self class], &count);
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (unsigned int i = 0; i < count; i++)
    {
        // 根据下标获取方法
        Method method = list[i];
        
        SEL methodName = method_getName(method);
        
        NSString *methodName_OC = NSStringFromSelector(methodName);
        
 //       IMP imp = method_getImplementation(method);
        const char *name_s =sel_getName(method_getName(method));
        int arguments = method_getNumberOfArguments(method);
        const char* encoding =method_getTypeEncoding(method);
        
        NSLog(@"方法名：%@,参数个数：%d,编码方式：%@",[NSString stringWithUTF8String:name_s],
              arguments,
              [NSString stringWithUTF8String:encoding]);
        
        [arrayM addObject:methodName_OC];
    }
    free(list);
    
    return arrayM.copy;
}

+ (NSArray *)y_protocolList
{
    unsigned int count = 0;
    Protocol * __unsafe_unretained *protocolLists = class_copyProtocolList([self class], &count);
    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (unsigned int i = 0; i < count; i++) {
        // 获取 协议名
        Protocol *protocol = protocolLists[i];
        const char *protocolName_C = protocol_getName(protocol);
        NSString *protocolName_OC = [NSString stringWithUTF8String:protocolName_C];
        // 将 协议名 添加到数组
        [arrayM addObject:protocolName_OC];
    }
    free(protocolLists);
    
    return arrayM.copy;
}



@end
