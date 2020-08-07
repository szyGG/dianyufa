//
//  OCAbstractClass.h
//  dianyufa
//
//  Created by 史宗运 on 2020/3/6.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OCAbstractClass : NSObject

//发送呼叫信令
+ (void)sendcCall:(id ) model;

//发送取消呼叫信令
+ (void)sendCancel:(id ) model;

//发送接听信令
+ (void)sendJoin:(NSString *) Id;

//发送拒绝信令
+ (void)sendReject;

//发送退出视频信令
+ (void)sendQuit:(NSString *) Id;



@end

NS_ASSUME_NONNULL_END
