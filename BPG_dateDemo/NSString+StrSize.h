//
//  NSString+StrSize.h
//  BPG_dateDemo
//
//  Created by baipeng on 2017/6/6.
//  Copyright © 2017年 BPG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (StrSize)

/**
 计算字符长宽
 @param font font description
 @param maxSize maxSize description
 @return 字符长宽
 */
- (CGSize)sizeWithFont:(UIFont *)font maxSize:(CGSize)maxSize;
@end
