//
//  UIImage+Extend.m
//  NCLGeneralFramework
//
//  Created by ningchanglong on 16/8/7.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "UIImage+Extend.h"

@implementation UIImage (Extend)

- (instancetype )CircleImageNamed:(NSString *)name
{
    // 1.开启图形上下文
    // 比例因素:当前点与像素比例
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0);
    // 2.描述裁剪区域
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.size.width, self.size.height)];
    // 3.设置裁剪区域;
    [path addClip];
    // 4.画图片
    [self drawAtPoint:CGPointZero];
    // 5.取出图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    // 6.关闭上下文
    UIGraphicsEndImageContext();
    
    return image;
}

@end


