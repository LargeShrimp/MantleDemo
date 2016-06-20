//
//  ViewController.m
//  MantleDemo
//
//  Created by taitanxiami on 16/6/20.
//  Copyright © 2016年 taitanxiami. All rights reserved.
//

#import "ViewController.h"
#import "GitIssueModel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    {
//        "id": 1,
//        "url": "https://api.github.com/repos/octocat/Hello-World/issues/1347",
//        "repository_url": "https://api.github.com/repos/octocat/Hello-World",
//        "labels_url": "https://api.github.com/repos/octocat/Hello-World/issues/1347/labels{/name}",
//        "comments_url": "https://api.github.com/repos/octocat/Hello-World/issues/1347/comments",
//        "events_url": "https://api.github.com/repos/octocat/Hello-World/issues/1347/events",
//        "html_url": "https://github.com/octocat/Hello-World/issues/1347",
//        "number": 1347,
//        "state": "open",
//        "title": "Found a bug",
//        "body": "I'm having a problem with this.",
//        "user": {
//            "login": "octocat",
//            "id": 1,
//            "avatar_url": "https://github.com/images/error/octocat_happy.gif",
//            "gravatar_id": "",
//            "url": "https://api.github.com/users/octocat",
//            "html_url": "https://github.com/octocat",
//            "followers_url": "https://api.github.com/users/octocat/followers",
//            "following_url": "https://api.github.com/users/octocat/following{/other_user}",
//            "gists_url": "https://api.github.com/users/octocat/gists{/gist_id}",
//            "starred_url": "https://api.github.com/users/octocat/starred{/owner}{/repo}",
//            "subscriptions_url": "https://api.github.com/users/octocat/subscriptions",
//            "organizations_url": "https://api.github.com/users/octocat/orgs",
//            "repos_url": "https://api.github.com/users/octocat/repos",
//            "events_url": "https://api.github.com/users/octocat/events{/privacy}",
//            "received_events_url": "https://api.github.com/users/octocat/received_events",
//            "type": "User",
//            "site_admin": false
//        },
//        "labels": [
//                   {
//                       "url": "https://api.github.com/repos/octocat/Hello-World/labels/bug",
//                       "name": "bug",
//                       "color": "f29513"
//                   }
//                   ],
//        "assignee": {
//            "login": "octocat",
//            "id": 1,
//            "avatar_url": "https://github.com/images/error/octocat_happy.gif",
//            "gravatar_id": "",
//            "url": "https://api.github.com/users/octocat",
//            "html_url": "https://github.com/octocat",
//            "followers_url": "https://api.github.com/users/octocat/followers",
//            "following_url": "https://api.github.com/users/octocat/following{/other_user}",
//            "gists_url": "https://api.github.com/users/octocat/gists{/gist_id}",
//            "starred_url": "https://api.github.com/users/octocat/starred{/owner}{/repo}",
//            "subscriptions_url": "https://api.github.com/users/octocat/subscriptions",
//            "organizations_url": "https://api.github.com/users/octocat/orgs",
//            "repos_url": "https://api.github.com/users/octocat/repos",
//            "events_url": "https://api.github.com/users/octocat/events{/privacy}",
//            "received_events_url": "https://api.github.com/users/octocat/received_events",
//            "type": "User",
//            "site_admin": false
//        },
//        
//        
//    }
//    ]
    NSDictionary *modelDictionary = @{
                                      @"retrievedAt":@"2011-04-22T13:33:48Z",
                                      @"url":@"https://api.github.com/repos/octocat/Hello-World/issues/1347",
                                      @"html_url":@"https://github.com/octocat/Hello-World/issues/1347",
                                      @"number":@1234,
                                      @"state":@"open",
                                      @"title":[NSNull null],
                                      @"body":@"I'm having a problem with this.",
                                      @"assignee":@{
                                              @"login":@"octocat",
                                              @"id":@1
                                              },
            
                                      @"new":@1,
                                      };
    
//    GitIssueModel *issueModel = modelDictionary;
    NSError *error = nil;
    GitIssueModel *issueModel = [MTLJSONAdapter modelOfClass:GitIssueModel.class fromJSONDictionary:modelDictionary error:&error];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
