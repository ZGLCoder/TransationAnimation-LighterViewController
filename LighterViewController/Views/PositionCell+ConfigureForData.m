//
//  PositionCell+ConfigureForData.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/3.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "PositionCell+ConfigureForData.h"

@implementation PositionCell (ConfigureForData)

- (void)configureForData:(UserData *)userData {
    self.backgroundColor = [UIColor clearColor];
    self.backGroundView.layer.masksToBounds = YES;
    self.backGroundView.layer.cornerRadius = 5;
    self.positionTitleLabel.text = userData.positionCategory;
}

@end
