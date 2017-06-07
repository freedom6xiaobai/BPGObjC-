//
//  NSString+StrAdd.h
//  BPG_dateDemo
//
//  Created by baipeng on 2017/6/7.
//  Copyright © 2017年 BPG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (StrAdd)
/** 沙盒目录 Document */
+ (NSString *)documentPath;
/** 沙盒目录 Library */
+ (NSString *)libraryPath;
/** cache路径 (Library/Caches) */
+ (NSString *)cachePath;
/** 获取 temp 缓存路径 手动删除清空内存*/
+ (NSString *)geTempPath;
/** 获取文件 大小 */
+ (double) getFileSize:(NSString*) path;
/** 查看沙盒Document中是否存在fileName 文件*/
+ (BOOL)isFileExistInDocunmentPath:(NSString *)fileName;
/** 查看真个应用程序资源bundle中是否包含fileName文件 */
+ (BOOL)isFileExistInMainBundle:(NSString *)fileName;

@end
