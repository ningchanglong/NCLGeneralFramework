//
//  MainTabBarController.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "MainTabBarController.h"

@interface MainTabBarController ()<UITabBarControllerDelegate>

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pushToAd) name:@"pushtoad" object:nil];
    self.title = @"书架";
    [self createUI];
}

- (void)createUI
{
    [self setEdgesForExtendedLayout:UIRectEdgeNone];
    self.automaticallyAdjustsScrollViewInsets = YES;
    
    self.tabBar.tintColor = COLOR_MAIN_BAR;
    self.tabBar.translucent=NO;
    self.tabBar.opaque = YES;
    self.tabBar.backgroundImage = [UIImage imageNamed:@"tabbar_bg"];
//    self.tabBar.barTintColor = Main_Color;
    
    
    
    
    OneViewController *oneVC = [[OneViewController alloc] init];
    oneVC.tabBarItem.tag = 0;
    oneVC.tabBarItem.title = @"书架";
    oneVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_book_library"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    oneVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_book_library_hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    twoVC.tabBarItem.tag = 1;
    twoVC.tabBarItem.title = @"精选";
    twoVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_book_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    twoVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_book_selected_hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ThreeViewController *threeVC = [[ThreeViewController alloc] init];
    threeVC.tabBarItem.tag = 2;
    threeVC.tabBarItem.title = @"书库";
    threeVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_book_stack"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    threeVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_book_stack_hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    FourViewController *fourVC = [[FourViewController alloc] init];
    fourVC.tabBarItem.tag = 3;
    fourVC.tabBarItem.title = @"发现";
    fourVC.tabBarItem.image = [[UIImage imageNamed:@"tabbar_book_fund"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    fourVC.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_book_fund_hl"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    self.viewControllers = @[oneVC, twoVC, threeVC, fourVC];
    
    self.delegate = self;
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
    switch (item.tag) {
        case 0:
            self.title = @"书架";
            break;
        case 1:
            self.title = @"精选";
            break;
        case 2:
            self.title = @"书库";
            break;
        case 3:
            self.title = @"发现";
            break;
        
    }
}

- (void)pushToAd {
    
    AdvertiseViewController *adVc = [[AdvertiseViewController alloc] init];
    [self.navigationController pushViewController:adVc animated:YES];
    
}

@end