//
//  NSAttributedString+IUAttrConfig.m
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "NSAttributedString+IUAttrConfig.h"

@implementation NSAttributedString (IUAttrConfig)
+ (instancetype)crj_attributedStringWithString:(NSString *)string config:(void (^)(NSMutableArray <IUBaseAttrStringConfig *> *configs))configBlock {
    
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
    
    NSAttributedString *atbString = [[NSAttributedString alloc] initWithString:string attributes:attributesDictionary];
    
    return atbString;
}
@end
