//
//  zhengZeViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/4/1.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "zhengZeViewController.h"

@interface zhengZeViewController ()

@end

@implementation zhengZeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
}

/**
 10位以上的英文，数字组成。
 */
- (BOOL)checkPassword:(NSString *) password
{
    NSString *pattern = @"^(?=.*[a-zA-Z])(?=.*[0-9])[^\\u2E80-\\u9FFF\\s]{10,16}$";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES%@",pattern];
    return [pred evaluateWithObject:password];
    
}

- (IBAction)login:(id)sender {
    if ([self checkPassword:self.password.text]) {
        NSLog(@"阔以阔以");
    } else {
        NSLog(@"格式错误");
        
    }
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
