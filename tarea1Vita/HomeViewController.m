//
//  HomeViewController.m
//  tarea1Vita
//
//  Created by SDA on 3/20/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeViewCell.h"



@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize homeTableView, myArray1,myArray2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    [super viewDidLoad];
    myArray1   = [[NSMutableArray alloc]init];
    [myArray1 addObject:@"Katy Perry"];
    [myArray1 addObject:@"FireWork"];
    [myArray1 addObject:@"California Gurls"];
        myArray2  = [[NSMutableArray alloc]init];
    [myArray2 addObject:@"jfgklsjgklhsflgl"];
    [myArray2 addObject:@"lsdjgkljslkfjsdklj"];
    [myArray2 addObject:@"flsdjklfjdsklajfk"];


    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [myArray1 count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HomeViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"Cell1"];
    
    cell1.label1.text = [myArray1 objectAtIndex:indexPath.row];
    cell1.image1.image = [UIImage imageNamed:@"perry.bmp"];
    cell1.descriptionLabel.text = [myArray2 objectAtIndex:indexPath.row];

    return cell1;
    
}


/* - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{

  
 
     CGSize size = [[myArray1 objectAtIndex:indexPath.row]
                    sizeWithFont:[UIFont systemFontOfSize:14]
                    constrainedToSize:CGSizeMake(300, CGFLOAT_MAX)];
  [tableView reloadData];
     return size.height + 10;
     

	
	
 
}*/
 





#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSString *cellText = cell.textLabel.text;
    [myArray1 addObject:cellText];
     [myArray2 addObject:cellText];
    [homeTableView setAllowsSelection:YES];
    
}





@end
