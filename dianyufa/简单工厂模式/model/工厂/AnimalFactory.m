//
//  AnimalFactory.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/27.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "AnimalFactory.h"
#import "Dog.h"
#import "cat.h"
@implementation AnimalFactory

+ (AnimalFather *)initWithAnimalType:(AnimalType)type{
    AnimalFather * animal = nil;
    switch (type) {
        case AnimalTypeDog:
            animal = [[Dog alloc] init];
            break;
        case AnimalTypeCat:
            animal = [[cat alloc] init];
            break;
        default:
            break;
    }
    return animal;
}

@end
