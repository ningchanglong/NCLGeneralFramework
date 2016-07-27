//
//  AppDelegate+Pay.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/25.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "AppDelegate+Pay.h"
#import "AlipaySDK+Add.h"
@implementation AppDelegate (Pay)

- (void)addPaymentFunction
{
    //注册支付宝支付(客户端签名才需要注册)
    [AlipaySDK xwAdd_registerAlipayWithPartnerID:AliPayPartnerID sellerID:AliPaySellerID partnerPrivKey:AliPayPartnerPrivKey];
}

@end
