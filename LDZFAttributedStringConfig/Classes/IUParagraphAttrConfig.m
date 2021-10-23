//
//  IUParagraphAttrConfig.m
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "IUParagraphAttrConfig.h"

@implementation IUParagraphAttrConfig
- (NSString *)attributeName {
    
    return NSParagraphStyleAttributeName;
}

- (id)attributeValue {
    
    if (self.paragraphStyle) {
        
        return self.paragraphStyle;
        
    } else {
        
        return [NSParagraphStyle defaultParagraphStyle];
    }
}

+ (instancetype)configWithParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range {
    
    IUParagraphAttrConfig *config = [[self class] new];
    config.paragraphStyle            = paragraphStyle;
    config.effectiveStringRange = range;
    
    return config;
}

+ (instancetype)configWithParagraphStyle:(NSParagraphStyle *)paragraphStyle {
    
    IUParagraphAttrConfig *config = [[self class] new];
    config.paragraphStyle            = paragraphStyle;
    
    return config;
}
@end
