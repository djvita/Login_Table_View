//
//  Main_ViewController.h
//  tarea1Vita
//
//  Created by SDA on 3/15/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myTableViewController.h"
#import "Main_ViewController.h"
#import "my_Cell.h"

@interface Main_ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *myTableview;

@property (strong, nonatomic) UITableViewController *controllerObject;
@end
