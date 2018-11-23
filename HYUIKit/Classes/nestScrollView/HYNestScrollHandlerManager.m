//
//  HYNestScrollHandlerManager.m
//  AFNetworking
//
//  Created by ios on 2018/11/23.
//

#import "HYNestScrollHandlerManager.h"

@implementation HYNestScrollHandlerManager
//内层scrollView滑动回调
- (void)insideViewDidScroll:(UIScrollView<DYNestScrollInSideViewProtocol> *)scrollView {
    self.nsInsideScrollView = scrollView;
    
    if (!self.nsInsideScrollView.canScroll) {
        [scrollView setContentOffset:CGPointZero];
    }
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY <= 0) {
        self.nsOutsideScrollView.canScroll = YES;
        self.nsInsideScrollView.canScroll = NO;
    }
}

//外层scrollView滑动回调
- (void)outsideViewDidScroll:(UIScrollView<DYNestScrollOutSideViewProtocol> *)scrollView {
    self.nsOutsideScrollView = scrollView;
    
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY >= self.nsStickOffset) {
        scrollView.contentOffset = CGPointMake(0, self.nsStickOffset);
        self.nsOutsideScrollView.canScroll = NO;
        self.nsInsideScrollView.canScroll = YES;
    }
    else {
        if (!self.nsOutsideScrollView.canScroll) {
            scrollView.contentOffset = CGPointMake(0, self.nsStickOffset);
        }
        else {
            self.nsInsideScrollView.canScroll = NO;
        }
    }
}

@end
