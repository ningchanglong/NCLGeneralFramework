//
//  NCLAlertView.h
//  NCLGeneralFramework
//
//  Created by ioi on 16/8/23.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ClickAction)();
@interface NCLAlertView : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *message;

/**
 * @param title    标题
 * @param message  提示内容
 */
- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message;

- (void)setTitle:(NSString *)title message:(NSString *)message;

/**
 * @brief 添加按钮及事件，多个按钮便多次调用，按钮按照添加顺序显示
 */
- (void)addBtnTitle:(NSString *)title action:(ClickAction)action;

/**
 * @brief 显示提示框
 */
- (void)showAlertWithSender:(UIViewController *)sender;

@end
