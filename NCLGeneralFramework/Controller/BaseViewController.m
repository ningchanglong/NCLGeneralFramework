//
//  BaseViewController.m
//  NCLGeneralFramework
//
//  Created by ioi on 16/9/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *backBarBtn = [[UIBarButtonItem alloc] init];
    backBarBtn.image = [UIImage imageNamed:@"Arrow_Return"];
    backBarBtn.title = @"";
    self.navigationItem.backBarButtonItem = backBarBtn;
}



@end
