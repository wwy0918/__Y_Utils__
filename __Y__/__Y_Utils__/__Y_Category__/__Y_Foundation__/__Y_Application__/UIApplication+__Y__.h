//
//  UIApplication+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIApplication (__Y__)

/**
 *  app版本
 */
- (NSString *)y_appVersion;

/**
 build 版本号
 */
- (NSString *)y_appBuild;

/**
 apps 证书编号 (例如MacKun.az.com)
 */
- (NSString *)y_appBundleId;

/**
 *  询问拨打电话
 */
- (void)y_call:(NSString *)tel;

/**
 *  webView拨打电话
 */
- (void)y_call:(NSString *)tel _in:(UIView *)aView;

/**
 *  跳到app的评论页
 *
 *  @param appId APP的id号
 */
- (void)y_jumpToRateWithAppId:(NSString *)appId;

/**
 *  发邮件
 *
 *  @param address 邮件地址
 */
- (void)y_sendEmailToAddress:(NSString *)address;

/**
 *  获取启动页图片
 */
- (UIImage *)y_launchImage;

/**
 *  沙盒的路径
 */
- (NSString *)y_documentsDirectoryPath;

/**
 * 沙盒的内容大小 (例如5 MB)
 */
- (NSString *)y_documentsFolderSizeAsString;

/**
 沙盒内的字节大小
 */
- (NSInteger)y_documentsFolderSizeInBytes;
/**
 *  程序的大小 包括文件 缓冲 以及 下载
 *
 *  @return  所有文件大小
 */
- (NSString *)y_applicationSize;


@end
