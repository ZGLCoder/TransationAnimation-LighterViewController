//
//  DataHandle.h
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataHandle : NSObject

+ (instancetype)dataHandle;

@property (nonatomic, strong) NSMutableArray *dataArray;

- (NSMutableArray *)data;

@end
