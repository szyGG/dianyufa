//
//  SZYShareManage.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "SZYShareManage.h"

@implementation SZYShareManage

+ (instancetype)shareManger
{
    static SZYShareManage *manger = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manger = [[SZYShareManage alloc] init];
    });
    return manger;
}

- (void)doSomething{
    NSLog(@"单例");
}

@end
