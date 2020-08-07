//
//  FactoryViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/27.
//  Copyright © 2020 史宗运. All rights reserved.
//
//工程模式注重结果，通过传入的参数选择需要的对象
#import "FactoryViewController.h"
#import "AnimalFactory.h"
#import "AnimalFather.h"
@interface FactoryViewController ()

@end

@implementation FactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    AnimalFather * animal = [AnimalFactory initWithAnimalType:AnimalTypeCat];
    [animal shoot];
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
