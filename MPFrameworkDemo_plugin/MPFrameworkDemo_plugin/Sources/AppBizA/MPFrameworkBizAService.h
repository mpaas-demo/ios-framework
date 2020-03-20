//
//  MPFrameworkBizAService.h
//  MPAbcBizA
//
//  Created by shifei.wkp on 2018/9/10.
//  Copyright © 2018年 alipay. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MPFrameworkBizAService <DTService>

- (NSString *)getWeatherForToday;

@end


@interface MPFrameworkBizAServiceImpl : NSObject <MPFrameworkBizAService>

@end
