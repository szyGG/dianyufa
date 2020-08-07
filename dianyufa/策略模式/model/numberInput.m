//
//  numberInput.m
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "numberInput.h"

@implementation numberInput

- (BOOL)inputTextField:(UITextField *)textField{
    if (textField.text.length == 0) {
        return NO;
    }
    NSString *regex = @"[0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:textField.text]) {
        return YES;
    }
    return NO;
}

@end
