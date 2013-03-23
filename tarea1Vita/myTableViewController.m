//
//  myTableViewController.m
//  tarea1Vita
//
//  Created by SDA on 3/15/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import "myTableViewController.h"
#import "my_Cell.h"

@interface myTableViewController ()


@end

@implementation myTableViewController
@synthesize myArray;


- (void)viewDidLoad
{
    [super viewDidLoad];
    myArray= [[NSMutableArray alloc] init];
    [myArray addObject:@"Profile Name:"];
    
    

}


#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [myArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    my_Cell *cell = [tableView dequeueReusableCellWithIdentifier:@"celda"];
    cell.myLabel.text= [myArray objectAtIndex:indexPath.row];
    
    return cell;
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    
}

@end
