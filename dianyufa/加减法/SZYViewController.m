//
//  ViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/1/3.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "SZYViewController.h"
#import "Calculator.h"
@interface SZYViewController ()

@end

@implementation SZYViewController{
    Calculator *cal;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=UIColor.redColor;
    cal=[[Calculator alloc]init];
    cal.result=8;
    
    [self getdata:^(Calculator *a) {
        self->cal.add(a.result);
    }];
    NSLog(@"%.lf",cal.result);
    cal.mins(12);
    NSLog(@"%.lf",cal.result);
    int (^block)(int num)=^(int num){
        return num *num;
    };
    int result = block(5);

    NSLog(@"result==%@", NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true).firstObject);

}

-(void)getdata:(void(^)(Calculator *a))handle{
    cal.add(2).add(12);
    NSLog(@"%.lf",cal.result);
    handle(cal);
}

@end
