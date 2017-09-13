//
//  UIView+__Y_FrameSet.m
//  YunCode
//
//  Created by wwyun on 17/9/12.
//  Copyright © 2017年 wwy. All rights reserved.
//
/**
 *　　　　　　　   ┏┓                     ┏┓+ +
 *　　　　　　　┏┛┻━━━━━━━┛┻┓ + +
 *　　　　　　　┃　　　　　　             ┃
 *　　　　　　　┃　　　━　　　          ┃ ++ + + +
 *　　　　　　 █████━█████     ┃+
 *　　　　　　　┃                               ┃ +
 *　　　　　　　┃　　　┻　　　          ┃
 *　　　　　　　┃　　　　　　             ┃ + +
 *　　　　　　　┗━━┓　　　        ┏━┛
 *                                 ┃　　         ┃
 *　　　　　　　　　   ┃　　         ┃ + + + +
 *　　　　　　　　　   ┃　　         ┃　Code is far away from     bug with the animal protecting
 *　　　　　　　　　   ┃　　         ┃ + 　　　　         神兽保佑,代码无bug
 *　　　　　　　　　   ┃　　         ┃
 *　　　　　　　　　   ┃　　         ┃　　+
 *　　　　　　　　　   ┃　 　         ┗━━━┓ + +
 *　　　　　　　　　   ┃ 　　　　　           ┣┓
 *　　　　　　　　　   ┃ 　　　　　           ┏┛
 *　　　　　　　　　   ┗┓┓┏━━━┳┓┏┛ + + + +
 *　　　　　　　　　      ┃┫┫　      ┃┫┫
 *　　　　　　　　　      ┗┻┛　      ┗┻┛+ + + +
 */

#import "UIView+__Y_FrameSet.h"

@implementation UIView (__Y_FrameSet)

- (void)setY_x:(CGFloat)y_x {
    CGRect tmpFrame = self.frame;
    tmpFrame.origin.x = y_x;
    self.frame = tmpFrame;
}

- (CGFloat)y_x {
    return self.frame.origin.x;
}

- (void)setY_y:(CGFloat)y_y {
    CGRect tmpFrame = self.frame;
    tmpFrame.origin.y = y_y;
    self.frame = tmpFrame;
}

- (CGFloat)y_y {
    return self.frame.origin.y;
}

- (void)setY_width:(CGFloat)y_width {
    CGRect tmpFrame = self.frame;
    tmpFrame.size.width = y_width;
    self.frame = tmpFrame;
}

- (CGFloat)y_width {
    return self.frame.size.width;
}

- (void)setY_height:(CGFloat)y_height {
    CGRect frame = self.frame;
    frame.size.height = y_height;
    self.frame = frame;
}

- (CGFloat)y_height {
    return self.frame.size.height;
}

- (void)setY_size:(CGSize)y_size {
    CGRect frame = self.frame;
    frame.size = y_size;
    self.frame = frame;
}

- (CGSize)y_size {
    return self.frame.size;
}

- (void)setY_origin:(CGPoint)y_origin {
    CGRect frame = self.frame;
    frame.origin = y_origin;
    self.frame = frame;
}

- (CGPoint)y_origin {
    return self.frame.origin;
}

- (void)setY_centerX:(CGFloat)y_centerX {
    CGPoint center = self.center;
    center.x = y_centerX;
    self.center = center;
}

- (CGFloat)y_centerX {
    return self.center.x;
}

- (void)setY_centerY:(CGFloat)y_centerY {
    CGPoint center = self.center;
    center.y = y_centerY;
    self.center = center;
}

- (CGFloat)y_centerY {
    return self.center.y;
}

- (void)setY_point:(CGPoint)y_point {
    CGRect frame = self.frame;
    frame.origin = y_point;
    self.frame = frame;
}

- (CGPoint)y_point {
    return self.frame.origin;
}

@end
