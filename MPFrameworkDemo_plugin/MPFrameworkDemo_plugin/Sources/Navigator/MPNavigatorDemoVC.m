//
//  MPNavigatorDemoVC.m
//  MPFrameworkDemo
//
//  Created by yangwei on 2019/2/20.
//  Copyright © 2019年 alipay. All rights reserved.
//

#import "MPNavigatorDemoVC.h"
#import "MPNavigatorScrollVC.h"
#import "AUDoubleTitleView.h"

@interface MPNavigatorDemoVC ()

@end

@implementation MPNavigatorDemoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title  = @"定制导航栏";
    self.view.backgroundColor = [UIColor grayColor];
    
    CREATE_UI({
        BUTTON_WITH_ACTION(@"隐藏导航栏", gotoHideNavigator)
        BUTTON_WITH_ACTION(@"显示导航栏", gotoShowNavigator)
        BUTTON_WITH_ACTION(@"修改导航栏背景颜色", gotoUpdateBackgroundColor)
        BUTTON_WITH_ACTION(@"修改状态栏颜色", gotoUpdateStatusBarStyle)
        BUTTON_WITH_ACTION(@"修改默认返回按钮文案颜色", gotoUpdateBackTitleColor)
        BUTTON_WITH_ACTION(@"修改默认返回按钮返回箭头样式", gotoUpdateBackImage)
        BUTTON_WITH_ACTION(@"重新设置返回按钮样式", gotoUpdateBackItem)
        BUTTON_WITH_ACTION(@"修改标题颜色", gotoUpdateTitleColor)
        BUTTON_WITH_ACTION(@"修改标题样式：上下主副标题", gotoTwoTitle)
        BUTTON_WITH_ACTION(@"修改标题样式：图片", gotoTitleImage)
        BUTTON_WITH_ACTION(@"设置右侧单按钮", gotoSetOptionMenu)
        BUTTON_WITH_ACTION(@"设置右侧双按钮", gotoSetTwoOptionMenu)
        BUTTON_WITH_ACTION(@"透明导航栏", gotoTransparency)
        BUTTON_WITH_ACTION(@"不透明导航栏", gotoOpaque)
        BUTTON_WITH_ACTION(@"导航栏滑动渐变", gotoScrollToOpaque)
    })

}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    // 需在页面显示前设置的右侧按钮
    self.navigationItem.rightBarButtonItem = [AUBarButtonItem barButtonItemWithImageType:AUBarButtonImageTypeSetting target:self action:@selector(onClickRightItem)];
}

- (void)onClickRightItem
{
    
}

#pragma mark DTNavigationBarAppearanceProtocol：进入页面时修改，H5需通过启动参数设置
- (UIColor *)opaqueNavigationBarColor
{
    // 设置当前页面导航栏背景为红色
    return [UIColor redColor];
    
//    // 设置当前页面导航栏透明
//    return [UIColor colorWithRGB:0xff0000 alpha:0];
}

- (BOOL)autohideNavigationBar
{
    // 设置当前页面导航栏是否隐藏
    return NO;
}

- (UIStatusBarStyle)customStatusBarStytle
{
    // 设置当前页面状态栏样式
    return UIStatusBarStyleDefault;
}

- (UIColor *)customNavigationBarBackButtonTitleColor
{
    // 设置当前页面返回按钮文案颜色
    return [UIColor greenColor];
}

- (UIImage *)customNavigationBarBackButtonImage
{
    // 设置当前页面返回按钮图片
    return APCommonUILoadImage(@"back_button_normal_white");
}

- (UIColor *)customNavigationBarTitleColor
{
    // 设置当前页面标题颜色
    return [UIColor greenColor];
}

#pragma mark 页面出现后动态控制修改
- (void)gotoHideNavigator
{
    // 隐藏导航栏
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)gotoShowNavigator
{
    // 显示导航栏
    [self.navigationController.navigationBar setHidden:NO];
}

