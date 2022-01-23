#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "LDZFAttributedStringConfig.h"
#import "LdzfAttrStringConfig.h"
#import "LdzfFontAttr.h"
#import "LdzfForegroundColorAttr.h"
#import "LdzfKernAttr.h"
#import "LdzfParagraphAttr.h"
#import "NSAttributedString+LdzfAttrConfig.h"
#import "NSMutableAttributedString+LdzfAttrConfig.h"
#import "NSString+LdzfAttrConfig.h"

FOUNDATION_EXPORT double LDZFAttributedStringConfigVersionNumber;
FOUNDATION_EXPORT const unsigned char LDZFAttributedStringConfigVersionString[];

