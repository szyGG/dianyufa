//
//  AnimalFactory.h
//  dianyufa
//
//  Created by 史宗运 on 2020/2/27.
//  Copyright © 2020 史宗运. All rights reserved.
//


#import <Foundation/Foundation.h>
@class AnimalFather;

typedef NS_ENUM(NSUInteger, AnimalType) {
    AnimalTypeDog,
    AnimalTypeCat,
};



@interface AnimalFactory : NSObject

+ (AnimalFather *)initWithAnimalType:(AnimalType)type;


@end


