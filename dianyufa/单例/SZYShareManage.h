//
//  SZYShareManage.h
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SZYShareManage : NSObject

@property (nonatomic ,copy) NSString *jilu;

+ (instancetype) shareManger;

- (void) doSomething;

@end

NS_ASSUME_NONNULL_END
