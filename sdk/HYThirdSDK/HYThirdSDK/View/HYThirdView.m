//
//  HYThirdView.m
//  AFNetworking
//
//  Created by Lilu on 2020/6/27.
//

#import "HYThirdView.h"
#import "Masonry.h"

@interface HYThirdView ()
@property (nonatomic, strong) UIView *contentView;
@end


@implementation HYThirdView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupViews];
    }
    
    return self;
}

- (void)setupViews {
    _contentView = [[UIView alloc] init];
    _contentView.backgroundColor = [UIColor redColor];
    [self addSubview:self.contentView];
    
    [self.contentView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
}
@end
