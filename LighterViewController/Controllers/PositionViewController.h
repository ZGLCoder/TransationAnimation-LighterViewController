//
//  PositionViewController.h
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/5.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PositionViewController : UIViewController<UIViewControllerTransitioningDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) UIImageView *backGroundImage;
@property (nonatomic, strong) UIView *coverView;

@end
