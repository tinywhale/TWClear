//
//  ViewController.h
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWClearTableViewController.h"
@interface ViewController : UIViewController {
    @private
    TWClearTableViewController *TW_tableViewController;
}

@property (strong) TWClearTableViewController *tableViewController;

@end
