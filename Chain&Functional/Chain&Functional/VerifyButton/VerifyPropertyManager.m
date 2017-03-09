//
//  VerifyPropertyManager.m
//  Chain&Functional
//
//  Created by 裘诚翔 on 2017/3/9.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import "VerifyPropertyManager.h"

@implementation VerifyPropertyManager

-(VerifyPropertyManager *(^)(UIColor *))norBackgroundColor {
    return ^id(UIColor * color) {
        _vNormalBackgroundColor = color;
        return self;
    };
}

-(VerifyPropertyManager *(^)(UIColor *))countDownBackgroudColor{
    return ^id(UIColor * color) {
        _vCountDownBackgroundColor = color;
        return self;
    };
}

-(VerifyPropertyManager *(^)(UIColor *))norTextColor {
    return ^id(UIColor * color) {
        _vNormalTextColor = color;
        return self;
    };
}

-(VerifyPropertyManager *(^)(UIColor *))countDownTextColor {
    return ^id(UIColor * color) {
        _vCountDownTextColor = color;
        return self;
    };
}

-(VerifyPropertyManager *(^)(UIColor *))norBorderColor {
    return ^id(UIColor * color) {
        _vNormalBorderColor = color;
        return self;
    };
}

-(VerifyPropertyManager *(^)(UIColor *))countDownBorderColor {
    return ^id(UIColor * color) {
        _vCountDownBorderColor = color;
        return self;
    };
}

-(VerifyPropertyManager *(^)(CGFloat))font {
    return ^id(CGFloat font) {
        _vFont = font;
        return self;
    };
}

-(VerifyPropertyManager *(^)(CGFloat))boldFont {
    return ^id(CGFloat boldFont) {
        _vBoldFont = boldFont;
        return self;
    };
}

-(VerifyPropertyManager *(^)(CGFloat))borderWidth {
    return ^id(CGFloat borderWidth) {
        _vBorderWidth = borderWidth;
        return self;
    };
}

-(VerifyPropertyManager *(^)(CGFloat))cornerRadius {
    return ^id(CGFloat cornerRadius) {
        _vCornerRadius = cornerRadius;
        return self;
    };
}

-(VerifyPropertyManager *(^)(NSString *))title {
    return ^id(NSString * title) {
        _vTitle = title;
        return self;
    };
}

-(VerifyPropertyManager *(^)(NSInteger))countDownTime {
    return ^id(NSInteger time) {
        _vCountDownTime = time;
        return self;
    };
}





@end
