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
@interface SZYTableViewController ()<GoodsTableViewCellDelegate>

@end

@implementation SZYTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUI];
    // Do any additional setup after loading the view.
}

- (void)setUI{
    
    self.listTools.add(self.model1);
    self.listTools.group.add(self.model2);
   [self.tableView reloadData];
    
}



- (SZYMenuModel *)model1{
    SZYMenuModel *model = [SZYMenuModel new];
    model.cellForRowAtIndex = ^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if(!cell){
            cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        cell.backgroundColor=UIColor.redColor;
        cell.textLabel.text=@"UIStackView";
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
            [self.navigationController pushViewController:[[ViewController alloc]init] animated:YES];
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


#pragma mark GoodsTableViewCellDelegate
- (void) jump:(GoodsTableViewCell *)cell{
    NSLog(@"代理");
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
