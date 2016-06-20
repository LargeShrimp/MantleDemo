//
//  GHUser.m
//  MantleDemo
//
//  Created by taitanxiami on 16/6/20.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "GHUser.h"

@implementation GHUser

+(NSDictionary *)JSONKeyPathsByPropertyKey {
    
    return @{
             @"login":@"login",
             @"userID":@"id"
             };
}
@end
