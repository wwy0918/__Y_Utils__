//
//  UIView+__Y_IBInspectable__.m
//  YunCode
//
//  Created by wwyun on 17/9/12.
//  Copyright © 2017年 wwy. All rights reserved.
//

#import "UIView+__Y_IBInspectable__.h"

@implementation UIView (__Y_IBInspectable__)

- (void)setY_masksToBounds:(BOOL)y_masksToBounds
{
    self.layer.masksToBounds = y_masksToBounds;
}

- (BOOL)y_masksToBounds
{
    return self.layer.masksToBounds;
}

- (void)setY_borderWidth:(CGFloat)y_borderWidth
{
    self.layer.borderWidth = y_borderWidth;
}

- (CGFloat)y_borderWidth
{
    return self.layer.borderWidth;
}

- (void)setY_borderColor:(UIColor *)y_borderColor
{
    self.layer.borderColor = y_borderColor.CGColor;
}

- (UIColor *)y_borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setY_cornerRadius:(CGFloat)y_cornerRadius
{
    self.layer.cornerRadius = y_cornerRadius;
}

- (CGFloat)y_cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setY_shadowColor:(UIColor *)y_shadowColor
{
    self.layer.shadowColor = y_shadowColor.CGColor;
}

- (UIColor *)y_shadowColor
{
    return [UIColor colorWithCGColor:self.layer.shadowColor];
}

- (void)setY_shadowOffset:(CGSize)y_shadowOffset
{
    self.layer.shadowOffset = y_shadowOffset;
}

- (CGSize)y_shadowOffset
{
    return self.layer.shadowOffset;
}

- (void)setY_shadowOpacity:(float)y_shadowOpacity
{
    self.layer.shadowOpacity = y_shadowOpacity;
}

- (float)y_shadowOpacity
{
    return self.layer.shadowOpacity;
}

@end
