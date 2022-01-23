//
//  LdzfParagraphAttr.h
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//  段落

#import "LdzfAttrStringConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface LdzfParagraphAttr : LdzfAttrStringConfig
@property (nonatomic, strong) NSParagraphStyle *paragraphStyle;

+ (instancetype)configWithParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range;
+ (instancetype)configWithParagraphStyle:(NSParagraphStyle *)paragraphStyle;

@end

NS_ASSUME_NONNULL_END
