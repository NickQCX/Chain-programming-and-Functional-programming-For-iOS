//
//  VerifyView.m
//  Chain&Functional
//
//  Created by 裘诚翔 on 2017/3/9.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import "VerifyView.h"

@interface VerifyView ()
@property (nonatomic, strong) NSTimer * timer;
@property (nonatomic, strong) UIButton * verifyButton;
@property (nonatomic, assign) NSInteger countDownTime;
@property (nonatomic, strong) VerifyPropertyManager * manager;
@end
@implementation VerifyView

-(instancetype)initWithFrame:(CGRect)frame Property:(void(^)(VerifyPropertyManager * manager))block{
    if (self = [super initWithFrame:frame]) {
        block(self.manager);
        self.countDownTime = 60;
        [self initVerifyButton];
        [self setupVerifyButton];
    }
    return self;
}

-(void)initVerifyButton{
    self.backgroundColor = [UIColor clearColor];
    
    self.verifyButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.verifyButton.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame));
    [self.verifyButton addTarget:self action:@selector(verifyButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.verifyButton];
}

-(void)setupVerifyButton{
    //初始背景色
    self.verifyButton.backgroundColor = self.manager.vNormalBackgroundColor;
    
    //字体大小
    if (self.manager.vFont == 0.0 && self.manager.vBoldFont > 0.0) {
        self.verifyButton.titleLabel.font = [UIFont boldSystemFontOfSize:self.manager.vBoldFont];
    }else if (self.manager.vFont > 0.0 && self.manager.vBoldFont == 0.0) {
        self.verifyButton.titleLabel.font = [UIFont boldSystemFontOfSize:self.manager.vFont];
    }
    
    //字体颜色
    [self.verifyButton setTitleColor:self.manager.vNormalTextColor forState:UIControlStateNormal];
    if (self.manager.vCountDownTextColor) {
        [self.verifyButton setTitleColor:self.manager.vCountDownTextColor forState:UIControlStateSelected];
    }else{
        [self.verifyButton setTitleColor:self.manager.vNormalTextColor forState:UIControlStateSelected];
    }

    
    //圆角
    if (self.manager.vCornerRadius > 0.0) {
        self.verifyButton.layer.cornerRadius = self.manager.vCornerRadius;
        self.verifyButton.layer.masksToBounds = YES;
    }
    
    //边框颜色及宽度
    if (self.manager.vNormalBorderColor) {
        self.verifyButton.layer.borderColor = self.manager.vNormalBorderColor.CGColor;
        self.verifyButton.layer.borderWidth = self.manager.vBorderWidth;
    }
    
    //文字
    [self.verifyButton setTitle:self.manager.vTitle forState:UIControlStateNormal];
 
    
    
}


-(void)verifyButtonClicked:(UIButton *)button {
    self.verifyButton.selected = YES;
    if (self.manager.vCountDownBackgroundColor) {
        self.verifyButton.backgroundColor = self.manager.vCountDownBackgroundColor;
    }
    
    if (self.manager.vCountDownBorderColor) {
        self.verifyButton.layer.borderColor = self.manager.vCountDownBorderColor.CGColor;
    }
    //设置时间
    if (self.manager.vCountDownTime > 0) {
        self.countDownTime = self.manager.vCountDownTime;
    }
    
    
    [self createTimer];
    
    if ([_delegate respondsToSelector:@selector(verifyCountDown)]) {
        [_delegate verifyCountDown];
    }
}

-(void)createTimer {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDown) userInfo:nil repeats:YES];
}

-(void)deallocTimer {
    if (self.timer.isValid) {
        [self.timer invalidate];
        self.timer = nil;
    }
}

-(void)countDown {
    NSLog(@"1");
    self.countDownTime--;
    if (self.countDownTime == 0) {
        [self.verifyButton setTitle:self.manager.vTitle forState:UIControlStateNormal];
        self.verifyButton.selected = NO;
        self.verifyButton.backgroundColor = self.manager.vNormalBackgroundColor;
        [self deallocTimer];
    }else{
        [self.verifyButton setTitle:[NSString stringWithFormat:@"%zds",self.countDownTime] forState:UIControlStateNormal];
    }
}


-(VerifyPropertyManager *)manager{
    if (!_manager) {
        _manager = [[VerifyPropertyManager alloc] init];
    }
    return _manager;
}

-(void)dealloc{
    [self deallocTimer];
}

@end
