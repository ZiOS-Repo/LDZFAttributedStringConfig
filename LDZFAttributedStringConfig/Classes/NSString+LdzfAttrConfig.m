//
//  NSString+LdzfAttrConfig.m
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "NSString+LdzfAttrConfig.h"

@implementation NSString (LdzfAttrConfig)

- (NSMutableAttributedString *)ldzf_mutableAttributedStringWithStringAttributes:(NSArray <LdzfAttrStringConfig *> *)attributes {
    
    NSMutableAttributedString *attributedString = nil;
    
    if (self) {
        
        attributedString = [[NSMutableAttributedString alloc] initWithString:self];
        
        for (LdzfAttrStringConfig *attribute in attributes) {
            
            [attributedString addAttribute:[attribute attributeName]
                                     value:[attribute attributeValue]
                                     range:[attribute effectiveStringRange]];
        }
    }
    
    return attributedString;
}

- (NSAttributedString *)ldzf_attributedStringWithStringAttributes:(NSArray <LdzfAttrStringConfig *> *)attributes {
    
    NSAttributedString *attributedString = nil;
    
    if (self) {
        
        NSMutableDictionary *attributesDictionary = [NSMutableDictionary dictionary];
        
        for (LdzfAttrStringConfig *attribute in attributes) {
            
            [attributesDictionary setObject:[attribute attributeValue]
                                     forKey:[attribute attributeName]];
        }
        
        attributedString = [[NSAttributedString alloc] initWithString:self attributes:attributesDictionary];
    }
    
    return attributedString;
}

- (NSAttributedString *)ldzf_attributedStringWithConfigs:(void (^)(NSMutableArray <LdzfAttrStringConfig *> *configs))configBlock {
    
    NSMutableArray      *array                = nil;
    NSMutableDictionary *attributesDictionary = nil;
    
    if (configBlock) {
        
        array                = [NSMutableArray array];
        attributesDictionary = [NSMutableDictionary dictionary];
        
        configBlock(array);
        
        [array enumerateObjectsUsingBlock:^(LdzfAttrStringConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            [attributesDictionary setObject:obj.attributeValue forKey:obj.attributeName];
        }];
    }
    
    NSAttributedString *atbString = [[NSAttributedString alloc] initWithString:self attributes:attributesDictionary];
    
    return atbString;
}

@end
