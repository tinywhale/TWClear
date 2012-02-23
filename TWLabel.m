//
//  TWLabel.m
//  TWClear
//
//  Created by Jason Dinh on 22/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import "TWLabel.h"

@implementation TWLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) drawRect:(CGRect)rect {
    [self.text drawInRect: rect withFont:self.font];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
