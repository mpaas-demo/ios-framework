//
//  MPFrameworkBizCAppDelegate.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizCAppDelegate.h"
#import "MPFrameworkBizCVC.h"

@interface MPFrameworkBizCAppDelegate ()

@property (nonatomic, strong) MPFrameworkBizCVC* rootVC;

@end

@implementation MPFrameworkBizCAppDelegate

- (UIViewController *)rootControllerInApplication:(DTMicroApplication *)application {
    return self.rootVC;
}

- (void)applicationDidCreate:(DTMicroApplication *)application {
    self.rootVC = [[MPFrameworkBizCVC alloc] init];
}

@end
