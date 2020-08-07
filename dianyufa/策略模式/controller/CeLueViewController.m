//
//  CeLueViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//
//策略模式注重过程，通过传入的参数选择需要的行为算法
#import "CeLueViewController.h"
#import "CustomTextField.h"
#import "numberInput.h"
#import "letterInput.h"
@interface CeLueViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet CustomTextField *letterTextField;
@property (weak, nonatomic) IBOutlet CustomTextField *numbertextField;

@end

@implementation CeLueViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.letterTextField.delegate = self;
    self.numbertextField.delegate = self;
    self.letterTextField.inputTextField = [letterInput new];
    self.numbertextField.inputTextField = [numberInput new];
    // Do any additional setup after loading the view from its nib.
}

- (void)textFieldDidEndEditing:(UITextField *)textField{
    if ([textField isKindOfClass: [CustomTextField class]])
    {
        [(CustomTextField *)textField isOK];
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
