//
//  PositionCell.h
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/3.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PositionCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *backGroundView;
@property (weak, nonatomic) IBOutlet UILabel *positionTitleLabel;

+ (UINib *)nib;

@end
