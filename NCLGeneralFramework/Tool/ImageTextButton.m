//
//  ImageTextButton.m
//  NCLGeneralFramework
//
//  Created by ioi on 16/9/21.
//  Copyright © 2016年 ncl. All rights reserved.
//

#import "ImageTextButton.h"

@implementation ImageTextButton

-(void)layoutSubviews {
    [super layoutSubviews];
    //上下垂直
    // Center image
    CGPoint center = self.imageView.center;
    center.x = self.frame.size.width/2;
    center.y = self.imageView.frame.size.height/2;
    self.imageView.center = center;
    
    //Center text
    CGRect newFrame = [self titleLabel].frame;
    newFrame.origin.x = 0;
    newFrame.origin.y = self.imageView.frame.size.height + 5;
    newFrame.size.width = self.frame.size.width;
    
    self.titleLabel.frame = newFrame;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    //    //图左字右
    //    CGPoint center = self.imageView.center;
    //    center.x = self.frame.size.width/4;
    //    center.y = self.imageView.frame.size.height/2;
    //    self.imageView.center = center;
    //
    //    CGRect newFrame = [self titleLabel].frame;
    //    newFrame.origin.x = self.imageView.frame.size.width + 5;
    //    newFrame.origin.y = self.imageView.frame.size.height/2 - 10;
    //    newFrame.size.width = self.frame.size.width - self.imageView.frame.size.width - 5;
    //
    //    self.titleLabel.frame = newFrame;
    //    self.titleLabel.textAlignment = NSTextAlignmentCenter;
}

@end
