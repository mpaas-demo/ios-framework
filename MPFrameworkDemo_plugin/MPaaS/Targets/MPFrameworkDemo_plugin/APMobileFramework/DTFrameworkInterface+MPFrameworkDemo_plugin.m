//
//  DTFrameworkInterface+MPFrameworkDemo_plugin.m
//  MPFrameworkDemo_plugin
//
//  Created by vivi.yw on 2020/08/26.
//  Copyright © 2020 Alibaba. All rights reserved.
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
    return 1800;
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

- (void)application:(UIApplication *)application beforeDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{
    // Init mPaas Service
}

- (void)application:(UIApplication *)application afterDidFinishLaunchingWithOptions:(NSDictionary *)launchOptions 
{
    // Init mPaas Service
}

@end

#pragma clang diagnostic pop