- (void)gotoTransparency
{
    // 透明导航栏
    [self.navigationController.navigationBar setNavigationBarTranslucentStyle];
}


- (void)gotoUpdateBackgroundColor
{
    // 修改导航栏背景颜色
    [self.navigationController.navigationBar setNavigationBarStyleWithColor:[UIColor whiteColor] translucent:NO];
    [self.navigationController.navigationBar setNavigationBarBottomLineColor:[UIColor whiteColor]];
}

- (void)gotoUpdateStatusBarStyle
{
    // 修改状态栏颜色
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)gotoUpdateBackTitleColor
{
    // 修改默认返回按钮文案颜色
    NSArray *leftBarButtonItems = self.navigationItem.leftBarButtonItems;
    if ([leftBarButtonItems count] == 1) {
        if (leftBarButtonItems[0] && [leftBarButtonItems[0] isKindOfClass:[AUBarButtonItem class]]) {
            AUBarButtonItem *backItem = leftBarButtonItems[0];
            backItem.titleColor = [UIColor blackColor];
        }
    }
}

- (void)gotoUpdateBackImage
{
    // 修改默认返回按钮返回箭头样式
    NSArray *leftBarButtonItems = self.navigationItem.leftBarButtonItems;
    if ([leftBarButtonItems count] == 1) {
        if (leftBarButtonItems[0] && [leftBarButtonItems[0] isKindOfClass:[AUBarButtonItem class]]) {
            AUBarButtonItem *backItem = leftBarButtonItems[0];
            backItem.backButtonImage = APCommonUILoadImage(@"back_button_normal");
        }
    }
}

- (void)gotoUpdateBackItem
{
    // 重新设置返回按钮样式
    self.navigationItem.leftBarButtonItem = [AUBarButtonItem barButtonItemWithImageType:AUBarButtonImageTypeDelete target:self action:@selector(onClickBack)];
}

- (void)onClickBack
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)gotoUpdateTitleColor
{
    // 修改标题颜色
    [self.navigationController.navigationBar setNavigationBarTitleTextAttributesWithTextColor:[UIColor blackColor]];
}

- (void)gotoTwoTitle
{
    // 修改标题样式：上下主副标题
    self.navigationItem.titleView = [[AUDoubleTitleView alloc] initWithTitle:@"主标题" detailTitle:@"副标题"];
}

- (void)gotoTitleImage
{
    // 修改标题样式：图片
    UIImageView *imageView = [[UIImageView alloc] initWithImage:APCommonUILoadImage(@"ilustration_ap_expection_alert")];
    imageView.frame = CGRectMake(0, 0, self.self.view.width-100, 64);
    self.navigationItem.titleView = imageView;
}

- (void)gotoSetOptionMenu
{
    // 设置右侧单按钮
    self.navigationItem.rightBarButtonItem = [AUBarButtonItem barButtonItemWithImageType:AUBarButtonImageTypeGroupChat target:self action:@selector(onClickRightItem)];
}

- (void)gotoSetTwoOptionMenu
{
    // 设置右侧双按钮
    AUBarButtonItem *item1 = [AUBarButtonItem barButtonItemWithImageType:AUBarButtonImageTypeGroupChat target:self action:@selector(onClickRightItem)];
    AUBarButtonItem *item2 = [AUBarButtonItem barButtonItemWithImageType:AUBarButtonImageTypeHelp target:self action:@selector(onClickRightItem)];
    self.navigationItem.rightBarButtonItems = @[item1, item2];
}

- (void)gotoOpaque
{
    UIColor *defaultColor = [self.navigationController.navigationBar getNavigationBarCurrentColor];
    [self.navigationController.navigationBar setNavigationBarStyleWithColor:defaultColor translucent:YES];
}

- (void)gotoScrollToOpaque
{
    MPNavigatorScrollVC *vc = [[MPNavigatorScrollVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
@end
