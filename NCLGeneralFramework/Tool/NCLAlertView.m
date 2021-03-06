//
//  NCLAlertView.m
//  NCLGeneralFramework
//
//  Created by ioi on 16/8/23.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "NCLAlertView.h"
#define iOS8_0 [[[UIDevice currentDevice] systemVersion] doubleValue] >= 8.0


@interface NCLAlertView () <UIAlertViewDelegate>
{
    NSMutableArray *_arrayTitles;
    NSMutableArray *_arrayActions;
}

//iOS8.0之后会使用UIAlertController，所以需要使用调用该类的ViewController
@property (nonatomic, weak) UIViewController *sender;

@end

@implementation NCLAlertView

//重写该方法，保证该对象不会被释放，如果被释放，iOS8以下的UIAlertView的回调时候会崩溃
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    static NCLAlertView *_shareAlertView = nil;
    dispatch_once(&onceToken, ^{
        if (_shareAlertView == nil) {
            _shareAlertView = [super allocWithZone:zone];
        }
    });
    return _shareAlertView;
}

- (instancetype)init
{
    if (self = [super init]) {
        _arrayTitles = [NSMutableArray array];
        _arrayActions = [NSMutableArray array];
    }
    return self;
}

- (instancetype)initWithTitle:(NSString *)title message:(NSString *)message
{
    if ([self init]) {
        _title = title;
        _message = message;
    }
    return self;
}

- (void)setTitle:(NSString *)title message:(NSString *)message
{
    _title = title;
    _message = message;
}

- (void)addBtnTitle:(NSString *)title action:(ClickAction)action
{
    [_arrayTitles addObject:title];
    [_arrayActions addObject:action];
}

- (void)showAlertWithSender:(UIViewController *)sender
{
    if (_arrayTitles.count == 0) {
        return;
    }
    self.sender = sender;
    if (iOS8_0) {
        [self showAlertController];
    } else {
        [self showAlertView];
    }
}

- (void)showAlertController
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:_title message:_message preferredStyle:UIAlertControllerStyleAlert];
    for (int i = 0; i < _arrayTitles.count; i++) {
        UIAlertAction *action = [UIAlertAction actionWithTitle:_arrayTitles[i] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            ClickAction ac = _arrayActions[i];
            ac();
        }];
        [alert addAction:action];
    }
    if (_sender) {
        [_sender showDetailViewController:alert sender:nil];
    }
}

- (void)showAlertView
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:_title message:_message delegate:self cancelButtonTitle:nil otherButtonTitles: nil];
    for (NSString *title in _arrayTitles) {
        [alert addButtonWithTitle:title];
    }
    
    [alert show];
}

#pragma mark - UIAlertViewDelegate
- (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    ClickAction action = _arrayActions[buttonIndex];
    action();
}


@end
