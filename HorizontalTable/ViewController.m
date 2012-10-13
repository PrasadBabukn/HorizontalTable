//Om Sri Sai Ram
//  ViewController.m
//  HorizontalTable
//
//  Created by PrasadBabu KN on 10/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "HorizontalCell.h"
#import <QuartzCore/QuartzCore.h>

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrItems=[[NSArray alloc] initWithObjects:@"Apple", @"Mango", @"Orange", @"Banana", @"Chickoo", @"Black Berry", @"Watermelon", @"Figs" , @"Grapes", @"Papaya" ,@"Olive", @"Dates",  nil];
    textFont=[UIFont fontWithName:@"Helvetica" size:21.0];
    
    { //Rotate the table view
        CGPoint oldCenter=myTableView.center;
        myTableView.frame=CGRectMake(0.0, 0.0, myTableView.bounds.size.height, myTableView.bounds.size.width);
        myTableView.transform=CGAffineTransformMakeRotation(-M_PI_2);
        myTableView.center=oldCenter;
    }
    myTableView.showsVerticalScrollIndicator = NO;

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    myTableView=nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrItems count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 120.0f;
    NSString *strCellText=[arrItems objectAtIndex:indexPath.row];
    return 11+[strCellText sizeWithFont:textFont].width;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier=@"reusableIdentifier";
    HorizontalCell *cell=(HorizontalCell*)[tableView dequeueReusableCellWithIdentifier:identifier];
    if(nil==cell)
    {
        cell=[[HorizontalCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.textLabel.font=textFont;
    }
    cell.textLabel.text=[arrItems objectAtIndex:indexPath.row];
    return cell;
}

@end
