//
//  HYTipsView
//  xxxx
//
//  Created by xxxx on 2017/11/22.
//  Copyright © 2017年 xxxx. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, HYTipsArrowDirection) {
    HYTipsArrowDirectionUp,
    HYTipsArrowDirectionLeft,
    HYTipsArrowDirectionDown,
    HYTipsArrowDirectionRight,
};

@interface HYTipsView : UIView
//这两个变量，只有需要改变背景图 和 箭头样式时才需要设置，否则如果不设置时，使用默认图片了
//@property (nonatomic, strong) UIImage *bgImage;
//@property (nonatomic, strong) UIImage *arrowImage;

/**brief 文本tips
 @param tipText 文本内容
 @param fontSize 文本字体大小
 @param textColor 文本颜色
 @param direction 箭头方向,为HYTipsArrowDirection
 @param arrowPointTo 箭头尖角位置(坐标相对于tipView的superView)
 @param arrowAnchor 箭头尖角在所在边的锚点(0~1),如在边的中点为0.5
 
 使用：
 HYTipsView
HYTipsView *tipView = [HYTipsView
HYTipsView initTips:@"这是测试Tips的" fontSize:15 textColor:[UIColor redColor] arrowDirection:HYTipsArrowDirectionDown arrowPointTo:CGPointMake(100, 100) arrowAnchor:0.5];
 [tipView showInView:superView];
 **/
+ (HYTipsView *)initTips:(NSString *)tipText
                fontSize:(CGFloat)fontSize
               textColor:(UIColor *)textColor
          arrowDirection:(HYTipsArrowDirection)direction
            arrowPointTo:(CGPoint)arrowPointTo
             arrowAnchor:(CGFloat)arrowAnchor;

- (void)showInView:(UIView *)superView;
@end
