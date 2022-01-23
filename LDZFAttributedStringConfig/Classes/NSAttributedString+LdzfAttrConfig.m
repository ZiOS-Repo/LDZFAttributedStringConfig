//
//  NSAttributedString+LdzfAttrConfig.m
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "NSAttributedString+LdzfAttrConfig.h"

@implementation NSAttributedString (LdzfAttrConfig)
+ (instancetype)ldzf_attributedStringWithString:(NSString *)string config:(void (^)(NSMutableArray <LdzfAttrStringConfig *> *configs))configBlock {
    
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
    
    NSAttributedString *atbString = [[NSAttributedString alloc] initWithString:string attributes:attributesDictionary];
    
    return atbString;
}
@end
