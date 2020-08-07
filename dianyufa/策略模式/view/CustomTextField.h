//
//  CustomTextField.h
//  dianyufa
//
//  Created by 史宗运 on 2020/2/26.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputFather.h"
NS_ASSUME_NONNULL_BEGIN

@interface CustomTextField : UITextField

@property (nonatomic ,strong) InputFather * inputTextField;

- (BOOL) isOK;

@end

NS_ASSUME_NONNULL_END
