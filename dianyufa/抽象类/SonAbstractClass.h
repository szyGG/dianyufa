//
//  SonAbstractClass.h
//  dianyufa
//
//  Created by 史宗运 on 2020/3/6.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OCAbstractClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface SonAbstractClass : OCAbstractClass

@property (nonatomic, copy) NSString *name;

- (void)speak ;

@end

NS_ASSUME_NONNULL_END
