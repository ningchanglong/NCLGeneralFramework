//
//  AppDelegate.m
//  NCLGeneralFramework
//
//  Created by ioi on 16/7/26.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "AppDelegate.h"
#import "AppDelegate+AdvertiseViewController.h"
#import "AppDelegate+RootViewController.h"
#import "AppDelegate+Pay.h"
#import "MainTabBarController.h"
#import "AlipaySDK+Add.h"
#import "WXApi+XWAdd.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [NSThread sleepForTimeInterval:2.0];//设置启动页面时间
    [self setAppWindows];
    [self setRootViewCotroller];
    [self addPaymentFunction];
    [self.window makeKeyAndVisible];
//    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    [self addAdvertise];
     //注册微信   
    [WXApi registerApp:WX_APPID];
    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options{
    
    //处理支付宝回调信息
    [AlipaySDK xwAdd_handleOpenURL:url];
    //处理微信回调信息
    [WXApi xwAdd_handleOpenURL:url];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
