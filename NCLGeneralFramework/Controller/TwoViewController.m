//
//  TwoViewController.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "TwoViewController.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor yellowColor];
    
    [BLL getHomeInfoListWithResultBlock:^(NSDictionary *model, NSError *error) {
        NSLog(@"%@",model);
        
        
    }];
}



@end
