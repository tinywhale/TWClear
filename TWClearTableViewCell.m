//
//  TWClearTableViewCell.m
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import "TWClearTableViewCell.h"

@implementation TWClearTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) configureCellAtIndexPath: (NSIndexPath *) indexPath {
    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(0, 20, self.contentView.width, self.contentView.height - 20)];
    label.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
    [label setFont:[UIFont fontWithName: @"Helvetica-Bold" size:18.0]];
    label.text = [NSString stringWithFormat: @"Row %d", indexPath.row];
    [self.contentView addSubview: label];
}

@end
