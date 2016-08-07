//
//  AppDelegate+RootViewController.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "AppDelegate+RootViewController.h"

@interface AppDelegate ()<UIScrollViewDelegate>

@end
@implementation AppDelegate (RootViewController)


- (void)setRootViewCotroller{
    if ([kUserDefaults objectForKey:@"isOne"]) {//不是第一次安装
        [self setRoot];
    } else {
        UIViewController *advertiseVC = [[UIViewController alloc] init];
        self.window.rootViewController = advertiseVC;
        [self createLoadingScrollView];
    }
}

#pragma msrk - 引导页
- (void)createLoadingScrollView{
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.window.bounds];
    scrollView.pagingEnabled = YES;
    scrollView.delegate = self;
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    [self.window.rootViewController.view addSubview:scrollView];
    
    NSArray *arr = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg"];
    for (NSInteger i = 0; i<arr.count; i++)
    {
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake(kScreenW*i, 0, kScreenW, self.window.frame.size.height)];
        img.image = [UIImage imageNamed:arr[i]];
        [scrollView addSubview:img];
        img.userInteractionEnabled = YES;
        if (i == arr.count - 1)
        {
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            btn.frame = CGRectMake((self.window.frame.size.width/2)-50, kScreenH-110, 100, 40);
            btn.backgroundColor = Main_Color;
            [btn setTitle:@"开始体验" forState:UIControlStateNormal];
            [btn addTarget:self action:@selector(goToMain) forControlEvents:UIControlEventTouchUpInside];
            [img addSubview:btn];
            [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
            btn.layer.borderWidth = 1;
            btn.layer.borderColor = Main_Color.CGColor;
        }
    }
    scrollView.contentSize = CGSizeMake(kScreenW*arr.count, self.window.frame.size.height);
}

- (void)goToMain
{
    NSUserDefaults *user = [NSUserDefaults standardUserDefaults];
    [user setObject:@"isOne" forKey:@"isOne"];
    [user synchronize];
    [self setRoot];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.05 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
    
        NSNotification * noti = [NSNotification notificationWithName:@"AFNetwork" object:nil];
        [[NSNotificationCenter defaultCenter]postNotification:noti];
    });
   
}

- (void)setRoot{
    self.mainTBC = [[MainTabBarController alloc] init];
    RootNavigationController *rootNC = [[RootNavigationController alloc] initWithRootViewController:self.mainTBC];
    self.window.rootViewController = rootNC;
}

- (void)setAppWindows
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [[UIApplication sharedApplication]setStatusBarHidden:NO];
    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleLightContent];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor whiteColor]}];
}

@end
