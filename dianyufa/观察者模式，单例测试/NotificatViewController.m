//
//  NotificatViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "NotificatViewController.h"
#import "SZYShareManage.h"
@interface NotificatViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation NotificatViewController{
    NSInteger i;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [SZYShareManage shareManger].jilu = @"da";
    NSLog(@"%@",[SZYShareManage shareManger].jilu);
    i = 0;
    [_label addObserver:self forKeyPath:@"text" options:NSKeyValueObservingOptionNew || NSKeyValueChangeOldKey context:nil];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)notificat:(id)sender {
    [[NSNotificationCenter defaultCenter]postNotificationName:@"tongzhi" object:nil];
    
}


- (IBAction)kvo:(id)sender {
    _label.text = @"别动我啊";
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"text"]) {
        i += 1;
        NSLog(@"别搞，动我%ld次了",(long)i);
    }
}

- (void)dealloc{
    [self.label removeObserver:self forKeyPath:@"text"];
    NSLog(@"走你");
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
