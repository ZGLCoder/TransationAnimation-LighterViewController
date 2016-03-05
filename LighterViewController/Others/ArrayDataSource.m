//
//  ArrayDataSource.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "ArrayDataSource.h"
#import "PositionCell.h"

@interface ArrayDataSource()

@property (nonatomic, strong) NSArray *items;
@property (nonatomic, copy) NSString *cellIdentifier;
@property (nonatomic, copy) TableViewCellConfigureBlock configureBlock;

@end

@implementation ArrayDataSource

- (instancetype)init {
    return nil;
}
- (instancetype)initWithItems:(NSArray *)aItems cellIdentifier:(NSString *)aCellIdentifier configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock {
    if (self = [super init]) {
        self.items = aItems;
        self.cellIdentifier = aCellIdentifier;
        self.configureBlock = aConfigureCellBlock;
    }
    return self;
}
- (id)itemAtIndexPath:(NSIndexPath *)indexPath {
    return self.items[indexPath.row];
}
- (void)reloadDataWithItems:(NSArray *)aItems {
    self.items = nil;
    self.items = aItems;
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.items.count;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

//    NSLog(@"%@", self.cellIdentifier);
    PositionCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    
    id item = [self itemAtIndexPath:indexPath];
    self.configureBlock(cell, item);
    
    return cell;
}

@end
