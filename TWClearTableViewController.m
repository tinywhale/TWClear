//
//  TWClearTableViewController.m
//  TWClear
//
//  Created by Jason Dinh on 21/2/12.
//  Copyright (c) 2012 bathanh@gmail.com. All rights reserved.
//

#import "TWClearTableViewController.h"

@interface TWClearTableViewController ()

@end

@implementation TWClearTableViewController
@synthesize cellHeight = TW_cellHeight, cells = TW_cells;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.cellHeight = 60.0;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    [self.tableView addGestureRecognizer: pinch];
    self.cells = [NSMutableDictionary dictionary];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) handlePinch: (UIPinchGestureRecognizer *) g {
    if (g.state == UIGestureRecognizerStateBegan) {
        if (g.numberOfTouches == 2) {
        }
    }
    else if (g.state == UIGestureRecognizerStateChanged) {
        if (g.numberOfTouches == 2) {
            if (g.scale < 1.0) {
                CGFloat realScale = g.scale * 2 - 1;
                if (realScale < 0.0) {
                    realScale = 0;
                }
                self.cellHeight = floor(60 * realScale);
                self.tableView.height = floor(60 + 60 * realScale * 7);
                
                [self.tableView reloadData];
            }   
            self.tableView.centerY = 240;
        }
        
    }
    else if (g.state == UIGestureRecognizerStateEnded) {
        self.cellHeight = 60;
        self.tableView.frame = CGRectMake(0, 0, 320, 480);
        
        [self.tableView reloadData];
    }
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 8;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *cellId = [NSString stringWithFormat: @"id_%d_%d", indexPath.section, indexPath.row];
    
    TWClearTableViewCell *cell = [self.cells objectForKey: cellId];
    
    
    if (cell == nil) {
        cell = [[TWClearTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:  @"test"];
        [self.cells setValue: cell forKey: cellId];
    }
    
    [cell configureCellAtIndexPath: indexPath];
    /*
    static NSString *CellIdentifier = @"Cell";
    TWClearTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[TWClearTableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier: CellIdentifier];
    }
    
    //cell.textLabel.text = [NSString stringWithFormat: @"Row %d", indexPath.row];
    // Configure the cell...
    [cell configureCellAtIndexPath: indexPath];
    
    //cell.layer.shouldRasterize = YES;
    return cell;
     */
    
    return cell;
}

- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        return 60.0;
    }
    else {
        return self.cellHeight;
    }
    return 0.0;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
