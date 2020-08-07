//
//  BezierViewController.m
//  dianyufa
//
//  Created by 史宗运 on 2020/8/5.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "BezierViewController.h"
#import "BezierView.h"
@interface BezierViewController ()

@end

@implementation BezierViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    BezierView *view = [[BezierView alloc] initWithFrame: CGRectMake(0, 100, ScreenWidth, Screenheight)];
    view.backgroundColor = UIColor.whiteColor;
    [self.view addSubview:view];
}


@end
