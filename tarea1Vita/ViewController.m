//
//  ViewController.m
//  tarea1Vita
//
//  Created by SDA on 3/13/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import "ViewController.h"
#import "Main_ViewController.h"
#import "my_Cell.h"
#import "myTableViewController.h"
#import "HomeViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - Delegate Methods for text Fields

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField==self.userName) {
        [self.passWord becomeFirstResponder];
    }else if (textField==self.passWord){
        
        if([self.userName.text isEqualToString:@"test"] &&[self.passWord.text isEqualToString:@"test"]){
            UIAlertView *alert1= [[UIAlertView alloc] initWithTitle:@"Login Successful" message:[NSString stringWithFormat:@"Welcome, %@ !" ,self.userName.text ] delegate:self cancelButtonTitle:@"OK!" otherButtonTitles:nil, nil];
            [alert1 show];
            
            HomeViewController *mainInstance =[self.storyboard instantiateViewControllerWithIdentifier:@"homeView"];
            [self presentViewController:mainInstance animated:YES completion:nil];
                    
            
            
        }
        else{
            UIAlertView *alert2= [[UIAlertView alloc] initWithTitle:@"Invalid" message:[NSString stringWithFormat:@"Incorrect Usename or Password Please Try Login" ,self.userName.text ] delegate:self cancelButtonTitle:@"Retry" otherButtonTitles:nil, nil];
            [alert2 show];
        }
        
        

    }
    return YES;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    if ([self.passWord isFirstResponder] && [touch view] != self.passWord) {
        [self.passWord resignFirstResponder];
    }else if
        ([self.userName isFirstResponder] && [touch view] != self.userName) {
            [self.userName resignFirstResponder];
        }
}



@end
