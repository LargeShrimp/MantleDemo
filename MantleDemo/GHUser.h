//
//  GHUser.h
//  MantleDemo
//
//  Created by taitanxiami on 16/6/20.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface GHUser : MTLModel<MTLJSONSerializing>
//login": "octocat",
//"id": 1,

@property (strong, nonatomic) NSString *login;
@property (strong, nonatomic) NSNumber *userID;

@end
