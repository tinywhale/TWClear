//
//  TWClearTableViewCell.h
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constant.h"
#import "TWLabel.h"
@interface TWClearTableViewCell : UITableViewCell {
    TWLabel *TW_label;
}

@property (strong) TWLabel *label;

- (void) configureCellAtIndexPath: (NSIndexPath *) indexPath;
@end
