//
//  IUKernAttrConfig.m
//  CRJAttributedStringConfig_Example
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "IUKernAttrConfig.h"

@implementation IUKernAttrConfig
- (NSString *)attributeName {
    
    return NSKernAttributeName;
}

- (id)attributeValue {

    return self.kern;
}

+ (instancetype)configWithKern:(NSNumber *)kern range:(NSRange)range {
    
    IUKernAttrConfig *config = [[self class] new];
    config.kern                 = kern;
    config.effectiveStringRange = range;
    
    return config;
}

+ (instancetype)configWithKern:(NSNumber *)kern {
    
    IUKernAttrConfig *config = [[self class] new];
    config.kern                 = kern;
    
    return config;
}

@end
