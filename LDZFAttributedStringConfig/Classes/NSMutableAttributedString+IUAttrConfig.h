//
//  NSMutableAttributedString+IUAttrConfig.h
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IUBaseAttrStringConfig.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (IUAttrConfig)

/**
 添加富文本对象
 
 @param stringAttribute 富文本配置对象
 */
- (void)crj_addStringAttribute:(IUBaseAttrStringConfig *)stringAttribute;

/**
 移除富文本对象
 
 @param stringAttribute 富文本配置对象
 */
- (void)crj_removeStringAttribute:(IUBaseAttrStringConfig *)stringAttribute;

/**
 [构造器] 便利构造出富文本对象(可变富文本,可以进行局部设置)
 
 @param string 文本
 @param configBlock AttributedStringConfig配置的数组,往里面添加AttributedStringConfig即可
 @return 富文本实体
 */
+ (instancetype)crj_mutableAttributedStringWithString:(NSString *)string config:(void (^)(NSString *string, NSMutableArray <IUBaseAttrStringConfig *> *configs))configBlock;

@end

NS_ASSUME_NONNULL_END
