//
//  ViewController.m
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize tableViewController = TW_tableViewController;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableViewController = [[TWClearTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    self.tableViewController.view.frame = self.view.frame;
    [self.view addSubview: self.tableViewController.view];
    
    
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
