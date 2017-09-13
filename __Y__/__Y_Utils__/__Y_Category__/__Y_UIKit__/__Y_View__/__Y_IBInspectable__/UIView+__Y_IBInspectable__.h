//
//  UIView+__Y_IBInspectable__.h
//  YunCode
//
//  Created by wwyun on 17/9/12.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE

@interface UIView (__Y_IBInspectable__)

/**
 * 去除超过父视图部分
 */
@property (nonatomic,assign) IBInspectable BOOL  y_masksToBounds;

/**
 * 可视化设置边框宽度
 */
@property (nonatomic, assign) IBInspectable CGFloat  y_borderWidth;

/**
 * 可视化设置边框颜色
 */
@property (nonatomic, strong) IBInspectable UIColor  *y_borderColor;

/**
 * 可视化设置圆角
 */
@property (nonatomic, assign) IBInspectable CGFloat  y_cornerRadius;

/**
 * 阴影颜色
 */
@property (nonatomic,strong) IBInspectable UIColor  *y_shadowColor;

/**
 * 阴影透明度
 */
@property (nonatomic,assign) IBInspectable float  y_shadowOpacity;

/**
 * 偏移量
 */
@property (nonatomic,assign) IBInspectable CGSize  y_shadowOffset;
@end
