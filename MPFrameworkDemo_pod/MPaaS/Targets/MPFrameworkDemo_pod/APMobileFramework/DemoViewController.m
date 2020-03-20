//
//  DemoViewController.m
//  test
//
//  Created by mPaaS on 16/11/21.
//  Copyright © 2016年 Alibaba. All rights reserved.
//

#import "DemoViewController.h"
#import "MPFrameworkBizAService.h"
#import "MPNavigatorDemoVC.h"

@interface DemoViewController ()

@end

@implementation DemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"移动框架";
    
    CREATE_UI({
        BUTTON_WITH_ACTION(@"打开业务A", startAppBizA)
        BUTTON_WITH_ACTION(@"业务A提供的服务", startServiceBizA)
        BUTTON_WITH_ACTION(@"导航栏定制", showNavigator)
    })
    
}

- (void)startAppBizA{
//    [DTContextGet() startApplication:@"90000000" params:@{@"title": @"业务A", @"model":@{@"message": @"Message to biz A"}} animated:YES];
    [DTContextGet() startApplication:@"90000000" params:nil launchMode:kDTMicroApplicationLaunchModePushWithAnimation];
}

- (void)startServiceBizA{
    id<MPFrameworkBizAService> bizAService = [DTContextGet() findServiceByName:@"BizAService"];
    if (bizAService) {
        NSString *msg = [bizAService getWeatherForToday];
        AUNoticeDialog *alert = [[AUNoticeDialog alloc] initWithTitle:@"服务返回数据" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
        [alert show];
    }
}

- (void)showNavigator {
    MPNavigatorDemoVC *vc = [MPNavigatorDemoVC new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
