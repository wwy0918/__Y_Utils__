//
//  MainViewController.m
//  xcode9.0
//
//  Created by wwyun on 2017/10/11.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    if (self.hideNav) {
//        [self.navigationController setNavigationBarHidden:YES animated:YES];
//    }
//    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:nil action:nil];
    
//    [self.navigationController setNavigationBarHidden:YES];
    
    UISearchController *searController = [[UISearchController alloc] initWithSearchResultsController:nil];
    if (@available(iOS 11.0, *)) {
        self.navigationItem.searchController = searController;
        self.navigationItem.hidesSearchBarWhenScrolling = NO;
    } else {
        // Fallback on earlier versions
    }
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    self.tableView.adjustedContentInset
//    self.tableView.contentInset = UIEdgeInsetsMake(60, 0, 0, 0);
//    self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    self.tableView.separatorInsetReference = UITableViewSeparatorInsetFromAutomaticInsets;
    [self.view addSubview:self.tableView];
    

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@""];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@""];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld行", indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    MainViewController *vc = [[MainViewController alloc] init];
    vc.hideNav = YES;
    [self.navigationController pushViewController:vc animated:YES];
}


@end
