//
//  GoodsTableViewCell.m
//  zujian1
//
//  Created by 史宗运 on 2019/12/5.
//

#import "GoodsTableViewCell.h"

@implementation GoodsTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if(self=[super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        UIButton *button=[UIButton new];
           button.frame=CGRectMake(10, 10, 50, 50);
           button.backgroundColor=UIColor.redColor;
           [self.contentView addSubview:button];
           [button addTarget:self  action:@selector(jump1) forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"观察" forState:UIControlStateNormal];
        UIButton *button1=[UIButton new];
                  button1.frame=CGRectMake(70, 10, 50, 50);
                  button1.backgroundColor=UIColor.redColor;
                  [self.contentView addSubview:button1];
                  [button1 addTarget:self  action:@selector(jump2) forControlEvents:UIControlEventTouchUpInside];
        [button1 setTitle:@"策略" forState:UIControlStateNormal];
        
        UIButton *button2=[UIButton new];
                         button2.frame=CGRectMake(130, 10, 50, 50);
                         button2.backgroundColor=UIColor.redColor;
                         [self.contentView addSubview:button2];
                         [button2 addTarget:self  action:@selector(jump3) forControlEvents:UIControlEventTouchUpInside];
            [button2 setTitle:@"工厂" forState:UIControlStateNormal];
    }
    return self;
    
}

-(void)jump1 {
    if([self.delegate respondsToSelector:@selector(jump:)]){
        [_delegate jump:self];
    }
}

-(void)jump2 {
    if(self.block){
        self.block(self);
    }
}

-(void)jump3 {
    if([self.delegate respondsToSelector:@selector(factory:)]){
        [self.delegate factory:self];
    }
    
}
@end
