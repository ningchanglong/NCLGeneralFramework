//
//  BLL.m
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "BLL.h"

@implementation BLL


+(NSURLSessionDataTask *)getHomeInfoListWithResultBlock:(void (^)(NSDictionary *, NSError *))block
{
    return [[AFAppDotNetAPIClient sharedClient] POST:@"home/getHomeInfo" parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        //NSLog(@"%@",responseObject[@"msg"]);
        NSMutableDictionary * model = [[NSMutableDictionary alloc]init];
        [model setValuesForKeysWithDictionary:responseObject];
        if (block) {
            block(model, nil);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (block) {
            block(nil, error);
        }
    }];
    
}

@end
