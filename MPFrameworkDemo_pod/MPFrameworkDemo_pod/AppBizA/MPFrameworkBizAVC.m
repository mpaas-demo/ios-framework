//
//  MPFrameworkBizAVC.m
//  MPaaSDemo_abc
//
//  Created by shifei.wkp on 2018/9/6.
//  Copyright © 2018年 Alibaba. All rights reserved.
//

#import "MPFrameworkBizAVC.h"

@interface MPFrameworkBizAVC ()

@end

@implementation MPFrameworkBizAVC

//BIND_MODEL(NSDictionary)

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"业务A";
    
    CREATE_UI({
        BUTTON_WITH_ACTION(@"打开业务B: Push", pushAppBizB)
        BUTTON_WITH_ACTION(@"打开业务B: Present", presentBizB)
    })
}

//- (void)viewDidAppear:(BOOL)animated {
//    [super viewDidAppear:animated];
//    NSString *msg = @"sdss";
//    if (msg.length > 0) {
//        AUNoticeDialog *alert = [[AUNoticeDialog alloc] initWithTitle:@"传递参数" message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
//        [alert show];
//    }
//}

- (void)pushAppBizB {
    [DTContextGet() startApplication:@"66600002" params:@{} animated:YES];
}

- (void)presentBizB {
    [DTContextGet() startApplication:@"66600002" params:@{} launchMode:kDTMicroApplicationLaunchModePresentWithAnimation];
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
