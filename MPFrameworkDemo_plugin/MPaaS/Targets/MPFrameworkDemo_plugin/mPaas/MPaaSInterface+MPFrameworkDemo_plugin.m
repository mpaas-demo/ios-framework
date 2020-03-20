//
//  MPaaSInterface+MPFrameworkDemo_plugin.m
//  MPFrameworkDemo_plugin
//
//  Created by vivi.yw on 2019/03/28.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "MPaaSInterface+MPFrameworkDemo_plugin.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation MPaaSInterface (MPFrameworkDemo_plugin)

- (BOOL)enableSettingService
{
    return NO;
}

- (NSString *)userId
{
    return nil;
}

@end

#pragma clang diagnostic pop
