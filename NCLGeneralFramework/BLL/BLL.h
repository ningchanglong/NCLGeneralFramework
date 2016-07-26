//
//  BLL.h
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFAppDotNetAPIClient.h"
@interface BLL : NSObject

/**
 *獲取首頁信息
 */
+(NSURLSessionDataTask *)getHomeInfoListWithResultBlock:(void(^)(NSDictionary * model ,NSError *error))block;
@end
