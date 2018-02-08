//
//  BaseNaigationViewController.m
//  __Y__
//
//  Created by wwyun on 2017/11/2.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "BaseNaigationViewController.h"

@interface BaseNaigationViewController ()<UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@end

@implementation BaseNaigationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self baseConfig];
}

- (void)baseConfig
{
    // 设置返回按钮图片
    //    self.navigationBar.backIndicatorImage = ;
    //    self.navigationBar.backIndicatorTransitionMaskImage = ;
    
    // 自定义返回手势
    [self setupPopGestureRecognizer];
}

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
- (void)setupPopGestureRecognizer
{
    // 获取系统自带返回手势代理
    id target = self.interactivePopGestureRecognizer.delegate;
    // 创建自己的侧滑手势
    // handleNavigationTransition: 是系统自带的全屏手势响应方法,不需要自己去实现,系统已经实现好了
    UIScreenEdgePanGestureRecognizer *popGesture = [[UIScreenEdgePanGestureRecognizer alloc]
                                                    initWithTarget:target
                                                    action:@selector(handleNavigationTransition:)];
    popGesture.edges = UIRectEdgeLeft;
    popGesture.delegate = self;
    [self.view addGestureRecognizer:popGesture];
    // 禁用系统自带的全屏手势
    self.interactivePopGestureRecognizer.enabled = NO;
}
#pragma clang diagnostic pop

// push时隐藏tabbar
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

#pragma mark - 手势代理
// 一定要实现这个代理,否则会导致栈底控制器侧滑卡住
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.viewControllers.count > 1;
}

#pragma mark - UINavigationController 代理
// 设置返回按钮
- (void)navigationController:(UINavigationController *)navigationController
      willShowViewController:(UIViewController *)viewController
                    animated:(BOOL)animated
{
    viewController.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:nil style:0 target:nil action:nil];
}

/// 设置状态栏风格
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

/// 把状态栏风格控制权交给子控制器
- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.visibleViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
