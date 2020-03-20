//
//  DTFrameworkInterface+MPFrameworkDemo_plugin.m
//  MPFrameworkDemo_plugin
//
//  Created by vivi.yw on 2019/03/28.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "DTFrameworkInterface+MPFrameworkDemo_plugin.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation DTFrameworkInterface (MPFrameworkDemo_plugin)

- (BOOL)shouldLogReportActive
{
    return YES;
}

- (NSTimeInterval)logReportActiveMinInterval
{
    return 0;
}

- (BOOL)shouldLogStartupConsumption
{
    return YES;
}

- (BOOL)shouldAutoactivateBandageKit
{
    return YES;
}

- (BOOL)shouldAutoactivateShareKit
{
    return YES;
}

- (DTNavigationBarBackTextStyle)navigationBarBackTextStyle
{
    return DTNavigationBarBackTextStyleAlipay;
}

@end

#pragma clang diagnostic pop
