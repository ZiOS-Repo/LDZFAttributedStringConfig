//
//  NSMutableAttributedString+LdzfAttrConfig.m
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "NSMutableAttributedString+LdzfAttrConfig.h"

@implementation NSMutableAttributedString (LdzfAttrConfig)
- (void)ldzf_addStringAttribute:(LdzfAttrStringConfig *)stringAttribute {
    
    [self addAttribute:stringAttribute.attributeName
                 value:stringAttribute.attributeValue
                 range:stringAttribute.effectiveStringRange];
}

- (void)ldzf_removeStringAttribute:(LdzfAttrStringConfig *)stringAttribute {
    
    [self removeAttribute:stringAttribute.attributeName
                    range:stringAttribute.effectiveStringRange];
}

+ (instancetype)ldzf_mutableAttributedStringWithString:(NSString *)string config:(void (^)(NSString *string, NSMutableArray <LdzfAttrStringConfig *> *configs))configBlock {
    
    NSMutableAttributedString *atbString = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableArray            *array     = nil;
    
    if (configBlock) {
        
        array = [NSMutableArray array];
        configBlock(string, array);
    }
    
    [array enumerateObjectsUsingBlock:^(LdzfAttrStringConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [atbString ldzf_addStringAttribute:obj];
    }];
    
    return atbString;
}

@end
