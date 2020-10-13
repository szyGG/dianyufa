//
//  BaseTableViewController+title.m
//  dianyufa
//
//  Created by 史宗运 on 2020/10/13.
//  Copyright © 2020 史宗运. All rights reserved.
//

#import "BaseTableViewController+title.h"
#import <objc/runtime.h>

@implementation BaseTableViewController (title)

- (NSString *)bigTitle {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setBigTitle:(NSString *)bigTitle {
    objc_setAssociatedObject(self, @selector(bigTitle), bigTitle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSInteger)numTitle {
    return [objc_getAssociatedObject(self, _cmd) integerValue];
}

- (void)setNumTitle:(NSInteger)numTitle {
    objc_setAssociatedObject(self, @selector(numTitle), @(numTitle), OBJC_ASSOCIATION_ASSIGN);
}

@end
