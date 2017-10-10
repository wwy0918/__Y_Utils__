//
//  Y_ProgressHud.m
//  __Y__
//
//  Created by wwyun on 17/10/10.
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


#import "Y_ProgressHud.h"
#import "MBProgressHUD.h"
static NSTimeInterval const _delay = 1.5f;

@implementation Y_ProgressHud

+ (MBProgressHUD *)y_showIn:(UIView *)aView complete:(void (^)())complete
{
    MBProgressHUD *hud = [[MBProgressHUD alloc] initWithView:aView];
    /// 是否从父视图移除当hide时
    hud.removeFromSuperViewOnHide = YES;
    /// 延迟0.5s显示
    hud.graceTime = 0.5;
    /// 设置hud颜色为黑色
    hud.bezelView.color = [UIColor blackColor];
    /// 风格
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    /// 设置文本颜色为白色
    hud.contentColor = [UIColor whiteColor];
    /// label文字大小
    hud.label.font = [UIFont systemFontOfSize:14];
    [hud showAnimated:YES];
    /// 完成回调
    if (complete) {
        hud.completionBlock = complete;
    }
    [aView addSubview:hud];
    return hud;
}

+ (void)y_showTextOnly:(NSString *)text _in:(UIView *)aView complete:(void (^)())complete
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:aView animated:YES];
    /// 设置显示模式为文字
    hud.mode = MBProgressHUDModeText;
    hud.label.text = text;
    hud.bezelView.color = [UIColor blackColor];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    /// 改变菊花大小
    // hud.bezelView.transform = CGAffineTransformScale(hud.bezelView.transform, 0.8, 0.8);
    hud.contentColor = [UIColor whiteColor];
    /// 自动隐藏
    [hud hideAnimated:YES afterDelay:_delay];
    /// 完成回调
    if (complete) {
        hud.completionBlock = complete;
    }
}

+ (void)y_showDoneText:(NSString *)text _in:(UIView *)aView complete:(void (^)())complete
{
    [self y_showCustomViewText:text image:@"Checkmark" _in:aView complete:complete];
}

+ (void)y_showErrorText:(NSString *)text _in:(UIView *)aView complete:(void (^)())complete
{
    [self y_showCustomViewText:text image:@"Error" _in:aView complete:complete];
}

/// private
+ (void)y_showCustomViewText:(NSString *)text  image:(NSString *)imageStr _in:(UIView *)aView complete:(void(^)())complete
{
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:aView animated:YES];
    /// 设置模式为自定义视图
    hud.mode = MBProgressHUDModeCustomView;
    NSString *imgS = [NSString stringWithFormat:@"Y_ProgressHud.bundle/%@",imageStr];
    UIImage *image = [[UIImage imageNamed:imgS] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    hud.customView = [[UIImageView alloc] initWithImage:image];
    hud.square = YES;
    hud.label.text = text;
    hud.label.font = [UIFont systemFontOfSize:14];
    hud.bezelView.color = [UIColor blackColor];
    hud.bezelView.style = MBProgressHUDBackgroundStyleSolidColor;
    hud.contentColor = [UIColor whiteColor];
    /// 自动隐藏
    [hud hideAnimated:YES afterDelay:_delay];
    /// 完成回调
    if (complete) {
        hud.completionBlock = complete;
    }
}


@end
