//
//  Y_Networker.m
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


#import "Y_Networker.h"
#import "Y_ProgressHud.h"
static NSInteger const __code = 200;

@implementation Y_Networker

+ (void)baseConfig
{
    
}

+ (NSURLSessionTask *)post:(NSString *)url
                parameters:(id)parameters
                   success:(PPHttpRequestSuccess)success
{
    return [self post:url parameters:parameters success:success logicFailure:nil connectFailure:nil];
}

+ (NSURLSessionTask *)post:(NSString *)url
                parameters:(id)parameters
                   success:(PPHttpRequestSuccess)success
              logicFailure:(PPHttpRequestSuccess)logicFailure
            connectFailure:(PPHttpRequestFailed)connectFailure
{
    return [self post:url parameters:parameters hudIn:nil success:success logicFailure:logicFailure connectFailure:connectFailure];
}

+ (NSURLSessionTask *)post:(NSString *)url
                parameters:(id)parameters
                     hudIn:(UIView *)aView
                   success:(PPHttpRequestSuccess)success
              logicFailure:(PPHttpRequestSuccess)logicFailure
            connectFailure:(PPHttpRequestFailed)connectFailure
{
    /// 创建一个提示层
    MBProgressHUD *hud = nil;
    if (aView != nil) {
        hud = [Y_ProgressHud y_showIn:aView complete:nil];
    }
    
    NSURLSessionTask *task = [self POST:url parameters:parameters success:^(id responseObject) {
        
        NSInteger code = [responseObject[@"code"] integerValue];
        
        if (code == __code) {
            /// code == 200
            if (success) {
                success(responseObject);
            }
        } else {
            /// code != 200
            if (logicFailure) {
                logicFailure(responseObject);
            }
        }
        /// 做一些处理, hud消失等
        if (hud) {
            [hud hideAnimated:YES];
        }
        
    } failure:^(NSError *error) {
        if (connectFailure) {
            connectFailure(error);
        }
        /// 做一些处理, hud消失等
        if (hud) {
            [hud hideAnimated:YES];
        }
    }];
    return task;
}

@end
