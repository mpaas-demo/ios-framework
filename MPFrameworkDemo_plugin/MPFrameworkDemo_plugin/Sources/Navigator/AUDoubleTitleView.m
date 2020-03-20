//#import "AUUILoadDefine.h"//程序自动生成
#import <AntUI/AUUILoadDefine.h>
//#ifdef ANTUI_UI_TitleBar_AUDoubleTitleView//程序自动生成
//
//  APTitleView.m
//  APCommonUI
//
//  Created by yangwei on 16/4/7.
//  Copyright © 2016年 Alipay. All rights reserved.
//

#import "AUDoubleTitleView.h"

#define kNavigationBarHeight 44.0f
#define kMinClickHeightNavigationBar 24.0f

@interface AUDoubleTitleView ()

// 主标题。注意：初始化后如需修改title请使用下面接口方法，不要直接设置
@property(nonatomic, strong) UILabel *titleLabel;
// 副标题。注意：初始化后如需修改detailTitle请使用下面接口方法，不要直接设置
@property(nonatomic, strong) UIButton *detailTitleBar;

@end

@implementation AUDoubleTitleView

- (UIView *)initWithTitle:(NSString *)title detailTitle:(NSString *)detaileTitle
{
    self = [super init];
    if (self) {
        
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.text = title;
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textColor = [UIColor greenColor];//AUI_THEME_COLOR(TITLEBAR_TITLE_TEXTCOLOR);
        _titleLabel.font = [UIFont systemFontOfSize:18];//AUI_THEME_FONT(@"TITLEBAR_TITLE_TEXTSIZE_BOLD");
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_titleLabel];
        
        _detailTitleBar = [UIButton buttonWithType:UIButtonTypeCustom];
        _detailTitleBar.backgroundColor = [UIColor clearColor];
        [_detailTitleBar setTitle:detaileTitle forState:UIControlStateNormal];
        [_detailTitleBar setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        _detailTitleBar.titleLabel.font = [UIFont systemFontOfSize:16];//AUI_THEME_FONT(@"DOUBLE_TITLEBAR_DETAIL_TEXT_FONT");//AU_FONT1;
        _detailTitleBar.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:_detailTitleBar];
        
        [self displaySubviews];
    }
    
    return self;
}

- (void)displaySubviews
{
    [super layoutSubviews];
    
    CGSize titleSize = [self.titleLabel.text sizeWithAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18]}];
    CGSize detailTitleSize = [self.detailTitleBar.titleLabel.text sizeWithAttributes:@{NSFontAttributeName :
                                                                                           [UIFont systemFontOfSize:16]}];
    CGFloat width = MAX(titleSize.width, detailTitleSize.width);
    

    CGFloat yOffset = (kNavigationBarHeight - titleSize.height - detailTitleSize.height/* - 2*/)/2;
    _titleLabel.frame = CGRectMake(0, yOffset, width, titleSize.height);
    
    //导航栏最小点击热区：24x24
    _detailTitleBar.titleEdgeInsets = UIEdgeInsetsMake(kMinClickHeightNavigationBar-detailTitleSize.height-yOffset, 0, 0, 0);
    _detailTitleBar.frame = CGRectMake(0, kNavigationBarHeight-kMinClickHeightNavigationBar - 2, width, kMinClickHeightNavigationBar);
    
    self.frame = CGRectMake(0, 0, width, kNavigationBarHeight);
    self.center = CGPointMake(AUCommonUIGetScreenWidth()/2, kNavigationBarHeight/2);
}


- (void)updateTitle:(NSString *)title
{
    _titleLabel.text = title;
    [self displaySubviews];
}

- (void)updateDetailTitle:(NSString *)detailTitle
{
    [_detailTitleBar setTitle:detailTitle forState:UIControlStateNormal];
    [self displaySubviews];
}


- (void)updateTitleFont:(UIFont *)titleFont
{
    _titleLabel.font = titleFont;
    [self displaySubviews];
}

- (void)updateDetailTitleFont:(UIFont *)detailTitleFont
{
    _detailTitleBar.titleLabel.font = detailTitleFont;
    [self displaySubviews];
}




- (void)layoutSubviews
{
    [super layoutSubviews];

    if (CGRectGetWidth(_titleLabel.frame) > CGRectGetWidth(self.frame)) {
        CGRect rect = _titleLabel.frame;
        rect.size.width = CGRectGetWidth(self.frame);
        _titleLabel.frame = rect;
    }
    if (CGRectGetWidth(_detailTitleBar.frame) > CGRectGetWidth(self.frame)) {
        CGRect rect = _detailTitleBar.frame;
        rect.size.width = CGRectGetWidth(self.frame);
        _detailTitleBar.frame = rect;
    }
}

@end

//#endif//程序自动生成
