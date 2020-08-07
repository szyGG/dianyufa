//
//  BaseTableViewController.h
//  dianyufa
//
//  Created by 史宗运 on 2020/2/25.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SZYMenuModel.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic ,strong) UITableView *tableView;
@property (nonatomic ,strong) SZYMenuListTools *listTools;
@end

NS_ASSUME_NONNULL_END
