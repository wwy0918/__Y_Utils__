//
//  UIWindow+__Y__.m
//  __Y__
//
//  Created by wwyun on 2017/12/5.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "UIWindow+__Y__.h"

@implementation UIWindow (__Y__)
+ (UIViewController *)topViewController
{
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    UIViewController *topVC = [self topVC:rootVC];
    while (topVC.presentedViewController) {
        topVC = [self topVC:topVC.presentedViewController];
    }
    return topVC;
}

+ (UIViewController *)topVC:(UIViewController *)viewController
{
    UIViewController *topVC = viewController;
    if ([viewController isKindOfClass:[UITabBarController class]]) {
       topVC = [self topVC:[(UITabBarController *)viewController selectedViewController]];
    } else if ([viewController isKindOfClass:[UINavigationController class]]) {
        topVC = [self topVC:[(UINavigationController *)viewController topViewController]];
    }
    return topVC;
}



@end
