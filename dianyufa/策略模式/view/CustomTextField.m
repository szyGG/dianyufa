//
//  CustomTextField.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField


- (BOOL)isOK
{
    BOOL result = [self.inputTextField inputTextField:self];
    if(!result){
        NSLog(@"输入不合法");
    }
    return result;
        
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
