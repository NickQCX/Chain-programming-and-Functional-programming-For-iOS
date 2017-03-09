//
//  VerifyPropertyManager.h
//  Chain&Functional
//
//  Created by 裘诚翔 on 2017/3/9.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface VerifyPropertyManager : NSObject
@property (nonatomic, readonly) UIColor * vNormalBackgroundColor;
@property (nonatomic, readonly) UIColor * vCountDownBackgroundColor;
@property (nonatomic, readonly) UIColor * vNormalTextColor;
@property (nonatomic, readonly) UIColor * vCountDownTextColor;
@property (nonatomic, readonly) UIColor * vNormalBorderColor;
@property (nonatomic, readonly) UIColor * vCountDownBorderColor;
@property (nonatomic, readonly) CGFloat vFont;
@property (nonatomic, readonly) CGFloat vBoldFont;
@property (nonatomic, readonly) CGFloat vBorderWidth;
@property (nonatomic, readonly) CGFloat vCornerRadius;
@property (nonatomic, readonly) NSString * vTitle;
@property (nonatomic, readonly) NSInteger vCountDownTime;

-(VerifyPropertyManager *(^)(UIColor *))norBackgroundColor;
-(VerifyPropertyManager *(^)(UIColor *))countDownBackgroudColor;
-(VerifyPropertyManager *(^)(UIColor *))norTextColor;
-(VerifyPropertyManager *(^)(UIColor *))countDownTextColor;
-(VerifyPropertyManager *(^)(UIColor *))norBorderColor;
-(VerifyPropertyManager *(^)(UIColor *))countDownBorderColor;
-(VerifyPropertyManager *(^)(CGFloat))font;
-(VerifyPropertyManager *(^)(CGFloat))boldFont;
-(VerifyPropertyManager *(^)(CGFloat))borderWidth;
-(VerifyPropertyManager *(^)(CGFloat))cornerRadius;
-(VerifyPropertyManager *(^)(NSString *))title;
-(VerifyPropertyManager *(^)(NSInteger))countDownTime;


@end
