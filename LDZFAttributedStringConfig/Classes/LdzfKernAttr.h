//
//  LdzfKernAttr.h
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//  字间距

#import "LdzfAttrStringConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface LdzfKernAttr : LdzfAttrStringConfig
@property (nonatomic, strong) NSNumber *kern;

+ (instancetype)configWithKern:(NSNumber *)kern range:(NSRange)range;
+ (instancetype)configWithKern:(NSNumber *)kern;

@end

NS_ASSUME_NONNULL_END
