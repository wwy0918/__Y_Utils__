//
//  UIImage+Gif.h
//  SLQCategories
//
//  Created by Christian on 16/9/12.
//  Copyright © 2016年 MrSong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Gif)
#pragma mark - gif
/**
 *  播放gif动画
 *
 *  @param name 文件名
 */
+ (UIImage *)animatedGIFNamed:(NSString *)name;
/**
 *  播放动画
 *
 *  @param data 源文件（图片源）
 */
+ (UIImage *)animatedGIFWithData:(NSData *)data;
/**
 *  缩放动画
 *
 *  @param size 大小
 */
- (UIImage *)animatedImageByScalingAndCroppingToSize:(CGSize)size;
@end
