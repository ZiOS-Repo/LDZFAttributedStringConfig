//
//  NSString+LdzfAttrConfig.h
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LdzfAttrStringConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (LdzfAttrConfig)

/**
 局部设定的富文本(局部有效,每一个AttributedStringConfig均影响其中的一部分,effectiveStringRange有效)

 @param attributes AttributedStringConfig构成的数组
 @return 局部设定的富文本
 */
- (NSMutableAttributedString *)ldzf_mutableAttributedStringWithStringAttributes:(NSArray <LdzfAttrStringConfig *> *)attributes;

/**
 全局设定的富文本(整个文本设置有效,AttributedStringConfig中的effectiveStringRange无效)

 @param attributes AttributedStringConfig构成的数组
 @return 全局设定的富文本
 */
- (NSAttributedString *)ldzf_attributedStringWithStringAttributes:(NSArray <LdzfAttrStringConfig *> *)attributes;

/**
 全局设定的富文本(整个文本设置有效,AttributedStringConfig中的effectiveStringRange无效)

 @param configBlock 用来添加AttributedStringConfig的数组
 @return 全局设定的富文本
 */
- (NSAttributedString *)ldzf_attributedStringWithConfigs:(void (^)(NSMutableArray <LdzfAttrStringConfig *> *configs))configBlock;

@end

NS_ASSUME_NONNULL_END
