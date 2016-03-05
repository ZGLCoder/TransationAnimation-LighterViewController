//
//  UserData.h
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseHeader.h"
@interface UserData : NSObject

@property (strong, nonatomic) NSDecimalNumber *jobId;
@property (strong, nonatomic) NSDecimalNumber *userId;
@property (strong, nonatomic) NSString *userName;
@property (strong, nonatomic) NSString *userAvatar;
@property (strong, nonatomic) NSDecimalNumber *headImg;
@property (strong, nonatomic) NSString *company;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *positionName;
@property (strong, nonatomic) NSString *positionCategory;
@property (strong, nonatomic) NSArray *companyLureKeywords;
@property (strong, nonatomic) NSString *companyLureContent;
@property (strong, nonatomic) NSDecimalNumber *popularity;
@property (strong, nonatomic) NSDecimalNumber *replies;
@property (strong, nonatomic) NSString *city;
@property (strong, nonatomic) NSDecimalNumber *certification;
@property (strong, nonatomic) NSDecimalNumber *bossStatus4Niuren;
@property (strong, nonatomic) NSDecimalNumber *lowSalary;
@property (strong, nonatomic) NSDecimalNumber *highSalary;
@property (strong, nonatomic) NSString *degreeName;
@property (strong, nonatomic) NSString *experienceName;
@property (strong, nonatomic) NSString *jobPubTime;
@property (strong, nonatomic) NSString *jobActiveTime;
@property (strong, nonatomic) NSDecimalNumber *tag;
@property (strong, nonatomic) NSString *userDescription;
@property (strong, nonatomic) NSDecimalNumber *score;
@property (strong, nonatomic) NSDecimalNumber *rank;
@property (strong, nonatomic) NSString *lid;
@property (strong, nonatomic) NSDecimalNumber *jobCount;
@property (strong, nonatomic) NSArray *barTagNameList;
@property (strong, nonatomic) NSString *scaleName;
@property (strong, nonatomic) NSDecimalNumber *videoTag;
@property (strong, nonatomic) NSDecimalNumber *isSpecial;
@property (strong, nonatomic) NSDecimalNumber *deleted;

- (id) initWithJSONDictionary:(NSDictionary *)dic;
- (void) parseJSONDictionary:(NSDictionary *)dic;


@end
