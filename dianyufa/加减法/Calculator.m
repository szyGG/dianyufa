//
//  Calculator.m
//  dianyufa
//
//  Created by 史宗运 on 2020/1/3.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.result = 0;
        
    }
    return self;
}

- (Calculator * (^)(NSInteger num))add{
    return ^id(NSInteger num){
        self.result += num;
        return self;
    };
    
}

- (Calculator *(^)(NSInteger))mins{
    return ^(NSInteger num){
        self.result -= num;
        return self;
        
    };
}

- (Calculator *)adddddd:(NSInteger)num{
    self.result += num;
    return self;
}


@end
