//
//  MPFrameworkBizAAppDelegate.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizAAppDelegate.h"
#import "MPFrameworkBizAVC.h"


@interface MPFrameworkBizAAppDelegate ()

@property (nonatomic, strong) MPFrameworkBizAVC* rootVC;

@end

@implementation MPFrameworkBizAAppDelegate

- (UIViewController *)rootControllerInApplication:(DTMicroApplication *)application {
    return self.rootVC;
}

- (void)applicationDidCreate:(DTMicroApplication *)application {
    self.rootVC = [[MPFrameworkBizAVC alloc] init];
}

@end

