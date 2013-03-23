//
//  ViewController.h
//  tarea1Vita
//
//  Created by SDA on 3/13/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myTableViewController.h"
#import "Main_ViewController.h"
#import "my_Cell.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (strong, nonatomic) IBOutlet UITextField *userName;
@property (strong, nonatomic) IBOutlet UITextField *passWord;

@end
