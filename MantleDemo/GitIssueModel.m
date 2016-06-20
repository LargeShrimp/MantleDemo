//
//  GitIssueModel.m
//  MantleDemo
//
//  Created by taitanxiami on 16/6/20.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "GitIssueModel.h"
#import "GHUser.h"
@implementation GitIssueModel

+ (NSDateFormatter *)dateFormatter {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    dateFormatter.locale = [[NSLocale alloc]initWithLocaleIdentifier:@"en_US_POSIX"];
    dateFormatter.dateFormat = @"yyyy-MM-dd'T'HH:mm:ss'Z'";
    return dateFormatter;
}

//转换key
+(NSDictionary *)JSONKeyPathsByPropertyKey {
    
    return @{
             @"URL":@"url",
             @"HTMLURL":@"html_url",
             @"number":@"number",
             @"state":@"state",
             //键值的合理映射
             @"reporterLogin":@"assignee.login",
             @"assignee":@"assignee",
             @"updatedAt":@"update_at",
             @"title":@"title",
             @"body":@"body",
             @"isnew":@"new",
             @"users":@"users",
             
             };
}


//URL转换
+ (NSValueTransformer *)URLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

+ (NSValueTransformer *)HTMLURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

//布尔值转换
+ (NSValueTransformer *)isnewTransformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

//枚举转换
+ (NSValueTransformer *)stateJSONTransformer {
    return [NSValueTransformer mtl_valueMappingTransformerWithDictionary:@{
       @"open":@(GHIssueStateOpen),
       @"closed":@(GHIssueStateClosed)
       }];
}

//转成数组
+ (NSValueTransformer *)usersJSONTransformer {
 
    return [MTLJSONAdapter arrayTransformerWithModelClass:GHUser.class];
}

//转成另一个对象
+ (NSValueTransformer *)assigneeTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:GHUser.class];
}


//日期转换
+ (NSValueTransformer *)updatedAtJSONTransformer {
    return [MTLValueTransformer transformerUsingForwardBlock:^id(NSString *dateString, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter dateFromString:dateString];
    } reverseBlock:^id(NSDate *date, BOOL *success, NSError *__autoreleasing *error) {
        return [self.dateFormatter stringFromDate:date];
    }];
}

//默认值
- (instancetype)initWithDictionary:(NSDictionary *)dictionaryValue error:(NSError **)error {
    self = [super initWithDictionary:dictionaryValue error:error];
    if (self == nil) return nil;
    
    _updatedAt = [NSDate date];
    
    return self;
}


@end
