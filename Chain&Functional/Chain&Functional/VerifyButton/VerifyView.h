//
//  VerifyView.h
//  Chain&Functional
//
//  Created by 裘诚翔 on 2017/3/9.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VerifyPropertyManager.h"


@protocol VerifyViewDelegate <NSObject>

-(void)verifyCountDown;

@end

@interface VerifyView : UIView
@property (nonatomic, weak) id<VerifyViewDelegate>delegate;

-(instancetype)init NS_UNAVAILABLE;
-(instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;

-(instancetype)initWithFrame:(CGRect)frame Property:(void(^)(VerifyPropertyManager * manager))block;
@end
