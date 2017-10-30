//
//  UIApplication+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (__Y__)

/// app版本
- (NSString *)y_appVersion;

/// build 版本号
- (NSString *)y_appBuild;

/// bundle id
- (NSString *)y_appBundleId;

/// 拨打电话
- (void)y_call:(NSString *)tel;

/// webView拨打电话
- (void)y_callUserWebView:(NSString *)tel;

/// 跳到app的评论页
- (void)y_commentWithAppId:(NSString *)appId;

/// 发邮件
- (void)y_sendEmailToAddress:(NSString *)address;

/// 获取启动页图片
- (UIImage *)y_launchImage;

/// 沙盒的路径
- (NSString *)y_documentsDirectoryPath;

/// 沙盒内的字节大小
- (NSInteger)y_documentsFolderSizeInBytes;

/// 沙盒的内容大小 (例如5 MB)
- (NSString *)y_documentsFolderSizeAsString;

/// 程序的大小 包括文件 缓冲 以及 下载
- (NSString *)y_applicationSize;

///// rootVc
//- (UIViewController *)y_rootViewController;
//
///// 根控制器的子视图
//- (UIViewController *)y_subViewControllerAt:(NSInteger)i;

@end
