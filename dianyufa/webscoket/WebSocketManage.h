//
//  WebSocketManage.h
//  dianyufa
//
//  Created by 史宗运 on 2020/2/28.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WebSocketManage : NSObject

+ (instancetype)shareSocketManage;

- (void)openSocketWithUrl:(NSString *)urlString;

- (void)close;

- (void)sendData:(id)data;

@end

NS_ASSUME_NONNULL_END
