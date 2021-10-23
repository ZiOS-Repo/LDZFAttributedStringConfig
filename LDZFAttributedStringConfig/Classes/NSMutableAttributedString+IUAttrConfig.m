//
//  NSMutableAttributedString+IUAttrConfig.m
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "NSMutableAttributedString+IUAttrConfig.h"

@implementation NSMutableAttributedString (IUAttrConfig)
- (void)crj_addStringAttribute:(IUBaseAttrStringConfig *)stringAttribute {
    
    [self addAttribute:stringAttribute.attributeName
                 value:stringAttribute.attributeValue
                 range:stringAttribute.effectiveStringRange];
}

- (void)crj_removeStringAttribute:(IUBaseAttrStringConfig *)stringAttribute {
    
    [self removeAttribute:stringAttribute.attributeName
                    range:stringAttribute.effectiveStringRange];
}

+ (instancetype)crj_mutableAttributedStringWithString:(NSString *)string config:(void (^)(NSString *string, NSMutableArray <IUBaseAttrStringConfig *> *configs))configBlock {
    
    NSMutableAttributedString *atbString = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableArray            *array     = nil;
    
    if (configBlock) {
        
        array = [NSMutableArray array];
        configBlock(string, array);
    }
    
    [array enumerateObjectsUsingBlock:^(IUBaseAttrStringConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        [atbString crj_addStringAttribute:obj];
    }];
    
    return atbString;
}

@end
