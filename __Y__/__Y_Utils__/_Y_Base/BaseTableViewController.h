//
//  BaseTableViewController.h
//  __Y__
//
//  Created by wwyun on 2017/11/2.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTableViewController : UIViewController
<
    /// tableView 代理
    UITableViewDelegate, UITableViewDataSource
    /// DZN代理, 占位符
//    DZNEmptyDataSetSource,DZNEmptyDataSetDelegate
>
/// 通过懒加载放生创建, 默认Plain模式
@property (nonatomic, strong) UITableView *tableView;
/// 当前页
@property (nonatomic, assign) NSInteger curPage;
/// 每次请求的条数
@property (nonatomic, assign) NSInteger pageSize;
/// 总页数
@property (nonatomic, assign) NSInteger totalPage;
/// 数据源
@property (nonatomic, strong) NSMutableArray *dataSource;

/** 初始化刷新头 */
- (void)setRefreshHeaderWithRefreshingBlock:(void(^)())refreshBlock;
/** 初始化刷新尾 */
- (void)setRefreshFooterWithRefreshingBlock:(void(^)())refreshBlock;
/** 开始刷新 */
- (void)beginRefresh;
/** 结束刷新 */
- (void)endRefresh;

@end
