//
//  ViewController.m
//  Chain&Functional
//
//  Created by 裘诚翔 on 2017/3/8.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import "ViewController.h"
#import "VerifyView.h"

@interface ViewController ()<VerifyViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    VerifyView * vv = [[VerifyView alloc] initWithFrame:CGRectMake(50, 100, 150, 50) Property:^(VerifyPropertyManager *manager) {
        manager.font(14).norTextColor([UIColor redColor]).norBackgroundColor([UIColor greenColor]).title(@"get verify code").cornerRadius(5.0).borderWidth(2.0).norBorderColor([UIColor blackColor]).countDownTime(10).countDownTextColor([UIColor lightGrayColor]).countDownBackgroudColor([UIColor whiteColor]);
    }];
    vv.delegate = self;
    [self.view addSubview:vv];
    
}

-(void)verifyCountDown {
    NSLog(@"开始倒计时");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
