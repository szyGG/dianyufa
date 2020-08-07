//
//  SZYMenuModel.h
//  dianyufa
//
//  Created by 史宗运 on 2020/1/15.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface SZYMenuModel : NSObject

@property (nonatomic ,copy) UITableViewCell * (^cellForRowAtIndex)(UITableView *tableView,NSIndexPath *indexPath);

@property (nonatomic ,copy) void (^didSelectAtIndex)(UITableView *tableView,NSIndexPath *indexPath);

@property (nonatomic ,copy) CGFloat (^heightForRowAtIndex)(UITableView *tableView,NSIndexPath *indexPath);

@end


@interface SZYMenuListTools : NSObject

@property (nonatomic ,assign ,readonly) CGFloat numberOfSections;

- (NSInteger (^)(NSInteger ))numOfRowInSection;

- (SZYMenuListTools *(^)(SZYMenuModel *)) add;

- (SZYMenuListTools *) group;

- (SZYMenuModel *(^)(NSIndexPath *)) menuAtIndex;


@end
