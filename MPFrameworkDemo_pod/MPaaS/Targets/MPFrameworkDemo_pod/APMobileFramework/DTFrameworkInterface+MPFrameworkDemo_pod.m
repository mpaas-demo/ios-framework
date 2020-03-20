//
//  DTFrameworkInterface+MPFrameworkDemo_pod.m
//  MPFrameworkDemo_pod
//
//  Created by yangwei on 2019/03/27. All rights reserved.
//

#import "DTFrameworkInterface+MPFrameworkDemo_pod.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation DTFrameworkInterface (MPFrameworkDemo_pod)

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

