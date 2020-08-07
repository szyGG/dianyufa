//
//  letterInput.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "letterInput.h"

@implementation letterInput

- (BOOL)inputTextField:(UITextField *)textField{
    if (textField.text.length == 0) return NO;
    NSString *regex =@"[a-zA-Z]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pred evaluateWithObject:textField.text];
}

@end
