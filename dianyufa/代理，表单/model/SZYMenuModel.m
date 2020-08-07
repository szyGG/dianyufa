//
//  SZYMenuModel.m
//  dianyufa
//
//  Created by 史宗运 on 2020/1/15.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "SZYMenuModel.h"

@implementation SZYMenuModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
            return UITableViewAutomaticDimension;
        };
    }
    return self;
}

@end



@interface SZYMenuListTools()

@property (nonatomic ,strong) NSMutableArray <NSMutableArray *>*array;

@end

@implementation SZYMenuListTools

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.array=[NSMutableArray array];
    }
    return self;
}

- (CGFloat)numberOfSections{
    return self.array.count;
}

- (SZYMenuListTools *(^)(SZYMenuModel *))add{
    return ^SZYMenuListTools *(SZYMenuModel *model){
        NSMutableArray *arr=[self.array lastObject];
        if(!arr){
            arr = [NSMutableArray array];
            [self.array addObject:arr];
        }
        [arr addObject:model];
        return self;
    };
}

- (NSInteger (^)(NSInteger))numOfRowInSection{
    return ^NSInteger (NSInteger num){
        NSMutableArray *a = self.array[num];
        return a.count;
    };
}

- (SZYMenuListTools *)group{
    NSMutableArray *arr = [NSMutableArray array];
    [self.array addObject:arr];
    return self;
}

- (SZYMenuModel *(^)(NSIndexPath *))menuAtIndex{
    return ^SZYMenuModel *(NSIndexPath *indexPath){
        return self.array[indexPath.section][indexPath.row];
    };
}

@end
