//
//  ThreeViewController.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor purpleColor];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    self.tabBarController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithimage:[UIImage imageNamed:@"MainTagSubIcon"] highImage:[UIImage imageNamed:@"MainTagSubIconClick"] target:self action:@selector(menuClick)];
}

- (void)viewWillDisappear:(BOOL)animated
{
    self.tabBarController.navigationItem.leftBarButtonItem = nil;
}
- (void)menuClick
{
    FiveViewController * fiveVC = [[FiveViewController alloc] init];
    
    [self.navigationController pushViewController:fiveVC animated:YES];
}


@end
