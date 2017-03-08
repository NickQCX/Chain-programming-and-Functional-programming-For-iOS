//
//  NSMutableDictionary+Attributes.m
//  富文本
//
//  Created by 裘诚翔 on 2017/3/7.
//  Copyright © 2017年 裘诚翔. All rights reserved.
//

#import "NSMutableDictionary+Attributes.h"

@implementation NSMutableDictionary (Attributes)

-(NSMutableDictionary *(^)(CGFloat))Font {
    return ^id(CGFloat font) {
        [self setValue:[UIFont systemFontOfSize:font] forKey:NSFontAttributeName];
        return self;
    };
}


-(NSMutableDictionary *(^)(UIColor *))Color {
    return ^id(UIColor * color) {
        [self setValue:color forKey:NSForegroundColorAttributeName];
        return self;
    };
}

-(NSMutableDictionary *(^)(CGFloat))BoldFont {
    return ^id(CGFloat boldFont) {
        [self setValue:[UIFont boldSystemFontOfSize:boldFont] forKey:NSFontAttributeName];
        return self;
    };
}

-(NSMutableDictionary *(^)(NSMutableParagraphStyle *))ParagraphStyle {
    return ^id(NSMutableParagraphStyle * style) {
        [self setValue:style forKey:NSParagraphStyleAttributeName];
        return self;
    };
}

-(NSMutableDictionary *(^)(NSString *))Link {
    return ^id(NSString * linkString) {
        [self setValue:[NSURL URLWithString:linkString] forKey:NSLinkAttributeName];
        return self;
    };
}

-(NSMutableDictionary *)UnderlineStyle{
    [self setValue:@1 forKey:NSUnderlineStyleAttributeName];
    return self;
}

-(NSMutableDictionary *(^)(UIColor *))UnderlineColor {
    return ^id(UIColor * color) {
        [self setValue:color forKey:NSUnderlineColorAttributeName];
        return self;
    };
}

-(NSMutableDictionary *(^)(NSString *))Image{
    return ^id(NSString * imageName) {
        NSTextAttachment * attachment = [self valueForKey:NSAttachmentAttributeName];
        if (!attachment) {
            attachment = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
        }
        UIImage * image = [UIImage imageNamed:imageName];
        attachment.image = image;
        [self setValue:attachment forKey:NSAttachmentAttributeName];
        return self;
    };
}

-(NSMutableDictionary *(^)(CGRect))ImageBounds{
    return ^id(CGRect frame) {
        NSTextAttachment * attachment = [self valueForKey:NSAttachmentAttributeName];
        if (!attachment) {
            attachment = [[NSTextAttachment alloc] initWithData:nil ofType:nil];
        }
        attachment.bounds = frame;
        [self setValue:attachment forKey:NSAttachmentAttributeName];
        return self;
    };
}

@end
