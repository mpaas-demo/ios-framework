//
//  MPFrameworkBizBFirstVC.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizBFirstVC.h"
#import "MPFrameworkBizBSecondVC.h"

@interface MPFrameworkBizBFirstVC ()

@end

@implementation MPFrameworkBizBFirstVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"业务B";
    
    CREATE_UI({
        BUTTON_WITH_ACTION(@"跳转业务B二级页面", openBizBSecondVC)
        BUTTON_WITH_ACTION(@"打开业务C: Push", pushAppBizC)
        BUTTON_WITH_ACTION(@"打开业务C: Present", presentAppBizC)
    })
}

- (void)openBizBSecondVC {
    MPFrameworkBizBSecondVC *vc = [[MPFrameworkBizBSecondVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)pushAppBizC {
    [DTContextGet() startApplication:@"66600003" params:@{} animated:YES];
}

- (void)presentAppBizC {
    [DTContextGet() startApplication:@"66600003" params:@{} launchMode:kDTMicroApplicationLaunchModePresentWithAnimation];
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
