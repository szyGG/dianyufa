//
//  OCAbstractClass.m
//  dianyufa
//
//  Created by 史宗运 on 2020/3/6.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "OCAbstractClass.h"




@implementation OCAbstractClass

- (instancetype)init
{
    NSAssert(![self isMemberOfClass:[OCAbstractClass class]], @"NDCallTool是一个抽象类，不要直接实例化它");

    return [super init];
}

//发送呼叫信令
+ (void)sendCall:(id ) model {
    NSLog(@"发送呼叫信令");
}

//发送取消呼叫信令
+ (void)sendCancel:(id ) model {
    NSLog(@"发送取消呼叫信令");
}

//发送接听信令
+ (void)sendJoin:(NSString *) Id {
     NSLog(@"发送接听信令");
}

//发送拒绝信令
+ (void)sendReject {
    NSLog(@"发送拒绝信令");
}

//发送退出视频信令
+ (void)sendQuit:(NSString *) Id {
    NSLog(@"发送退出视频信令");
}

@end
