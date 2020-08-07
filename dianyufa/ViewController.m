//
//  ViewController.m
//  Runloop001
//
//  Created by 丁东 on 2020/5/8.
//  Copyright © 2020 丁东. All rights reserved.
//

#import "ViewController.h"
#import "NHThread.h"
@interface ViewController ()
{
    BOOL _finshed;
}
@property(nonatomic,strong)NHThread *thread;


@end

@implementation ViewController

/**
 runloop 的作用:
    1, 线程保活.(最重要的作用,如主线程).
    2, 处理App中的各类事件.(事件响应,手势识别,timer处理,界面刷新).
    3, 节省CPU资源,提高性能.
    4, 线程间的通信.
 */


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self createMainThreadTimer];
    
    [self createSubThreadTimer];
}

//创建主线程timer
-(void)createMainThreadTimer{
    NSTimer *timer = [NSTimer timerWithTimeInterval:1.0
                                             target:self
                                           selector:@selector(mainTimerMethod)
                                           userInfo:nil
                                            repeats:YES];
    
    //获取runloop.
    //NSRunLoop只有两种方法能够获得有用的runloop对象.--currentRunLoop --mainRunLoop
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];
    
    //添加timer到runloop中.
    //NSDefaultRunLoopMode.非UI模式下.
    //UITrackingRunLoopMode.UI模式,例如手势识别,UI动画等
    //NSRunLoopCommonModes. 占位模式,代表同时满足NSDefaultRunLoopMode和UITrackingRunLoopMode
    [runloop addTimer:timer forMode:NSRunLoopCommonModes];
    
    //由于主线程保活,所以他的runloop在ApplicationMain方法中已被开启,会自动从runloop任务队列中获取任务,并执行任务.
}

//创建子线程timer
-(void)createSubThreadTimer{
    
    //创建子线程
    NHThread *thread = [[NHThread alloc]initWithBlock:^{
        ///创建timer
        NSTimer *timer = [NSTimer timerWithTimeInterval:1.0
                                                 target:self
                                               selector:@selector(subTimerMethod)
                                               userInfo:nil
                                                repeats:YES];
        //获取当前子线程的runloop
        //线程的runloop在第一次获取时创建.
        NSRunLoop *runloop = [NSRunLoop currentRunLoop];
        
        //添加timer打牌子线程的runloop
        [runloop addTimer:timer forMode:NSDefaultRunLoopMode];

        //默认情况下,线程的runloop是不会被开启的.需要手动开启.主线程是因为已在ApplicationMain中被开启
        [runloop run];
    }];
    
    [thread start];
}

-(void)mainTimerMethod{
    
    static int a = 0;
    a++;
    NSLog(@"****主线程计时器***  %d",a);
}


-(void)subTimerMethod{
    
    static int b = 0;
    b++;
    NSLog(@"****子线程计时器***  %d",b);
}

@end
