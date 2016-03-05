//
//  UserData.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/2.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "UserData.h"

@implementation UserData

- (void) dealloc
{
    
    
}

- (id) initWithJSONDictionary:(NSDictionary *)dic
{
    if(self = [super init])
    {
        [self parseJSONDictionary:dic];
    }
    
    return self;
}

- (void) parseJSONDictionary:(NSDictionary *)dic
{
    // PARSER
    id jobId_ = [dic objectForKey:@"jobId"];
    if([jobId_ isKindOfClass:[NSNumber class]])
    {
        self.jobId = jobId_;
    }
    
    id userId_ = [dic objectForKey:@"userId"];
    if([userId_ isKindOfClass:[NSNumber class]])
    {
        self.userId = userId_;
    }
    
    id userName_ = [dic objectForKey:@"userName"];
    if([userName_ isKindOfClass:[NSString class]])
    {
        self.userName = userName_;
    }
    
    id userAvatar_ = [dic objectForKey:@"userAvatar"];
    if([userAvatar_ isKindOfClass:[NSString class]])
    {
        self.userAvatar = userAvatar_;
    }
    
    id headImg_ = [dic objectForKey:@"headImg"];
    if([headImg_ isKindOfClass:[NSNumber class]])
    {
        self.headImg = headImg_;
    }
    
    id company_ = [dic objectForKey:@"company"];
    if([company_ isKindOfClass:[NSString class]])
    {
        self.company = company_;
    }
    
    id title_ = [dic objectForKey:@"title"];
    if([title_ isKindOfClass:[NSString class]])
    {
        self.title = title_;
    }
    
    id positionName_ = [dic objectForKey:@"positionName"];
    if([positionName_ isKindOfClass:[NSString class]])
    {
        self.positionName = positionName_;
    }
    
    id positionCategory_ = [dic objectForKey:@"positionCategory"];
    if([positionCategory_ isKindOfClass:[NSString class]])
    {
        self.positionCategory = positionCategory_;
    }
    
    id companyLureKeywords_ = [dic objectForKey:@"companyLureKeywords"];
    if([companyLureKeywords_ isKindOfClass:[NSArray class]])
    {
        self.companyLureKeywords = companyLureKeywords_;
    }
    
    id companyLureContent_ = [dic objectForKey:@"companyLureContent"];
    if([companyLureContent_ isKindOfClass:[NSString class]])
    {
        self.companyLureContent = companyLureContent_;
    }
    
    id popularity_ = [dic objectForKey:@"popularity"];
    if([popularity_ isKindOfClass:[NSNumber class]])
    {
        self.popularity = popularity_;
    }
    
    id replies_ = [dic objectForKey:@"replies"];
    if([replies_ isKindOfClass:[NSNumber class]])
    {
        self.replies = replies_;
    }
    
    id city_ = [dic objectForKey:@"city"];
    if([city_ isKindOfClass:[NSString class]])
    {
        self.city = city_;
    }
    
    id certification_ = [dic objectForKey:@"certification"];
    if([certification_ isKindOfClass:[NSNumber class]])
    {
        self.certification = certification_;
    }
    
    id bossStatus4Niuren_ = [dic objectForKey:@"bossStatus4Niuren"];
    if([bossStatus4Niuren_ isKindOfClass:[NSNumber class]])
    {
        self.bossStatus4Niuren = bossStatus4Niuren_;
    }
    
    id lowSalary_ = [dic objectForKey:@"lowSalary"];
    if([lowSalary_ isKindOfClass:[NSNumber class]])
    {
        self.lowSalary = lowSalary_;
    }
    
    id highSalary_ = [dic objectForKey:@"highSalary"];
    if([highSalary_ isKindOfClass:[NSNumber class]])
    {
        self.highSalary = highSalary_;
    }
    
    id degreeName_ = [dic objectForKey:@"degreeName"];
    if([degreeName_ isKindOfClass:[NSString class]])
    {
        self.degreeName = degreeName_;
    }
    
    id experienceName_ = [dic objectForKey:@"experienceName"];
    if([experienceName_ isKindOfClass:[NSString class]])
    {
        self.experienceName = experienceName_;
    }
    
    id jobPubTime_ = [dic objectForKey:@"jobPubTime"];
    if([jobPubTime_ isKindOfClass:[NSString class]])
    {
        self.jobPubTime = jobPubTime_;
    }
    
    id jobActiveTime_ = [dic objectForKey:@"jobActiveTime"];
    if([jobActiveTime_ isKindOfClass:[NSString class]])
    {
        self.jobActiveTime = jobActiveTime_;
    }
    
    id tag_ = [dic objectForKey:@"tag"];
    if([tag_ isKindOfClass:[NSNumber class]])
    {
        self.tag = tag_;
    }
    
    id userDescription_ = [dic objectForKey:@"userDescription"];
    if([userDescription_ isKindOfClass:[NSString class]])
    {
        self.userDescription = userDescription_;
    }
    
    id score_ = [dic objectForKey:@"score"];
    if([score_ isKindOfClass:[NSNumber class]])
    {
        self.score = score_;
    }
    
    id rank_ = [dic objectForKey:@"rank"];
    if([rank_ isKindOfClass:[NSNumber class]])
    {
        self.rank = rank_;
    }
    
    id lid_ = [dic objectForKey:@"lid"];
    if([lid_ isKindOfClass:[NSString class]])
    {
        self.lid = lid_;
    }
    
    id jobCount_ = [dic objectForKey:@"jobCount"];
    if([jobCount_ isKindOfClass:[NSNumber class]])
    {
        self.jobCount = jobCount_;
    }
    
    id scaleName_ = [dic objectForKey:@"scaleName"];
    if([scaleName_ isKindOfClass:[NSString class]])
    {
        self.scaleName = scaleName_;
    }
    
    id videoTag_ = [dic objectForKey:@"videoTag"];
    if([videoTag_ isKindOfClass:[NSNumber class]])
    {
        self.videoTag = videoTag_;
    }
    
    id isSpecial_ = [dic objectForKey:@"isSpecial"];
    if([isSpecial_ isKindOfClass:[NSNumber class]])
    {
        self.isSpecial = isSpecial_;
    }
    
    id deleted_ = [dic objectForKey:@"deleted"];
    if([deleted_ isKindOfClass:[NSNumber class]])
    {
        self.deleted = deleted_;
    }
    
}

@end
