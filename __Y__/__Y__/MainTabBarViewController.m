//
//  MainTabBarViewController.m
//  xcode9.0
//
//  Created by wwyun on 2017/10/11.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "NavViewController.h"
#import "MainViewController.h"
#import "MainTabBarViewController.h"

@interface MainTabBarViewController ()

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    MainViewController *v1 = [MainViewController new];
    v1.title = @"首页";
    NavViewController *nav1 = [[NavViewController alloc] initWithRootViewController:v1];
    
    MainViewController *v2 = [MainViewController new];
    v2.title = @"天猫";
    NavViewController *nav2 = [[NavViewController alloc] initWithRootViewController:v2];

    [self addChildViewController:nav1];
    [self addChildViewController:nav2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
