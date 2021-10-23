//
//  NSString+IUAttrConfig.m
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "NSString+IUAttrConfig.h"

@implementation NSString (IUAttrConfig)

- (NSMutableAttributedString *)crj_mutableAttributedStringWithStringAttributes:(NSArray <IUBaseAttrStringConfig *> *)attributes {
    
    NSMutableAttributedString *attributedString = nil;
    
    if (self) {
        
        attributedString = [[NSMutableAttributedString alloc] initWithString:self];
        
        for (IUBaseAttrStringConfig *attribute in attributes) {
            
            [attributedString addAttribute:[attribute attributeName]
                                     value:[attribute attributeValue]
                                     range:[attribute effectiveStringRange]];
        }
    }
    
    return attributedString;
}

- (NSAttributedString *)crj_attributedStringWithStringAttributes:(NSArray <IUBaseAttrStringConfig *> *)attributes {
    
    NSAttributedString *attributedString = nil;
    
    if (self) {
        
        NSMutableDictionary *attributesDictionary = [NSMutableDictionary dictionary];
        
        for (IUBaseAttrStringConfig *attribute in attributes) {
            
            [attributesDictionary setObject:[attribute attributeValue]
                                     forKey:[attribute attributeName]];
        }
        
        attributedString = [[NSAttributedString alloc] initWithString:self attributes:attributesDictionary];
    }
    
    return attributedString;
}

- (NSAttributedString *)crj_attributedStringWithConfigs:(void (^)(NSMutableArray <IUBaseAttrStringConfig *> *configs))configBlock {
    
    NSMutableArray      *array                = nil;
    NSMutableDictionary *attributesDictionary = nil;
    
    if (configBlock) {
        
        array                = [NSMutableArray array];
        attributesDictionary = [NSMutableDictionary dictionary];
        
        configBlock(array);
        
        [array enumerateObjectsUsingBlock:^(IUBaseAttrStringConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            
            [attributesDictionary setObject:obj.attributeValue forKey:obj.attributeName];
        }];
    }
    
    NSAttributedString *atbString = [[NSAttributedString alloc] initWithString:self attributes:attributesDictionary];
    
    return atbString;
}

@end
