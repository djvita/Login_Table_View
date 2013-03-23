//
//  my_Cell.m
//  tarea1Vita
//
//  Created by SDA on 3/15/13.
//  Copyright (c) 2013 SDA. All rights reserved.
//

#import "my_Cell.h"

@implementation my_Cell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
