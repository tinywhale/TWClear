//
//  TWClearTableViewController.h
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWClearTableViewCell.h"
@interface TWClearTableViewController : UITableViewController {
    @private
    CGFloat TW_cellHeight;
    NSMutableDictionary *TW_cells;
}

@property CGFloat cellHeight;
@property (strong) NSMutableDictionary *cells;

@end
