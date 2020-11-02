//
//  TableViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/1/15.
//  Copyright © 2020 史宗运. All rights reserved.
//
#import "SZYMenuModel.h"
#import "SZYTableViewController.h"
#import "ViewController.h"
#import "GoodsTableViewCell.h"
#import "NotificatViewController.h"
#import "CeLueViewController.h"
#import "FactoryViewController.h"
#import "AbstractViewController.h"
#import "GCDViewController.h"
#import "zhengZeViewController.h"
#import "BezierViewController.h"
#import "BaseTableViewController+title.h"

@interface SZYTableViewController ()<GoodsTableViewCellDelegate>

@end

@implementation SZYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // NSDictionary* myuserListInfo = [SignetManager getUserList];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(tongzhi) name:@"tongzhi" object:nil];
    [self setUI];
    self.bigTitle = @"qq";
    self.bigTitle = @"d";
    
    self.numTitle = 1;
    
    // Do any additional setup after loading the view.
    
}



- (void)setUI{
    
    self.listTools.add(self.model1);
    self.listTools.group.add(self.model2);
    self.listTools.add(self.model3);
    self.listTools.add(self.model4).add(self.model5).add(self.model6);
   [self.tableView reloadData];
    
}

- (void)tongzhi{
    NSLog(@"%@", [self class]);
    self.tableView.backgroundColor = UIColor.greenColor;
}

- (SZYMenuModel *)model1{
    SZYMenuModel *model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(!cell){
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.backgroundColor=UIColor.redColor;
        cell.textLabel.text=@"runloop";
        cell.detailTextLabel.text=@"测试成功了没？";
        return cell;
    };
    model.didSelectAtIndex = ^(UITableView *tableView, NSIndexPath *indexPath) {
        NSLog(@"我被点了哈哈");
        [self.navigationController pushViewController:[[ViewController alloc]init] animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    };
    model.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
        return 50;
    };
    
    return model;
}

- (SZYMenuModel *)model2{
    SZYMenuModel * model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        GoodsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"];
        if(!cell){
            cell = [[GoodsTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell1"];
        }
        cell.delegate = self;
        cell.block = ^(GoodsTableViewCell *cell) {
            [self.navigationController pushViewController:[[CeLueViewController alloc]init] animated:YES];
        };
        return cell;
    };
    model.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
        return 100;
    };
    model.didSelectAtIndex = ^(UITableView *tableView, NSIndexPath *indexPath) {
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    };
    return model;
}


- (SZYMenuModel *)model3 {
    SZYMenuModel *model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(!cell){
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.backgroundColor=UIColor.redColor;
        cell.textLabel.text=@"抽象类";
        cell.detailTextLabel.text=@"测试成功了没？";
        return cell;
    };
    model.didSelectAtIndex = ^(UITableView *tableView, NSIndexPath *indexPath) {
        NSLog(@"我被点了哈哈");
        [self.navigationController pushViewController:[[AbstractViewController alloc]init] animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    };
    model.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
        return 50;
    };
    
    return model;
}

- (SZYMenuModel *)model4{
    SZYMenuModel *model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(!cell){
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.backgroundColor=UIColor.redColor;
        cell.textLabel.text=@"GCD";
        return cell;
    };
    model.didSelectAtIndex = ^(UITableView *tableView, NSIndexPath *indexPath) {
        [self.navigationController pushViewController:[[GCDViewController alloc]init] animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    };
    model.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
        return 50;
    };
    
    return model;
}

- (SZYMenuModel *)model5{
    SZYMenuModel *model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(!cell){
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.textLabel.text=@"正则";
        return cell;
    };
    model.didSelectAtIndex = ^(UITableView *tableView, NSIndexPath *indexPath) {
        [self.navigationController pushViewController:[[zhengZeViewController alloc]init] animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    };
    model.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
        return 50;
    };
    
    return model;
}

- (SZYMenuModel *)model6{
    SZYMenuModel *model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(!cell){
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.textLabel.text=@"贝塞尔曲线";
        return cell;
    };
    model.didSelectAtIndex = ^(UITableView *tableView, NSIndexPath *indexPath) {
        [self.navigationController pushViewController:[[BezierViewController alloc]init] animated:YES];
        [tableView deselectRowAtIndexPath:indexPath animated:NO];
    };
    model.heightForRowAtIndex = ^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
        return 50;
    };
    
    return model;
}


#pragma mark GoodsTableViewCellDelegate
- (void)jump:(GoodsTableViewCell *)cell{
    NSLog(@"代理");
    [self.navigationController pushViewController:[[NotificatViewController alloc]init] animated:YES];
}

- (void)factory:(GoodsTableViewCell *)cell{
    [self.navigationController pushViewController:[[FactoryViewController alloc]init] animated:YES];
}

- (void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
