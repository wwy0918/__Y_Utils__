//
//  NavViewController.m
//  xcode9.0
//
//  Created by wwyun on 2017/10/12.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "NavViewController.h"

@interface NavViewController ()<UINavigationControllerDelegate, UIGestureRecognizerDelegate>
@end

@implementation NavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self customPopGesture];
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
/// 自定义返回手势
- (void)customPopGesture {
    // 获取系统自带返回手势代理
    id target = self.interactivePopGestureRecognizer.delegate;
    // 创建自己的侧滑手势
    // handleNavigationTransition: 是系统自带的全屏手势响应方法,不需要自己去实现,系统已经实现好了
    UIPanGestureRecognizer *popGesture = [[UIPanGestureRecognizer alloc] initWithTarget:target action:NSSelectorFromString(@"handleNavigationTransition:")];
    popGesture.delegate = self;
    [self.view addGestureRecognizer:popGesture];
    // 禁用系统自带的全屏手势
    self.interactivePopGestureRecognizer.enabled = NO;
}
#pragma clang diagnostic pop

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.viewControllers.count > 1;
}

/// hidesBottomBarWhenPushed
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

/// 设置返回按钮样式
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
        viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStylePlain target:self action:@selector(backBarButtonItemAction)];
}
@end
