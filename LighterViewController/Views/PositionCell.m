//
//  PositionCell.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/3.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "PositionCell.h"

@implementation PositionCell
+ (UINib *)nib {
    return [UINib nibWithNibName:@"PositionCell" bundle:nil];
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
