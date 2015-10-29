//
//  NSString+StringSize.h
//  DuoPai
//
//  Created by yxw on 15/8/25.
//  Copyright (c) 2015年 Jacky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (StringSize)

/**
 *  根据系统版本调用字符串计算Size的方法
 *
 *  @param font            字体大小
 *
 *  @return 计算得到的Size
 */
- (CGSize)getSizeWithFont:(UIFont *)font;

/**
 *  根据系统版本调用字符串计算Size的方法
 *
 *  @param font            字体大小
 *  @param width           参考的width
 *  @param lineBreakMode   断行模式
 *
 *  @return 计算得到的Size
 */
- (CGSize)getSizeWithFont:(UIFont *)font forWidth:(CGFloat)width lineBreakMode:(NSLineBreakMode)lineBreakMode;

/**
 *  根据系统版本调用字符串计算Size的方法
 *
 *  @param font            字体大小
 *  @param constrainedSize 参考的Size
 *
 *  @return 计算得到的Size
 */
- (CGSize)getSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)constrainedSize;

/**
 *  根据系统版本调用字符串计算Size的方法
 *
 *  @param font            字体大小
 *  @param constrainedSize 参考的Size
 *  @param lineBreakMode   断行模式
 *
 *  @return 计算得到的Size
 */
- (CGSize)getSizeWithFont:(UIFont *)font constrainedToSize:(CGSize)constrainedSize lineBreakMode:(NSLineBreakMode)lineBreakMode;

@end
