//
//  AppDelegate.h
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DataHandle;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

+ (instancetype)shareDelegate;

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) DataHandle *data;

@end

