//
//  NSString+StringSize.m
//  DuoPai
//
//  Created by yxw on 15/8/25.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

#import "NSString+StringSize.h"

@implementation NSString (StringSize)

- (CGSize)getSizeWithFont:(UIFont *)font
{
    if ([self respondsToSelector:@selector(sizeWithAttributes:)]) {
        NSDictionary *attributes = @{NSFontAttributeName:font};
        return [self sizeWithAttributes:attributes];
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    return [self sizeWithFont:font];
#pragma clang diagnostic pop
}

- (CGSize)getSizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    CGSize constrainedSize = CGSizeMake(width, MAXFLOAT);
    return [self getSizeWithFont:font constrainedToSize:constrainedSize lineBreakMode:lineBreakMode];
}

- (CGSize)getSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)constrainedSize
{
    NSLineBreakMode lineBreakMode = NSLineBreakByWordWrapping;
    return [self getSizeWithFont:font constrainedToSize:constrainedSize lineBreakMode:lineBreakMode];
}

- (CGSize)getSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)constrainedSize lineBreakMode:(NSLineBreakMode)lineBreakMode
{
    if ([self respondsToSelector:@selector(boundingRectWithSize:options:attributes:context:)]) {
        NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
        paragraphStyle.lineBreakMode = lineBreakMode;
        NSDictionary *attributes = @{NSFontAttributeName:font, NSParagraphStyleAttributeName:paragraphStyle};
        CGRect boundingRect = [self boundingRectWithSize:constrainedSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil];
        return CGSizeMake(ceilf(boundingRect.size.width), ceilf(boundingRect.size.height));
    }
    
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
    return [self sizeWithFont:font constrainedToSize:constrainedSize lineBreakMode:lineBreakMode];
#pragma clang diagnostic pop
}

@end
