//
//  AbstractViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/3/6.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "AbstractViewController.h"
#import "OCAbstractClass.h"
#import "SonAbstractClass.h"
@interface AbstractViewController ()

@end

@implementation AbstractViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
//    OCAbstractClass * model = [[OCAbstractClass alloc] init];
  //  SonAbstractClass * model = [[SonAbstractClass alloc]init];
//    NSLog(@"ViewController = %@ , 地址 = %p", self, &self);
//
//   // NSString *myName = @"halfrost";
//   // NSString *myName1 = @"halfrost11111";
//    id cls = [SonAbstractClass class];
//    NSLog(@"Sark class = %@ 地址 = %p", cls, &cls);
//
//    void *obj = &cls;
//    NSLog(@"Void *obj = %@ 地址 = %p", obj,&obj);
//
//    [(__bridge id)obj speak];
//
//    SonAbstractClass *sark = [[SonAbstractClass alloc]init];
//    NSLog(@"Sark instance = %@ 地址 = %p",sark,&sark);
//
//    [sark speak];
//    dispatch_group_t group = dispatch_group_create();
//    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
//    dispatch_group_enter(group);
//    dispatch_group_async(group, queue, ^{
//         NSLog(@"1");
//        dispatch_group_leave(group);
//    });
//
// dispatch_group_enter(group);
//    dispatch_group_async(group, queue, ^{
//         NSLog(@"2");
//        dispatch_group_leave(group);
//    });
//
//    dispatch_group_enter(group);
//    dispatch_group_async(group, queue, ^{
//         NSLog(@"3");
//        dispatch_group_leave(group);
//    });
//
//    dispatch_group_enter(group);
//    dispatch_group_async(group, queue, ^{
//         NSLog(@"4");
//        dispatch_group_leave(group);
//    });
//
//    dispatch_group_enter(group);
//    dispatch_group_async(group, queue, ^{
//         NSLog(@"5");
//        dispatch_group_leave(group);
//    });
//
//    dispatch_group_notify(group, dispatch_get_main_queue(), ^{
//
//            NSLog(@"ok");
//
//    });
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
