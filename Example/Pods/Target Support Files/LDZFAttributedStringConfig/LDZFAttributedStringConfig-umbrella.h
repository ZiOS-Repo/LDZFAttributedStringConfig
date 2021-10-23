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

#import "IUBaseAttrStringConfig.h"
#import "IUFontAttrConfig.h"
#import "IUForegroundColorAttrConfig.h"
#import "IUKernAttrConfig.h"
#import "IUParagraphAttrConfig.h"
#import "LDZFAttributedStringConfig.h"
#import "NSAttributedString+IUAttrConfig.h"
#import "NSMutableAttributedString+IUAttrConfig.h"
#import "NSString+IUAttrConfig.h"

FOUNDATION_EXPORT double LDZFAttributedStringConfigVersionNumber;
FOUNDATION_EXPORT const unsigned char LDZFAttributedStringConfigVersionString[];

