//
//  ViewController.h
//  dianyufa
//
//  Created by 史宗运 on 2020/1/3.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NSString * (^block) (NSString *a);

@interface SZYViewController : UIViewController

@property (nonatomic , copy) block your;

@end

