//
//  WebSocketManage.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/28.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "WebSocketManage.h"
#import <SocketRocket.h>

@interface WebSocketManage()<SRWebSocketDelegate>
@end

@implementation WebSocketManage{
    NSTimer * _heartTime;
    NSString * _openUrl;
    SRWebSocket * _webSocket;
}

+ (instancetype)shareSocketManage
{
    static WebSocketManage * manage = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manage = [[WebSocketManage alloc] init];
    });
    return manage;
}


- (void)openSocketWithUrl:(NSString *)urlString
{
    _openUrl = urlString;
    if(!_webSocket){
        _webSocket = [[SRWebSocket alloc]initWithURL:[NSURL URLWithString:urlString]];
        _webSocket.delegate = self;
        [_webSocket open];
    }
    
}


- (void)close
{
    if (_heartTime) {
        [_heartTime invalidate];
        _heartTime = nil;
    }
    if (_webSocket) {
        [_webSocket close];
    }
   
}


- (void)sendData:(id)data {
    [_webSocket send:data];
}


- (void)heartPing {
    [_webSocket sendPing:nil];
}


#pragma mark SRWebSocketDelegate

- (void)webSocketDidOpen:(SRWebSocket *)webSocket{
    NSLog(@"连接成功");
    if (!_heartTime) {
        _heartTime = [NSTimer scheduledTimerWithTimeInterval:15 target:self selector:@selector(heartPing) userInfo:nil repeats:YES];
    } else {
        [_heartTime invalidate];
        [_heartTime fire];
    }
}

- (void)webSocket:(SRWebSocket *)webSocket didFailWithError:(NSError *)error{
    NSLog(@"connection error");
    [_heartTime invalidate];
    _heartTime = nil;
    [_webSocket close];
    _webSocket = nil;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self openSocketWithUrl:_openUrl];
    });
}

- (void)webSocket:(SRWebSocket *)webSocket didReceiveMessage:(id)message {
    
}

@end
