//
//  GitIssueModel.h
//  MantleDemo
//
//  Created by taitanxiami on 16/6/20.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import <Mantle/Mantle.h>
@class GHUser;

typedef NS_ENUM(NSUInteger, GHIssueState) {
    GHIssueStateOpen,
    GHIssueStateClosed
};
@interface GitIssueModel : MTLModel<MTLJSONSerializing>

@property (strong, nonatomic,readonly) NSURL *URL;

@property (nonatomic, copy, readonly) NSURL *HTMLURL;
@property (nonatomic, copy, readonly) NSNumber *number;
@property (nonatomic, assign, readonly) GHIssueState state;
@property (nonatomic, copy, readonly) NSString *reporterLogin;
@property (nonatomic, strong, readonly) GHUser *assignee;
@property (nonatomic, copy, readonly) NSDate *updatedAt;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;

@property (nonatomic, copy, readonly) NSDate *retrievedAt;

@property (nonatomic, assign,readonly) BOOL isnew;

@property (nonatomic, strong) NSArray *users;

@end
