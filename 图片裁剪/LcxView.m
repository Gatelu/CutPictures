//
//  LcxView.m
//  图片裁剪
//
//  Created by Gate on 16/1/2.
//  Copyright © 2016年 Gate. All rights reserved.
//

#import "LcxView.h"

@implementation LcxView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx,CGRectMake(60, 80, 50, 50));
    CGContextClip(ctx);
    [[UIColor redColor] set];
    CGContextFillPath(ctx);
    UIImage *image = [UIImage imageNamed:@"community_home_house_128px_3915_easyicon.net"];
    [image drawAtPoint:CGPointMake(20, 30) blendMode:kCGBlendModeNormal alpha:1.0];
    
    NSData *data  = UIImagePNGRepresentation(image);
    
    [data writeToFile:@"/Users/LuChangxiang/Desktop/未命名文件夹/444.png" atomically:YES];
}


@end
