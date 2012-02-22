//
//  TWClearTableViewCell.h
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constant.h"
@interface TWClearTableViewCell : UITableViewCell {
    UILabel *TW_label;
}

@property (strong) UILabel *label;


- (void) configureCellAtIndexPath: (NSIndexPath *) indexPath;
@end
