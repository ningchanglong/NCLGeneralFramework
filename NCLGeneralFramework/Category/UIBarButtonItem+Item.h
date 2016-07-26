//
//  UIBarButtonItem+Item.h
//  NCLBasicFramework
//
//  Created by ningchanglong on 16/7/23.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

/**
 * 创建导航栏按钮（高亮）
 */

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;

/**
 * 创建导航栏按钮（选中）
 */

+ (UIBarButtonItem *)itemWithimage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;
@end
