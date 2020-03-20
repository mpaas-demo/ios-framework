//
//  MPFrameworkBizCVC.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizCVC.h"

@interface MPFrameworkBizCVC ()

@end

@implementation MPFrameworkBizCVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    CREATE_UI({
        BUTTON_WITH_ACTION(@"打开业务B: Push", pushAppBizB)
        BUTTON_WITH_ACTION(@"打开业务B: Present", presentAppBizB)
        BUTTON_WITH_ACTION(@"关闭业务B", exitAppBizB)
        BUTTON_WITH_ACTION(@"关闭当前业务C", exitAppBizC)
        BUTTON_WITH_ACTION(@"关闭并返回首页", exitToLauncher)
    })
}

- (void)pushAppBizB {
    [DTContextGet() startApplication:@"66600002" params:@{} launchMode:kDTMicroApplicationLaunchModePushWithAnimation];
}

- (void)presentAppBizB {
    [DTContextGet() startApplication:@"66600002" params:@{} launchMode:kDTMicroApplicationLaunchModePresentWithAnimation];
}

- (void)exitAppBizB {
    DTMicroApplication *appBizB = [DTContextGet() findApplicationByName:@"66600002"];
    [appBizB forceExit];
}

- (void)exitAppBizC {
    [DTContextGet().currentApplication exitAnimated:YES];
}

- (void)exitToLauncher {
//    [DTContextGet() startApplication:@"Launcher" params:@{@"index":@0} animated:YES];
    [DTContextGet() startApplication:@"Launcher" params:nil animated:kDTMicroApplicationLaunchModePushNoAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
