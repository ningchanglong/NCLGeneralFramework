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

// 开放平台登录https://open.weixin.qq.com的开发者中心获取APPID
#define WX_APPID @"wxe6effc63c67bff3b"
// 开放平台登录https://open.weixin.qq.com的开发者中心获取AppSecret。
#define WX_APPSecret @"30500f99bbac21abc74a30db6d69e648"
// 微信支付商户号
#define MCH_ID  @"1389934402"
// 安全校验码（MD5）密钥，商户平台登录账户和密码登录http://pay.weixin.qq.com
// 平台设置的“API密钥”，为了安全，请设置为以数字和字母组成的32字符串。
#define WX_PartnerKey @"RQNBG8W7fcXgKVspwbY39W8jkONfTxks"

/**
 * 合作者身份ID
 */
#define AliPayPartnerID @"2088421760802642"

/**
 * 收款账号
 */
#define AliPaySellerID @"3174999182@qq.com"

/**
 * 公钥
 */
#define AliPayPartnerPrivKey @"MIICeAIBADANBgkqhkiG9w0BAQEFAASCAmIwggJeAgEAAoGBAObt+qNgBL+d6cauXoP3hg6thSyA63oX4mD1xYx9X25q55k/NvsEJ3cwr+9LEJ6EOsA1xOyQtjzgI+ne9czw/2TO99x+AOKVRygX1slPXIBhHiQkb4SWClXtix4fgruQ5wumCwtxit7q+7nKx3J2dgQX9zCHmfTjxH82VnPXP2AjAgMBAAECgYEAo6RWLPm4w7R6WeFsdqWrqLELowrEUyOjtsPStoiNXKiC79Sc+GnsMYkd0ztlTn8zRsuTfXPav+6xZGQr2Iua3hM3KTFCec6pB37nU0NlbdIDCbzFo4AQ4DF8Bl2Hlp/12MPSGX881v9Coub0YyxodPUpGs3UPpfNOEeiDSkIzOECQQDzeV17wGjuB2lK/PZc3NoDPIok0sRIoZwsYDy4mXevE7jBrHN58zuBX3KTwkRAz/K4xWN/6KhIKENNhHlwbR9xAkEA8s9mIQ/0d9rDaheceybpGNhZAM/a2JgoesSPiOPDUdFV2TlnyYShYL+jnvzKO5qmVEkDgO/YhchHBIdyTmbW0wJBAKIk2DH7AKZMfz22W2eamQIAxkshpiBsqDIRYT7azY7mBmvMqhaz+pP8+bQXcxbqpc2RfuMHEVMEpVWxfKJ3ubECQDgeXUFo+Zy18BJWMLF59cfrQO7iG3eR+1EcmvwNgDgpxMi27tjxkYbV5BA75tXN0YGLeobTaFzLRDa0w2OBe0cCQQCN7y8s5Hbb1NsRFq+LS6C0qM3BMvVrPVrn9lYZV/soAhuydyzDyisJDYipyE0mernjT71rKS+mr8Tu9Sy6ZwjH"
#endif /* Config_h */
