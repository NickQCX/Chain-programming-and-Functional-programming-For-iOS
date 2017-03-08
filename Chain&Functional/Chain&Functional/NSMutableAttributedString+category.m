//
//  NSMutableAttributedString+category.m
//  富文本
//
//  Created by 裘诚翔 on 2017/3/7.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import "NSMutableAttributedString+category.h"

@implementation NSMutableAttributedString (category)

-(NSMutableAttributedString *)add:(void(^)(NSMutableAttributedString *))block{
    block(self);
    return self;
}

+(NSMutableAttributedString *)yw_attributeString:(NSString *)string Range:(NSRange)range Attribute:(void(^)(NSMutableDictionary * attributes))block{
    NSMutableDictionary * attributes = [NSMutableDictionary dictionary];
    block(attributes);
    NSMutableAttributedString * as = [[NSMutableAttributedString alloc] initWithString:string];
    [as addAttributes:attributes range:range];
    return as;
}

-(NSMutableAttributedString *)yw_addAttributeString:(NSString *)string Attribute:(void(^)(NSMutableDictionary * attributes))block{
    NSMutableDictionary * attributes = [NSMutableDictionary dictionary];
    block(attributes);
    NSMutableAttributedString * as = [[NSMutableAttributedString alloc] initWithString:string attributes:attributes];
    [self appendAttributedString:as];
    return self;
}

@end
