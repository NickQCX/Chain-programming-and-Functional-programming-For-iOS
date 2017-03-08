//
//  UILabel+category.m
//  富文本
//
//  Created by 裘诚翔 on 2017/3/8.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import "UILabel+category.h"

@implementation UILabel (category)

-(UILabel *(^)(CGFloat))yw_font{
    return ^id(CGFloat font) {
        self.font = [UIFont systemFontOfSize:font];
        return self;
    };
}

-(UILabel *(^)(UIColor *))yw_textColor{
    return ^id(UIColor * color) {
        self.textColor = color;
        return self;
    };
}

@end
