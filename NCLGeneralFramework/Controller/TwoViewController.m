//
//  TwoViewController.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "TwoViewController.h"
#import "AlipaySDK+Add.h"
@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor yellowColor];
    
//    [BLL getHomeInfoListWithResultBlock:^(NSDictionary *model, NSError *error) {
//        NSLog(@"%@",model);
//        
//        
//    }];
    
    
    UIButton *AlipayBtn = [[UIButton alloc] init];
//    AlipayBtn.backgroundColor = [UIColor blueColor];
    [self.view addSubview:AlipayBtn];
    AlipayBtn.layer.masksToBounds = YES;
    AlipayBtn.layer.cornerRadius = 5;
//    [AlipayBtn setTitle:@"支付宝支付" forState:UIControlStateNormal];
    [AlipayBtn setImage:[UIImage imageNamed:@"biao"] forState:UIControlStateNormal];
    [AlipayBtn addTarget:self action:@selector(aliPayActin) forControlEvents:UIControlEventTouchUpInside];
    [AlipayBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
        make.centerX.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view.mas_top).offset(30);
        
    }];
    
    
}

- (void)aliPayActin
{
    //发起支付宝支付（客户端签名版本）
    [AlipaySDK xwAdd_sendPayRequestWithOrderID:@"1221322213123131321" orderName:@"测试订单" orderDescription:nil orderPrice:@"0.01" orderNotifyUrl:@"www.test.com" appScheme:@"xwpaydemo" callbackConfig:^(BOOL successed) {
        
        //支付宝支付无论网页版本和app版本都统一在这里回调
        [self _xw_handleResult:successed];
    }];
    
}

/**处理支付结果*/
- (void)_xw_handleResult:(BOOL)successed{
   
    if (successed) {
        [MBProgressHUD showSuccess:@"支付成功"];
    } else {
        [MBProgressHUD showError:@"支付失败"];
    }
}


@end
