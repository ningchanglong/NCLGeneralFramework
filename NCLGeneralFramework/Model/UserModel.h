//
//  UserModel.h
//  NCLBasicFramework
//
//  Created by ningchanglong on 16/7/23.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

/**
 * 用户Id
 */

@property (nonatomic,copy)NSString *userId;

/**
 * 创建单例
 */

+ (instancetype) shareUser;

@end
