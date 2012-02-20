//
//  Constant.h
//  Good
//
//  Created by bathanh-m on 6/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Color+FT.h"
#import "UIFont+FT.h"
#import "UIView+FT.h"

#pragma mark debug value, turn off on production
#define GOODDEBUG NO

#pragma mark macros
#define IS_POINT_IN_RECT(a, b) [Constant isPoint:a inRect:b]
//add border to debug
#define BORDER_RED_RECURSIVELY(someView) [Constant borderRedRecursively:someView]
#define BORDER_RED(someView) someView.layer.borderWidth = 1; someView.layer.borderColor = [UIColor redColor].CGColor
#define BORDER_ORANGE(someView) someView.layer.borderWidth = 1; someView.layer.borderColor = [UIColor orangeColor].CGColor
#define BORDER_GREEN(someView) someView.layer.borderWidth = 1; someView.layer.borderColor = [UIColor greenColor].CGColor
#define REMOVE_BORDER(someView) someView.layer.borderWidth = 0;
//
#define CURRENT_ORIENTATION [UIApplication sharedApplication].statusBarOrientation
#define SAFELY_RELEASE(__POINTER) { [__POINTER release]; __POINTER = nil; }
#define DEBUG_LOG(fmt, ...) NSLog(@"line:%d (%s): " fmt, __LINE__, __func__, ## __VA_ARGS__)
#define LOGRECT(a) DEBUG_LOG(@"Rect: %f %f %f %f", a.origin.x, a.origin.y, a.size.width, a.size.height)
#define LOGFLOAT(a) DEBUG_LOG(@"Float: %f", a)
#define LOGINT(a) NSLog(@"Int: %d", a)
#define LOGPOINT(a) NSLog(@"x: %f\ny: %f", a.x, a.y)
#define ISJSONNULL(a) [Constant isJsonNull: a]
#define NSURLFROMSTRING(a) [NSURL URLWithString: a]

#define RADIANS_TO_DEGREES(radians) ((radians) * (180.0 / M_PI))
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)

#define POST_NOTIFICATION(aName, anObject, anUserInfo) [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject userInfo:anUserInfo]

#define IS_IPAD UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad


#define CELL_HEIGHT 60
#define KEYBOARD_HEIGHT_PORTRAIT 216

#define SWITCH_LIST_THRESHOLD 100

// String constants
#define SWICH_LIST_PULL_DOWN @"SWICH_LIST_PULL_DOWN"
#define REALLY_SWICH_LIST_PULL_DOWN @"REALLY_SWICH_LIST_PULL_DOWN"


#define $safe(obj)        ((NSNull *)(obj) == [NSNull null] ? nil : (obj))



// peter
#define $new(Klass) IF_ARC([[Klass alloc] init], [[[Klass alloc] init] autorelease])
#define $eql(a,b)   [(a) isEqual:(b)]

#define $arr(...)   [NSArray arrayWithObjects:__VA_ARGS__, nil]
#define $marr(...)  [NSMutableArray arrayWithObjects:__VA_ARGS__, nil]
#define $set(...)   [NSSet setWithObjects:__VA_ARGS__, nil]
#define $mset(...)  [NSMutableSet setWithObjects:__VA_ARGS__, nil]
#define $dict(...)  [NSDictionary dictionaryWithObjectsAndKeys:__VA_ARGS__, nil]
#define $mdict(...) [NSMutableDictionary dictionaryWithObjectsAndKeys:__VA_ARGS__, nil]
#define $str(...)   [NSString stringWithFormat:__VA_ARGS__]
#define $mstr(...)  [NSMutableString stringWithFormat:__VA_ARGS__]

#define $bool(val)      [NSNumber numberWithBool:(val)]
#define $char(val)      [NSNumber numberWithChar:(val)]
#define $double(val)    [NSNumber numberWithDouble:(val)]
#define $float(val)     [NSNumber numberWithFloat:(val)]
#define $int(val)       [NSNumber numberWithInt:(val)]
#define $integer(val)   [NSNumber numberWithInteger:(val)]
#define $long(val)      [NSNumber numberWithLong:(val)]
#define $longlong(val)  [NSNumber numberWithLongLong:(val)]
#define $short(val)     [NSNumber numberWithShort:(val)]
#define $uchar(val)     [NSNumber numberWithUnsignedChar:(val)]
#define $uint(val)      [NSNumber numberWithUnsignedInt:(val)]
#define $uinteger(val)  [NSNumber numberWithUnsignedInteger:(val)]
#define $ulong(val)     [NSNumber numberWithUnsignedLong:(val)]
#define $ulonglong(val) [NSNumber numberWithUnsignedLongLong:(val)]
#define $ushort(val)    [NSNumber numberWithUnsignedShort:(val)]

#define $nonretained(val) [NSValue valueWithNonretainedObject:(val)]
#define $pointer(val)     [NSValue valueWithPointer:(val)]
#define $point(val)       [NSValue valueWithPoint:(val)]
#define $range(val)       [NSValue valueWithRange:(val)]
#define $rect(val)        [NSValue valueWithRect:(val)]
#define $size(val)        [NSValue valueWithSize:(val)]
#define SAVEFILE() [[NSNotificationCenter defaultCenter] postNotificationName: @"save" object:nil userInfo:nil]
#define SYNCKEY @"todoClear"

@interface NSString(ClearAdditions)
- (NSUInteger) numberOfOccurrencesOfSubstring:(NSString *) needle ;
- (BOOL)isEmptyOrWhitespace;
- (BOOL)isWhitespaceAndNewlines;
@end

@interface Constant : NSObject {
	
}

+ (BOOL) isJsonNull: (id) obj;
+ (void) borderRedRecursively: (UIView *)v;
+ (BOOL) isPoint:(CGPoint) point inRect:(CGRect) rect;
@end
