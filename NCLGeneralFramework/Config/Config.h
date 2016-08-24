//
//  Config.h
//  NCLBasicFramework
//
//  Created by ioi on 16/7/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#ifndef Config_h
#define Config_h

#define kScreenW [UIScreen mainScreen].bounds.size.width
#define kScreenH [UIScreen mainScreen].bounds.size.height

#define Main_Color [UIColor colorWithRed:(253)/255.0 green:(163)/255.0 blue:(19)/255.0 alpha:1.0]


#define kUserDefaults [NSUserDefaults standardUserDefaults]
#define COLOR_MAIN_BAR [UIColor colorWithRed:85/255.0f green:133/255.0f blue:193/255.0f alpha:1]

#define CachePath [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) firstObject]

/**
 * 合作者身份ID
 */
#define AliPayPartnerID @"2088221758658893"

/**
 * 收款账号
 */
#define AliPaySellerID @"aiouai@yeah.net"

/**
 * 公钥
 */
#define AliPayPartnerPrivKey @"MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBANexaHMLakMLQqkUCdsm5wq/+C3LEtTgbx0MoNqZ8T2Tcbjy63vdQFpByl9G29nDwCQ3skE8BmwyzYupdtcJx43zE5OEFGgNr92lQ4oNekelStzdF87R0oepwP+Q9pC/rbl4NSaW4SS12pJ+syObT+wY4h4oO8lK3zewrVSVpkdNAgMBAAECgYBcZkCTgCFeZTWCTvZF7q1tOn2ryGHh1d9jt2Q1IVtqAH7oNxBP+KE3yRVTqXxHFod6PG3dakRqF31cRhWF20ejqp+tdMTaFUoXl1VY8mmnefQZ5QL3Dwm62GsKFzOgojjlpE2Oh8DWb1I4gAfI9sMVCYkDmOrwTVvbm2U9S5ertQJBAP/AmAMouw6N7kcu6qz86Iuz0x/UgoxJcM7ecoTDQcjAXXF+TX6Xj8heG1xW4cEqVfZfKirWPAt+91bFC9mnnl8CQQDX5uH3ySLxN1r2DIXY9Pzz5fNJ6CiXVsGwAITEE4E+tjZiLe+wAXQG5K57FtkH4BZs74sVN+Aho6oMvU16O6HTAkEA/6ieDOJlg1ocLKpYy46SRD0ButrrmaM8kn9KCS9LDoxFnNN+UiLeB5UTUs5DJJ7Wic99zo6UPYWxaNrXSr/FjwJAeMzxcE/1IhxD49m75lmlUt490wN3+r2LH+waXQ9AyJLxONvU+ZjGj7jSO4LcKkDiq08YdeXOnWPSmNAuko7dCwJAFziKt0z0ZFYOGT2sbGi9S7WZxvYSGaY3wqMKX3OPJGnW9zZWU55R3R8Tyi+5K0KkGZiqOFhe2z+iMhLSUif8qg=="
#endif /* Config_h */
