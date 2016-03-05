//
//  ArrayDataSource.h
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void(^TableViewCellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (instancetype)initWithItems:(NSArray *)aItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

- (void)reloadDataWithItems:(NSArray *)aItems;

@end
