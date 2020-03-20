//
//  MPFrameworkBizBAppDelegate.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizBAppDelegate.h"
#import "MPFrameworkBizBFirstVC.h"

@interface MPFrameworkBizBAppDelegate ()

@property (nonatomic, strong) MPFrameworkBizBFirstVC* rootVC;

@end

@implementation MPFrameworkBizBAppDelegate

- (UIViewController *)rootControllerInApplication:(DTMicroApplication *)application {
    return self.rootVC;
}

- (void)applicationDidCreate:(DTMicroApplication *)application {
    self.rootVC = [[MPFrameworkBizBFirstVC alloc] init];
}

@end
