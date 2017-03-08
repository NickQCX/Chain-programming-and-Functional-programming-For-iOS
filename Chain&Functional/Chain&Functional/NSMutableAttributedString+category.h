//
//  NSMutableAttributedString+category.h
//  富文本
//
//  Created by 裘诚翔 on 2017/3/7.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (category)
/** 创建方法 */
+(NSMutableAttributedString *)yw_attributeString:(NSString *)string
                                           Range:(NSRange)range
                                       Attribute:(void(^)(NSMutableDictionary * attributes))block;

/** 拼接attributeString */
-(NSMutableAttributedString *)yw_addAttributeString:(NSString *)string
                                          Attribute:(void(^)(NSMutableDictionary * attributes))block;
@end
