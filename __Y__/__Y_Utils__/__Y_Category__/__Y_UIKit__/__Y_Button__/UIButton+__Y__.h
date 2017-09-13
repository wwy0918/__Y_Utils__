//
//  UIButton+__Y__.h
//  YunCode
//
//  Created by wwyun on 17/9/13.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (__Y__)
/**
 *  显示倒计时，倒计时过程中不能点击
 *
 *  @param timeout    时长
 *  @param tittle     标题
 *  @param waitTittle 倒计时显示的标题
 */
- (void)y_startTime:(NSInteger )timeout title:(NSString *)tittle waitTittle:(NSString *)waitTittle;

/**
 *  在按钮上显示一个菊花对象
 */
- (void)y_showIndicator;

/**
 *  隐藏菊花对象
 */
- (void)y_hideIndicator;
@end
