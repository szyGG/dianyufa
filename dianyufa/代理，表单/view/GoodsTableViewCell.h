//
//  GoodsTableViewCell.h
//  zujian1
//
//  Created by 史宗运 on 2019/12/5.
//

#import <UIKit/UIKit.h>
#import "GoodsTableViewCellDelegate.h"
@class GoodsTableViewCell;

typedef void(^JumpBlock)(GoodsTableViewCell * cell);


@interface GoodsTableViewCell : UITableViewCell

@property (nonatomic , weak) id<GoodsTableViewCellDelegate> delegate;
@property (nonatomic,copy) JumpBlock block;

@end


