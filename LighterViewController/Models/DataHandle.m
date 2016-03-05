//
//  DataHandle.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "DataHandle.h"
#import "BaseHeader.h"
#import "UserData.h"
#import <AFNetworking.h>
@implementation DataHandle

- (instancetype)init {
    if (self = [super init]) {
        self.dataArray = [[NSMutableArray alloc] init];
        [self jsonDataHandle];
    }
    return self;
}
+ (instancetype)dataHandle {
    return [[self alloc] init];
}
- (void)jsonDataHandle {
    __weak DataHandle *weakSelf = self;
    AFHTTPSessionManager *manager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"text/plain",@"text/json",@"application/json",@"text/javascript",@"text/html",nil];
    [manager GET:PosititonURL parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSArray *array = [[[responseObject objectForKey:@"recommendedBoss.get"] objectForKey:@"jobSearchResult"] objectForKey:@"jobSearchInfoList"];
        for (NSDictionary *dic in array) {
            UserData *model = [[UserData alloc] initWithJSONDictionary:dic];
            [weakSelf.dataArray addObject:model];
        }
        NSNotification * notice = [NSNotification notificationWithName:@"reloadData" object:nil userInfo:nil];
        [[NSNotificationCenter defaultCenter]postNotification:notice];
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"ERROR %@", error);
    }];
}
- (NSMutableArray *)data {
    return self.dataArray;
}
@end

