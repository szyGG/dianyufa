//
//  Calculator.h
//  dianyufa
//
//  Created by 史宗运 on 2020/1/3.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <Foundation/Foundation.h>




@interface Calculator : NSObject

@property (nonatomic,assign) float result;

- (Calculator * (^)(NSInteger num)) add;

- (Calculator *(^)(NSInteger num)) mins;

@property (nonatomic,copy) NSString *(^heightstring)(NSString *str);

- (Calculator *)adddddd:(NSInteger)num;


@end


