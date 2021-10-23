//
//  NSString+IUAttrConfig.h
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUBaseAttrStringConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (IUAttrConfig)

/**
 局部设定的富文本(局部有效,每一个AttributedStringConfig均影响其中的一部分,effectiveStringRange有效)

 @param attributes AttributedStringConfig构成的数组
 @return 局部设定的富文本
 */
- (NSMutableAttributedString *)crj_mutableAttributedStringWithStringAttributes:(NSArray <IUBaseAttrStringConfig *> *)attributes;

/**
 全局设定的富文本(整个文本设置有效,AttributedStringConfig中的effectiveStringRange无效)

 @param attributes AttributedStringConfig构成的数组
 @return 全局设定的富文本
 */
- (NSAttributedString *)crj_attributedStringWithStringAttributes:(NSArray <IUBaseAttrStringConfig *> *)attributes;

/**
 全局设定的富文本(整个文本设置有效,AttributedStringConfig中的effectiveStringRange无效)

 @param configBlock 用来添加AttributedStringConfig的数组
 @return 全局设定的富文本
 */
- (NSAttributedString *)crj_attributedStringWithConfigs:(void (^)(NSMutableArray <IUBaseAttrStringConfig *> *configs))configBlock;

@end

NS_ASSUME_NONNULL_END
