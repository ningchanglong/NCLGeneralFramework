//
//  UserModel.m
//  NCLBasicFramework
//
//  Created by ningchanglong on 16/7/23.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

static id _userModel;

+ (instancetype)shareUser
{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _userModel = [[UserModel alloc] init];
    });
    return _userModel;
}

@end
