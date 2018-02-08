//
//  BaseTabbleViewController.m
//  __Y__
//
//  Created by wwyun on 2017/11/2.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "BaseTabbleViewController.h"

@interface BaseTabbleViewController ()

@end

@implementation BaseTabbleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setupChildViewControllers];
}

- (void)setupChildViewControllers
{
    
}

- (void)addChildViewController:(UIViewController *)childController
                         title:(NSString *)title
                    imageNamed:(NSString *)imageName
            selectedImageNamed:(NSString *)selectedImageName
{
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:childController];
    childController.title = title;
    childController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    childController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    [childController.tabBarItem setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor]} forState:UIControlStateNormal];
//    [childController.tabBarItem setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor]} forState:UIControlStateSelected];
    [self addChildViewController:childController];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
