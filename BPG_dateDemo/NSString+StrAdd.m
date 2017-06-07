//
//  NSString+StrAdd.m
//  BPG_dateDemo
//
//  Created by baipeng on 2017/6/7.
//  Copyright © 2017年 BPG. All rights reserved.
//

#import "NSString+StrAdd.h"

@implementation NSString (StrAdd)
/** 沙盒目录 Document */
+ (NSString *)documentPath
{
    // NSUserDomainMask： 将搜索限制在应用的沙盒内
    NSArray *filePaths = NSSearchPathForDirectoriesInDomains (NSDocumentDirectory, NSUserDomainMask, YES);
    return [filePaths objectAtIndex: 0];
}

/** 沙盒目录 Library */
+ (NSString *)libraryPath {

    // NSUserDomainMask： 将搜索限制在应用的沙盒内
    NSArray *filePaths = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, NSUserDomainMask, YES);
    return [filePaths objectAtIndex:0];
}

//cache路径 (Library/Caches)
+ (NSString *)cachePath
{
    NSArray* paths = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES);
    NSString *cacheDirectory = [paths objectAtIndex:0];
    return cacheDirectory;
}
//temp l临时路径
+ (NSString *)geTempPath {

    NSString *filePath = NSTemporaryDirectory();
    return filePath;
}




#pragma mark - 获取文件 大小
+ (double) getFileSize:(NSString*) path
{
    NSFileManager * filemanager = [[NSFileManager alloc]init];
    if([filemanager fileExistsAtPath:path]){
        NSDictionary * attributes = [filemanager attributesOfItemAtPath:path error:nil];
        NSNumber *theFileSize;
        if ( (theFileSize = [attributes objectForKey:NSFileSize]) )
            return  [theFileSize doubleValue]/1024/1024;  // M
        else
            return -1;
    }
    else
    {
        return -1;
    }
}

+ (BOOL)isFileExistInDocunmentPath:(NSString *)fileName
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *path = [paths objectAtIndex:0];
    NSString *filePath = [path stringByAppendingPathComponent:fileName];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL result = [fileManager fileExistsAtPath:filePath];
    return result;
}

+ (BOOL)isFileExistInMainBundle:(NSString *)fileName
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:fileName ofType:nil];
    NSFileManager *fileManager = [NSFileManager defaultManager];
    BOOL result = [fileManager fileExistsAtPath:filePath];
    return result;
}



@end
