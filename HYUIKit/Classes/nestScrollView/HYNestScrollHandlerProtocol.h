//
//  HYNestScrollHandlerProtocol.h
//  Pods
//
//  Created by ios on 2018/11/23.
//

#ifndef HYNestScrollHandlerProtocol_h
#define HYNestScrollHandlerProtocol_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//外层嵌套scrollview协议
@protocol DYNestScrollOutSideViewProtocol<NSObject>
@property (nonatomic, assign) BOOL canScroll; //是否可以滑动
@end


//内层嵌套scrollview协议
@protocol DYNestScrollInSideViewProtocol<NSObject>
@property (nonatomic, assign) BOOL canScroll;
@end

//嵌套处理协议
@protocol DYNestScrollHandlerProtocol<NSObject>
@property (nonatomic, strong) UIScrollView<DYNestScrollOutSideViewProtocol> *nsOutsideScrollView; //外部容器视图
@property (nonatomic, strong) UIScrollView<DYNestScrollInSideViewProtocol> *nsInsideScrollView;//当前内部容器视图
@property (nonatomic, assign) CGFloat nsStickOffset;//悬停间距
- (void)insideViewDidScroll:(UIScrollView<DYNestScrollInSideViewProtocol> *)scrollView;
- (void)outsideViewDidScroll:(UIScrollView<DYNestScrollOutSideViewProtocol> *)scrollView;
@end

@protocol DYNestScrollRegisterHandlerProtocol<NSObject>
- (void)setNestScrollHandler:(id<DYNestScrollHandlerProtocol>)nestManager;
@end

#endif /* HYNestScrollHandlerProtocol_h */
