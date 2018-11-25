//
//  HyDemoView.m
//  AFNetworking
//
//  Created by ios on 2018/11/25.
//

#import "HyDemoView.h"
#import "Masonry.h"
#import "UIImage+HyUIKit.h"
#import <HYTipsView.h>

@interface HyDemoView ()
@property (nonatomic, strong) UIImageView *imgView;
@end

@implementation HyDemoView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupViews];
    }
    
    return self;
}

- (void)setupViews {
    _imgView = [[UIImageView alloc] init];
    _imgView.image = [UIImage uiKit_imageNamed:@"tabDiscovery_activity"];
    [self addSubview:_imgView];
    [_imgView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
    }];
    
    HYTipsView *tipView = [HYTipsView initTips:@"这是测试Tips的" fontSize:15 textColor:[UIColor redColor] arrowDirection:HYTipsArrowDirectionDown arrowPointTo:CGPointMake(100, 100) arrowAnchor:0.5];
    [tipView showInView:self];
}
@end
