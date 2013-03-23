//
//  HomeViewCell.m
//  tarea1Vita
//
//  Created by SDA on 3/20/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import "HomeViewCell.h"

@implementation HomeViewCell

@synthesize descriptionLabel, myTextField;

- (void)viewDidLoad{
        self.myTextField.delegate = self;
    descriptionLabel.text= myTextField.text;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        descriptionLabel.numberOfLines = 0;
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [[event allTouches] anyObject];
    
    if ([self.myTextField isFirstResponder] && [touch view] != self.myTextField ) {
        
            [self.myTextField resignFirstResponder];
        }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField   {
   
        self.myTextField.delegate = self;
        [self.myTextField becomeFirstResponder];
    
        descriptionLabel.text= myTextField.text;
    
    
    return YES;
    
}
- (IBAction)editButton:(id)sender {
    
    descriptionLabel.text= myTextField.text;
    
    [self.myTextField becomeFirstResponder];
    
    self.myTextField.delegate = self;
    
    
}



@end
