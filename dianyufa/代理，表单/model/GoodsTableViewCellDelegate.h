//
//  GoodsTableViewCellDelegate.h
//  dianyufa
//
//  Created by 史宗运 on 2020/2/27.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import <Foundation/Foundation.h>
@class GoodsTableViewCell;
NS_ASSUME_NONNULL_BEGIN

@protocol GoodsTableViewCellDelegate <NSObject>

- (void) jump:(GoodsTableViewCell *)cell;

- (void) factory:(GoodsTableViewCell *)cell;

@end

NS_ASSUME_NONNULL_END
