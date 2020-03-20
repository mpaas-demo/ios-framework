//
//  APLogAdditions+MPFrameworkDemo_pod.m
//  MPFrameworkDemo_pod
//
//  Created by yangwei on 2020/02/17. All rights reserved.
//

#import "APLogAdditions+MPFrameworkDemo_pod.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation APLogAdditions (MPFrameworkDemo_pod)

- (NSString*)logServerURL
{
    return @"https://cn-hangzhou-mas-log.cloud.alipay.com/loggw/logUpload.do";
}

- (NSArray*)defaultUploadLogTypes
{
    return @[@(APLogTypeBehavior), @(APLogTypeCrash), @(APLogTypeAuto), @(APLogTypeMonitor), @(APLogTypeKeyBizTrace), @(APLogTypePerformance)];
}

- (NSString *)platformID
{
    return @"570DA89281533_IOS-default";
}

@end

#pragma clang diagnostic pop

