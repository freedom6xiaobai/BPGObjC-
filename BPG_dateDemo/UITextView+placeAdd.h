//
//  UITextView+placeAdd.h
//  BPG_dateDemo
//
//  Created by baipeng on 2017/6/7.
//  Copyright © 2017年 BPG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (placeAdd)
@property (nonatomic, readonly) UILabel *placeholderLabel;
@property (nonatomic, strong) NSString *placeholder;
@property (nonatomic, strong) NSAttributedString *attributedPlaceholder;
@property (nonatomic, strong) UIColor *placeholderColor;
+ (UIColor *)defaultPlaceholderColor;
@end
