//
//  Y_Networker.h
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


#import "PPNetworkHelper.h"

@interface Y_Networker : PPNetworkHelper

+ (void)baseConfig;


/**
 post 请求
 @param url 请求地址
 @param parameters 请求参数
  @param aView 菊花提示所在视图
 @param success 成功回调
 @param logicFailure 业务逻辑失败回调
 @param connectFailure 连接失败回调
 @return void
 */
+ (NSURLSessionTask *)post:(NSString *)url
                parameters:(id)parameters
                     hudIn:(UIView *)aView
                   success:(PPHttpRequestSuccess)success
              logicFailure:(PPHttpRequestSuccess)logicFailure
            connectFailure:(PPHttpRequestFailed)connectFailure;

/// 没有菊花提示的请求
+ (NSURLSessionTask *)post:(NSString *)url
                parameters:(id)parameters
                   success:(PPHttpRequestSuccess)success
              logicFailure:(PPHttpRequestSuccess)logicFailure
            connectFailure:(PPHttpRequestFailed)connectFailure;

/// 只处理请求成功的请求
+ (NSURLSessionTask *)post:(NSString *)url
                parameters:(id)parameters
                   success:(PPHttpRequestSuccess)success;

@end
