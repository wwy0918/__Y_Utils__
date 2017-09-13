//
//  __Y_Macro__.h
//  yun
//
//  Created by yun on 17/9/12.
//  Copyright © 2017年 yun. All rights reserved.
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
/**
 * 宏与const 的使用:
   很多小伙伴在定义一个常量字符串，都会定义成一个宏，最典型的例子就是服务器的地址。在此所有用宏定义常量字符的小伙伴以后就用const来定义吧！为什么呢 ？我们看看：
  
   宏的用法： 一般字符串抽成宏，代码抽成宏使用。
   const用法：一般常用的字符串定义成const（对于常量字符串苹果推荐我们使用const）。
 
   宏与const区别：
   1. 编译时刻不同，宏属于预编译 ，const属于编译时刻
   2. 宏能定义代码，const不能，多个宏对于编译会相对时间较长，影响开发效率，调试过慢，const只会编译一次，缩短编译时间。
   3. 宏不会检查错误，const会检查错误
   通过以上对比，我们以后在开发中如果定义一个常量字符串就用const，定义代码就用宏。
 */

#ifndef __Y_Macro___h
#define __Y_Macro___h

#ifdef __OBJC__
#import <UIKit/UIKit.h>
#import <objc/runtime.h>
#endif


#pragma mark ----------------------------------------------   打印日志  ------------------------------------------------------
#ifdef DEBUG
#define __log( s, ... )  NSLog( @"\n < %@: \n %s -- (第%d行) \n > \n %@", [[NSString stringWithUTF8String:__FILE__] lastPathComponent], __func__,__LINE__, [NSString stringWithFormat:(s), ##__VA_ARGS__] )
#else
#define __log( s, ... )
#endif



#pragma mark ----------------------------------------------   弱 & 强引用  ------------------------------------------------------
#define __weakSelf(type)  __weak typeof(type) weak##type = type;
#define __strongSelf(type)  __strong typeof(type) type = weak##type;




#pragma mark ----------------------------------------------   系统  ------------------------------------------------------
// 当前语言
#define __current_language__  ([[NSLocale preferredLanguages] objectAtIndex:0])

// 应用程序的名字
#define __AppDisplayName__  [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]

// 应用程序的版本
#define __app_shortVersion__  [[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"] floatValue]
#define __app_Version__  [[[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"] floatValue]

// 操作系统版本号
#define __ios_version__  ([[[UIDevice currentDevice] systemVersion] floatValue])


// 判断设备室真机还是模拟器
#if TARGET_OS_IPHONE
/** iPhone Device */
#endif

#if TARGET_IPHONE_SIMULATOR
/** iPhone Simulator */
#endif


// 是否是iPhone
#define __is_iPhone__  (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
// 是否是iPad
#define __is_iPad__  (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)


/// 使用iOS7 API时要加`ifdef IOS7_SDK_ALLOWED`的判断
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 70000
#define __ios7_sdk_allowed__ YES
#endif

/// 使用iOS8 API时要加`ifdef IOS8_SDK_ALLOWED`的判断
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 80000
#define __ios8_sdk_allowed__ YES
#endif

/// 使用iOS9 API时要加`ifdef IOS9_SDK_ALLOWED`的判断
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 90000
#define __ios9_sdk_allowed__ YES
#endif

/// 使用iOS10 API时要加`ifdef IOS10_SDK_ALLOWED`的判断
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 100000
#define __ios10_sdk_allowed__ YES
#endif

/// 使用iOS11 API时要加`ifdef IOS11_SDK_ALLOWED`的判断
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 110000
#define __ios11_sdk_allowed__ YES
#endif

#pragma mark ----------------------------------------------   屏幕尺寸  ------------------------------------------------------
// 是否横竖屏 , 用户界面横屏了才会返回YES
#define __is_landscape__  UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])
// 无论支不支持横屏，只要设备横屏了，就会返回YES
#define __is_device_landscape__  UIDeviceOrientationIsLandscape([[UIDevice currentDevice] orientation])

// 除去信号区的屏幕尺寸
#define __app_frame__  ([[UIScreen mainScreen] applicationFrame])
#define __app_height__  ([[UIScreen mainScreen] applicationFrame].size.height)
#define __app_width__  ([[UIScreen mainScreen] applicationFrame].size.width)

