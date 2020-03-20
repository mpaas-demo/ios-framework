//
//  MPFrameworkBizBSecondVC.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizBSecondVC.h"

@interface MPFrameworkBizBSecondVC ()

@end

@implementation MPFrameworkBizBSecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"业务B二级页面";

    CREATE_UI({
        BUTTON_WITH_ACTION(@"打开业务C: Push", pushAppBizC)
        BUTTON_WITH_ACTION(@"打开业务C: Present", presentAppBizC)
        BUTTON_WITH_ACTION(@"返回业务B上一级页面", popToFirstVC)
        BUTTON_WITH_ACTION(@"返回业务A", popToAppBizA)
    })
}

- (void)pushAppBizC {
    [DTContextGet() startApplication:@"66600003" params:@{} animated:YES];
}

- (void)presentAppBizC{
    [DTContextGet() startApplication:@"66600003" params:@{} launchMode:kDTMicroApplicationLaunchModePresentWithAnimation];
}

- (void)popToFirstVC {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)popToAppBizA {
    [DTContextGet() startApplication:@"66600001" params:@{} launchMode:kDTMicroApplicationLaunchModePushWithAnimation];
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
