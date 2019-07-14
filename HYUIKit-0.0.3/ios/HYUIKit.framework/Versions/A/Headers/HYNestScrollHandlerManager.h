//
//  HYNestScrollHandlerManager.h
//  AFNetworking
//
//  Created by ios on 2018/11/23.
//

#import <Foundation/Foundation.h>
#import "HYNestScrollHandlerProtocol.h"

//处理UIScrollView嵌套吸顶效果
@interface HYNestScrollHandlerManager : NSObject<HYNestScrollHandlerProtocol>
@property (nonatomic, strong) UIScrollView<DYNestScrollOutSideViewProtocol> *nsOutsideScrollView; //外部容器视图
@property (nonatomic, strong) UIScrollView<DYNestScrollInSideViewProtocol> *nsInsideScrollView;//当前内部容器视图
@property (nonatomic, assign) CGFloat nsStickOffset;//悬停间距

- (void)insideViewDidScroll:(UIScrollView<DYNestScrollInSideViewProtocol> *)scrollView;
- (void)outsideViewDidScroll:(UIScrollView<DYNestScrollOutSideViewProtocol> *)scrollView;
@end
