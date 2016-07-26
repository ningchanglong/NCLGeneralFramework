//
//  AppDelegate+RootViewController.h
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (RootViewController)


/**
 * 根视图
 */

- (void)setRootViewCotroller;

/**
 * 首次启动轮播图
 */

- (void)createLoadingScrollView;

/**
 * Windows实例化
 */

- (void)setAppWindows;
@end
