//
//  ViewController.m
//  BPG_dateDemo
//
//  Created by baipeng on 2017/6/6.
//  Copyright © 2017年 BPG. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+DateExtension.h"
#import "NSString+StrAdd.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
#if  0
    //获取当前时间 2017年06月07日 15:45
    NSString *startTimeStr = [NSDate stringFromDate:[NSDate date] Format:dateYMdHmTimeFormat];
    NSLog(@"startTimeStr:%@",startTimeStr);


    //字符串日期转date   2017-06-07 07:45:00 +0000  减了8个小时
     NSDate *startTimeDate = [NSDate date:
                                [NSDate conversionOriginalTime:startTimeStr
                                            withOriginalFormat:dateYMdHmTimeFormat
                                             withResultsFormat:dateYMdHmsSZTimeFormat]
                                WithFormat:dateYMdHmsSZTimeFormat];
    NSLog(@"startTimeDate:%@",startTimeDate);


    //自定义日期date 转自字符串  2017-06-07 15:45:00.000 +0800  8个小时自动加上
    NSString *tmpStr = [NSDate stringFromDate:startTimeDate Format:dateYMdHmsSZTimeFormat];
    NSLog(@"tmpStr:%@",tmpStr);

    //时间戳  1496821560000  毫秒
    NSString *startStamp = [NSDate getTimeStampFromOriginalTime:startTimeDate];
    NSLog(@"startStamp:%@",startStamp);

    //时间戳 转 字符串日期2017年06月07日 15:46
    NSString *todayDate = [NSDate dealTime:startStamp dateFormatter:dateYMdHmTimeFormat];
    NSLog(@"todayDate:%@",todayDate);

    NSLog(@"----- %@",[NSDate dealLimitedTimeWithDuration:@"1496825220000"
                                          withDefaultZero:@"结束了"
                                          withFirstString:@"距离结束还有 "]);

#endif 

    NSString *documentPath = [NSString documentPath];
    NSLog(@"documentPath-- %@",documentPath);

    NSString *libraryPath = [NSString libraryPath];
    NSLog(@"libraryPath-- %@",libraryPath);


    NSString *cachePath = [NSString cachePath];
    NSLog(@"cachePath-- %@",cachePath);


    NSString *geTempPath = [NSString geTempPath];
    NSLog(@"geTempPath-- %@",geTempPath);


    double getFileSize = [NSString getFileSize:[NSString documentPath]];
    NSLog(@"getFileSize-- %f",getFileSize);


    NSLog(@"----%d",[NSString isFileExistInDocunmentPath:@"logo.png"]);


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
