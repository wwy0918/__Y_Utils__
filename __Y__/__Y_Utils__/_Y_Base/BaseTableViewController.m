//
//  BaseTableViewController.m
//  __Y__
//
//  Created by wwyun on 2017/11/2.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

#pragma mark - UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

#pragma mark - DZNEmptyDataSetDelegate
//- (NSAttributedString *)titleForEmptyDataSet:(UIScrollView *)scrollView
//{
//    if ([self.tableView.mj_header isRefreshing]
//        || [self.tableView.mj_footer isRefreshing]) {
//        return nil;
//    }
//
//    NSDictionary *attributes = @{NSFontAttributeName : [UIFont systemFontOfSize:14]};
//    NSAttributedString *attriStr = [[NSAttributedString alloc] initWithString:@"空空如也呦~~" attributes:attributes];
//    return attriStr;
//}
//
//- (UIImage *)imageForEmptyDataSet:(UIScrollView *)scrollView
//{
//    if ([self.tableView.mj_header isRefreshing] ||
//        [self.tableView.mj_footer isRefreshing]) {
//        return nil;
//    }
//
//    return [UIImage imageNamed:@"placeholder-empty"];
//}
//
//- (BOOL)emptyDataSetShouldAllowScroll:(UIScrollView *)scrollView
//{
//    return YES;
//}
//
//- (CGFloat)verticalOffsetForEmptyDataSet:(UIScrollView *)scrollView
//{
//    return -150;
//}

#pragma mark - 设置刷新头
//- (void)setRefreshHeaderWithRefreshingBlock:(void(^)())refreshBlock
//{
//    __weak typeof(self) wself = self;
//    MJRefreshGifHeader *header = [MJRefreshGifHeader headerWithRefreshingBlock:^{
//        [wself footerEndRefresh];
//        if (refreshBlock) {
//            refreshBlock();
//        }
//    }];
//    NSArray *imgs = @[
//                      IMAGENAMED(@"refreshHeader_1"),
//                      IMAGENAMED(@"refreshHeader_2"),
//                      IMAGENAMED(@"refreshHeader_3")
//                      ];
//    [header setImages:imgs forState:MJRefreshStateIdle];
//    [header setImages:imgs forState:MJRefreshStatePulling];
//    [header setImages:imgs forState:MJRefreshStateRefreshing];
//    header.lastUpdatedTimeLabel.hidden = YES;
//    // Hide the status
//    header.stateLabel.hidden = YES;
//    self.tableView.mj_header = header;
//}

#pragma mark - 设置刷新尾
//- (void)setRefreshFooterWithRefreshingBlock:(void(^)())refreshBlock
//{
//     __weak typeof(self) wself = self;
//    self.tableView.mj_footer = [MJRefreshBackNormalFooter footerWithRefreshingBlock:^{
//        [wself headerEndRefresh];
//        if (refreshBlock) {
//            refreshBlock();
//        }
//    }];
//}

#pragma mark - 刷新头开始刷新
//- (void)beginRefresh
//{
//    if (self.tableView.mj_header) {
//        [self.tableView.mj_header beginRefreshing];
//    }
//}

//- (void)endRefresh
//{
//    [self headerEndRefresh];
//    [self footerEndRefresh];
//}
//
//- (void)headerEndRefresh
//{
//     __weak typeof(self) wself = self;
//    [self.tableView.mj_header endRefreshingWithCompletionBlock:^{
//        [wself.tableView reloadEmptyDataSet];
//    }];
//}
//
//- (void)footerEndRefresh
//{
//     __weak typeof(self) wself = self;
//    [self.tableView.mj_footer endRefreshingWithCompletionBlock:^{
//        [wself.tableView reloadEmptyDataSet];
//    }];
//}


#pragma mark - 懒加载属性
- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.showsHorizontalScrollIndicator = NO;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//        _tableView.emptyDataSetSource = self;
//        _tableView.emptyDataSetDelegate = self;
        [self.view addSubview:_tableView];
    }
    return _tableView;
}

- (NSMutableArray *)dataSource
{
    if (!_dataSource) {
        _dataSource = [NSMutableArray array];
    }
    return _dataSource;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
