//
//  Color+FacebookColor.m
//  Good
//
//  Created by Nguyen Huy Toan on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Color+FT.h"


@implementation UIColor (FT)

+ (UIColor *) colorWithCyan:(int)cyan magenta:(int)magenta yellow:(int)yellow black:(int)black{
    
    int colors = 255 - black;
    int R = colors * (255 - cyan)/255;
    int G = colors * (255 - magenta)/255;
    int B = colors * (255 - yellow)/255;
    
    return RGBCOLOR(R, G, B);
}




@end
