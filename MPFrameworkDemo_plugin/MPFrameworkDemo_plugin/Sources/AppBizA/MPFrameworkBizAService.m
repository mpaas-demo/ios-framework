//
//  MPFrameworkBizAService.m
//  MPAbcBizA
//
//  Created by shifei.wkp on 2018/9/10.
//  Copyright © 2018年 alipay. All rights reserved.
//

#import "MPFrameworkBizAService.h"

@implementation MPFrameworkBizAServiceImpl

- (void)start {
    NSLog(@"Start service MPFrameworkBizAService");
}

- (NSString *)getWeatherForToday {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"YYYY年MM月dd日";
    return [NSString stringWithFormat:@"%@ 天气 晴 ☀️", [formatter stringFromDate:[NSDate date]]];
}

@end
