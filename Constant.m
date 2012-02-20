//
//  Constant.m
//  Good
//
//  Created by bathanh-m on 6/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Constant.h"

@implementation NSString(ClearAdditions)

- (NSUInteger) numberOfOccurrencesOfSubstring:(NSString *) needle {
    const char * rawNeedle = [needle UTF8String];
    NSUInteger needleLength = strlen(rawNeedle);
	
    const char * rawHaystack = [self UTF8String];
    NSUInteger haystackLength = strlen(rawHaystack);
	
    NSUInteger needleCount = 0;
    NSUInteger needleIndex = 0;
    for (NSUInteger index = 0; index < haystackLength; ++index) {
        const char thisCharacter = rawHaystack[index];
        if (thisCharacter != rawNeedle[needleIndex]) {
            needleIndex = 0; //they don't match; reset the needle index
        }
		
        //resetting the needle might be the beginning of another match
        if (thisCharacter == rawNeedle[needleIndex]) {
            needleIndex++; //char match
            if (needleIndex >= needleLength) {
                needleCount++; //we completed finding the needle
                needleIndex = 0;
            }
        }
    }
	
    return needleCount;
}

- (BOOL)isWhitespaceAndNewlines {
    NSCharacterSet* whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    for (NSInteger i = 0; i < self.length; ++i) {
        unichar c = [self characterAtIndex:i];
        if (![whitespace characterIsMember:c]) {
            return NO;
        }
    }
    return YES;
}

- (BOOL)isEmptyOrWhitespace {
    // A nil or NULL string is not the same as an empty string
    return 0 == self.length ||
    ![self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]].length;
}

@end


@implementation Constant

+ (BOOL) isJsonNull: (id) obj {
	if (obj && obj != [NSNull null]) {
		return NO;
	}
	return YES;
}

+ (void) borderRedRecursively: (UIView *)v{
    BORDER_RED(v);
    if (v.subviews && v.subviews.count > 0) {
        for (UIView *sv in v.subviews) {
            [self borderRedRecursively:sv];
        }
    }
}

+ (BOOL) isPoint:(CGPoint) point inRect:(CGRect) rect{
    if (0 <= point.x && point.x <= rect.size.width &&
        0 <= point.y && point.y <= rect.size.height) {
        return YES;
    }
    
    return NO;
}
	
@end

