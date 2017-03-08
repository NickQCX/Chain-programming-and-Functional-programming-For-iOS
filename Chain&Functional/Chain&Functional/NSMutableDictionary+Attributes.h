//
//  NSMutableDictionary+Attributes.h
//  富文本
//
//  Created by 裘诚翔 on 2017/3/7.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface NSMutableDictionary (Attributes)
-(NSMutableDictionary *(^)(CGFloat))Font;
-(NSMutableDictionary *(^)(UIColor *))Color;
-(NSMutableDictionary *(^)(CGFloat))BoldFont;
-(NSMutableDictionary *(^)(NSMutableParagraphStyle *))ParagraphStyle;
-(NSMutableDictionary *(^)(NSString *))Link;
-(NSMutableDictionary *)UnderlineStyle;
-(NSMutableDictionary *(^)(UIColor *))UnderlineColor;
-(NSMutableDictionary *(^)(NSString *))Image;
-(NSMutableDictionary *(^)(CGRect))ImageBounds;
@end
