//
//  UILabel+category.h
//  富文本
//
//  Created by 裘诚翔 on 2017/3/8.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (category)
-(UILabel *(^)(CGFloat))yw_font;
-(UILabel *(^)(UIColor *))yw_textColor;
@end
