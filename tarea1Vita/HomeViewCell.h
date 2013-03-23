//
//  HomeViewCell.h
//  tarea1Vita
//
//  Created by SDA on 3/20/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeViewCell : UITableViewCell <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) IBOutlet UIImageView *image1;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (strong, nonatomic) IBOutlet UITextField *myTextField;
- (IBAction)editButton:(id)sender;

@end
