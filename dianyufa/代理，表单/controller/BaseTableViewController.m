//
//  BaseTableViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/25.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "BaseTableViewController.h"

@interface BaseTableViewController ()

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.listTools = [SZYMenuListTools new];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (UITableView *)tableView{
    if(!_tableView){
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        //_tableView.backgroundColor = UIColor.redColor;
    }
    return _tableView;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
  //  NSLog(@"%f",self.listTools.numberOfSections);
    return self.listTools.numberOfSections;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   // NSLog(@"%d",self.listTools.numOfRowInSection(section));
    return self.listTools.numOfRowInSection(section);
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SZYMenuModel *model = self.listTools.menuAtIndex(indexPath);
    return self.listTools.menuAtIndex(indexPath).cellForRowAtIndex(tableView,indexPath);
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.listTools.menuAtIndex(indexPath).didSelectAtIndex(tableView,indexPath);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.listTools.menuAtIndex(indexPath).heightForRowAtIndex(tableView,indexPath);
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
