//
//  CardActivationAppDelegate.m
//  SJMobileBank
//
//  Created by 高鹏飞 on 2019/10/6.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "CardActivationAppDelegate.h"
//#import "CardActivationAppViewController.h"
#import "MPFrameworkBizAVC.h"

@interface CardActivationAppDelegate ()
{
}

@property(nonatomic, strong) UIViewController *rootController;

@end

@implementation CardActivationAppDelegate

- (UIViewController *)rootControllerInApplication:(DTMicroApplication *)application
{
    return self.rootController;
}

- (void)applicationDidCreate:(DTMicroApplication *)application
{
}

- (void)application:(DTMicroApplication *)application willStartLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.rootController = [[MPFrameworkBizAVC alloc] init];
}

- (void)application:(DTMicroApplication *)application willResumeWithOptions:(NSDictionary *)options
{
}

- (void)applicationDidFinishLaunching:(DTMicroApplication *)application
{
}

- (void)applicationWillPause:(DTMicroApplication *)application
{
}

- (void)applicationWillTerminate:(DTMicroApplication *)application
{
}

- (void)applicationDidResume:(DTMicroApplication *)application
{
}


@end
