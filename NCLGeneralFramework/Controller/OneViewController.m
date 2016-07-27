//
//  OneViewController.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "OneViewController.h"

@interface OneViewController ()

@property (nonatomic,strong)UIView *greenView;
@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIView *redView = [[UIView alloc]init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    self.greenView = [[UIView alloc]init];
    self.greenView.backgroundColor = [UIColor colorWithHexString:@"#240123"];
    [self.view addSubview:self.greenView];
    UIView *blueView = [[UIView alloc]init];
    blueView.backgroundColor  = [UIColor blueColor];
    [self.view addSubview:blueView];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGes)];
    [self.view addGestureRecognizer:tap];
    
    [redView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left).offset(20);
        make.bottom.equalTo(self.view.mas_bottom).offset(-20);
        make.width.equalTo(self.view.mas_width).multipliedBy(0.2);
        make.height.equalTo(self.view.mas_height).multipliedBy(0.2);
    }];
    [self.greenView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(redView.mas_right).offset(20);
        make.bottom.equalTo(self.view.mas_bottom).offset(-20);
        make.width.equalTo(self.view.mas_width).multipliedBy(0.2);
        make.height.equalTo(self.view.mas_height).multipliedBy(0.2);
    }];
    [blueView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.greenView.mas_right).offset(20);
        make.bottom.equalTo(self.view.mas_bottom).offset(-20);
        make.width.equalTo(self.view.mas_width).multipliedBy(0.2);
        make.height.equalTo(self.view.mas_height).multipliedBy(0.2);
        make.left.equalTo(redView.mas_right).offset(20).priority(250);
    }];
    
    
}



- (void)tapGes
{
    [self.greenView removeFromSuperview];
    [UIView animateWithDuration:1.0f animations:^{
        [self.view layoutIfNeeded];
    }];
}


@end
