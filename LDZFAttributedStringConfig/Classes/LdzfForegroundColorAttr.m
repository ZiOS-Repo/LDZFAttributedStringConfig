//
//  LdzfForegroundColorAttr.m
//  LDZFAttributedStringConfig
//
//  Created by zhuyuhui on 2020/9/2.
//  Copyright © 2020 zhuyuhui434@gmail.com. All rights reserved.
//

#import "LdzfForegroundColorAttr.h"

@implementation LdzfForegroundColorAttr
- (NSString *)attributeName {
    
    return NSForegroundColorAttributeName;
}

- (id)attributeValue {
    
    if (self.color) {
        
        return self.color;
        
    } else {
        
        return [UIColor blackColor];
    }
}

+ (instancetype)configWithColor:(UIColor *)color range:(NSRange)range {
    
    LdzfForegroundColorAttr *config = [[self class] new];
    config.color                           = color;
    config.effectiveStringRange            = range;
    
    return config;
}

+ (instancetype)configWithColor:(UIColor *)color {
    
    LdzfForegroundColorAttr *config = [[self class] new];
    config.color                           = color;
    
    return config;
}
@end