// 屏幕宽度
#define __screen_width__  (__ios_version__ >= 8.0 ? [[UIScreen mainScreen] bounds].size.width : (__is_landscape__ ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width))
// 屏幕高度
#define __screen_height__  (__ios_version__ >= 8.0 ? [[UIScreen mainScreen] bounds].size.height : (__is_landscape__ ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height))


//#if __IPHONE_OS_VERSION_MAX_ALLOWED >= 80000 // 当前Xcode支持iOS8及以上
//
//#define SCREEN_WIDTH ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]?[UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale:[UIScreen mainScreen].bounds.size.width)
//
//#define SCREENH_HEIGHT ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]?[UIScreen mainScreen].nativeBounds.size.height/[UIScreen mainScreen].nativeScale:[UIScreen mainScreen].bounds.size.height)
//
//#define SCREEN_SIZE ([[UIScreen mainScreen] respondsToSelector:@selector(nativeBounds)]?CGSizeMake([UIScreen mainScreen].nativeBounds.size.width/[UIScreen mainScreen].nativeScale,[UIScreen mainScreen].nativeBounds.size.height/[UIScreen mainScreen].nativeScale):[UIScreen mainScreen].bounds.size)
//
//#else
//
//#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//#define SCREENH_HEIGHT [UIScreen mainScreen].bounds.size.height
//#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
//
//#endif


// 是否Retina
#define __is_retina__  ([[UIScreen mainScreen] scale] >= 2.0)

// 设备屏幕尺寸
#define __is_55inch__  ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
#define __is_47inch__  ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define __is_40inch__  ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define __is_35inch__  ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) :NO)

// 中英状态下键盘的高度
#define __kEnglishKeyboardHeight  (216.f)
#define __kChineseKeyboardHeight  (252.f)



#pragma mark ----------------------------------------------   颜色定义  ------------------------------------------------------
// rgb && hex color && random
#define __UIColorMakeWithRGBA(r,g,b,a)  [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define __UIColorMake(r,g,b)  [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0]

#define __UIColorMakeWithHex(hexValue)  [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0]
#define __UIColorRandom  __UIColorMakeWithRGBA(arc4random_uniform(256),arc4random_uniform(256),arc4random_uniform(256),1.0)


#pragma mark ----------------------------------------------   常用  ------------------------------------------------------
// 挨打的
#define __Application__  [UIApplication sharedApplication]
#define __KeyWindow__  [UIApplication sharedApplication].keyWindow
#define __AppDelegate__  [UIApplication sharedApplication].delegate
#define __UserDefaults__  [NSUserDefaults standardUserDefaults]
#define __NotificationCenter__  [NSNotificationCenter defaultCenter]

// 设置 view 圆角和边框
#define __ViewBorderRadius__(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]

// 由角度转换弧度 , 由弧度转换角度
#define __degrees_to_radian__(x)  (M_PI * (x) / 180.0)
#define __radian_to_degrees(radian)  (radian*180.0)/(M_PI)

//获取图片资源
#define __UIImageMake(imgName)  [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]




#pragma mark ----------------------------------------------   获取沙盒文件路径  ------------------------------------------------------
// 获取Temp
#define __kPathTemp__  NSTemporaryDirectory()

// 获取沙盒 Document
#define __kPathDocument__  [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject]

// 获取沙盒 Cache
#define __kPathCache__  [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]

// 字符串是否为空
 #define __kStringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 ? YES : NO )


// 方法交换
void ReplaceMethod(Class _class, SEL _originSelector, SEL _newSelector) {
    Method oriMethod = class_getInstanceMethod(_class, _originSelector);
    Method newMethod = class_getInstanceMethod(_class, _newSelector);
    BOOL isAddedMethod = class_addMethod(_class, _originSelector, method_getImplementation(newMethod), method_getTypeEncoding(newMethod));
    if (isAddedMethod) {
        class_replaceMethod(_class, _newSelector, method_getImplementation(oriMethod), method_getTypeEncoding(oriMethod));
    } else {
        method_exchangeImplementations(oriMethod, newMethod);
    }
}

#endif /* __Y_Macro___h */
