//
//  BezierView.m
//  dianyufa
//
//  Created by 史宗运 on 2020/8/5.
//  Copyright © 2020 史宗运. All rights reserved.
//


#define kLineW ScreenWidth-10*2
#define kMargin 10
#define MARGIN            30   // 坐标轴与画布间距
#define Y_EVERY_MARGIN    20   // y轴每一个值的间隔数

#import "BezierView.h"

@implementation BezierView


- (void)drawRect:(CGRect)rect {
    [[UIColor orangeColor] set];
    
    
    
    
    // 11.绘制三次贝塞尔曲线
    UIBezierPath *path10 = [UIBezierPath bezierPath];
    [path10 moveToPoint:CGPointMake(50, 550)];
    [path10 addCurveToPoint:CGPointMake(300, 550) controlPoint1:CGPointMake(150, 450) controlPoint2:CGPointMake(250, 600)];
    [path10 stroke];
    
}



@end
