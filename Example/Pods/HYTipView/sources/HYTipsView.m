//
//  HYTipsView.m
//  xxxx
//
//  Created by xxxx on 2017/11/22.
//  Copyright © 2017年 xxxx. All rights reserved.
//

#import "HYTipsView.h"

static const CGFloat kTextSpacing = 6;

@interface HYTipsView ()
@property (nonatomic, copy) NSString *tipText;
@property (nonatomic, assign) CGFloat fontSize;
@property (nonatomic, strong) UIColor *textColor;
@property (nonatomic, assign) HYTipsArrowDirection arrowDirection;
@property (nonatomic, assign) CGPoint arrowPointTo;
@property (nonatomic, assign) CGFloat arrowAnchor;

@property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIImageView *arrowImageView;
@property (nonatomic, strong) UILabel *textLabel;
@end

@implementation HYTipsView

+ (HYTipsView *)initTips:(NSString *)tipText
                fontSize:(CGFloat)fontSize
               textColor:(UIColor *)textColor
          arrowDirection:(HYTipsArrowDirection)direction
            arrowPointTo:(CGPoint)arrowPointTo
             arrowAnchor:(CGFloat)arrowAnchor {
    HYTipsView *tipView = [[HYTipsView alloc] initTips:tipText fontSize:fontSize textColor:textColor arrowDirection:direction arrowPointTo:arrowPointTo arrowAnchor:arrowAnchor];
    return tipView;
}

- (HYTipsView *)initTips:(NSString *)tipText
                fontSize:(CGFloat)fontSize
               textColor:(UIColor *)textColor
          arrowDirection:(HYTipsArrowDirection)direction
            arrowPointTo:(CGPoint)arrowPointTo
             arrowAnchor:(CGFloat)arrowAnchor {
    if (self = [super initWithFrame:CGRectZero]) {
        _tipText = tipText;
        _fontSize = fontSize;
        _textColor = textColor;
        _arrowDirection = direction;
        _arrowPointTo = arrowPointTo;
        _arrowAnchor = arrowAnchor;
        
        [self configUI];
    }
    
    return self;
}

- (void)configUI {
    self.backgroundColor = [UIColor whiteColor];
    
    _bgView = [[UIView alloc] init];
    _bgView.layer.cornerRadius = 6;
    _bgView.backgroundColor = [UIColor colorWithRed:255.0f/255.0f green:238.0f/255.0f blue:121.0f/255.0f alpha:1]; //UIColorFromRGB(0xffee79);
    _bgView.layer.borderColor = [UIColor colorWithRed:107.0f/255.0f green:70.0f/255.0f blue:25.0f/255.0f alpha:1].CGColor;//UIColorFromRGB(0x6b4619).CGColor;
    _bgView.layer.borderWidth = 1;
    _bgView.layer.shadowOffset = CGSizeMake(2, 4);
    _bgView.layer.shadowOpacity = 1;
    _bgView.layer.shadowColor = [UIColor blackColor].CGColor; //UIColorFromRGB(0x000000).CGColor;//UIColorFromRGB(0x999999).CGColor;
    _bgView.layer.shadowRadius = 12;
    [self addSubview:_bgView];
    
    _textLabel = [[UILabel alloc] init];
    _textLabel.numberOfLines = 0;
    //_textLabel.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.5];
    _textLabel.font = [UIFont systemFontOfSize:self.fontSize];
    _textLabel.textColor = self.textColor;
    _textLabel.text = self.tipText;
    _textLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_textLabel];
    CGSize textSize = [_textLabel sizeThatFits:CGSizeZero];
    textSize = CGSizeMake(textSize.width + 5, textSize.height + 3);//稍微扩张下
    
    _arrowImageView = [[UIImageView alloc] init];
    _arrowImageView.image = [UIImage imageNamed:@"tips_arrow"];
    [self addSubview:_arrowImageView];
    
    //目前还没有包括尖头的大小
    CGSize contentSize = CGSizeMake(textSize.width + 2 * kTextSpacing, textSize.height + 2 * kTextSpacing);
    
    CGFloat kArrowUpWidth = self.arrowImageView.image.size.width;
    CGFloat kArrowUpHeight = self.arrowImageView.image.size.height;
    
    CGFloat tipWidth = contentSize.width;
    CGFloat tipHeight = contentSize.height;
    
    CGRect selfFrame;
    CGRect contentFrame;
    CGRect arrowFrame;
    
    switch (self.arrowDirection) {
        case HYTipsArrowDirectionUp:
        {
            self.arrowImageView.transform = CGAffineTransformIdentity;
            CGFloat offsetX = self.arrowPointTo.x - self.arrowAnchor * tipWidth;
            selfFrame = CGRectMake(offsetX, self.arrowPointTo.y, tipWidth, tipHeight + kArrowUpHeight);
            //上调一个像素是为了让箭头盖住bgView的边框
            contentFrame = CGRectMake(0, kArrowUpHeight - 1, tipWidth, tipHeight);
            arrowFrame = CGRectMake(self.arrowAnchor * tipWidth - kArrowUpWidth * 0.5, 0, kArrowUpWidth, kArrowUpHeight);
        }
            break;
        case HYTipsArrowDirectionLeft:
        {
            self.arrowImageView.transform = CGAffineTransformMakeRotation(-M_PI_2);
            CGFloat offsetY = self.arrowPointTo.y - self.arrowAnchor * tipHeight;
            selfFrame = CGRectMake(self.arrowPointTo.x, offsetY, tipWidth + kArrowUpHeight, tipHeight);
            contentFrame = CGRectMake(kArrowUpHeight - 1, 0, tipWidth, tipHeight);
            arrowFrame = CGRectMake(0, self.arrowAnchor * tipHeight - kArrowUpWidth * 0.5, kArrowUpHeight, kArrowUpWidth);
        }
            break;
        case HYTipsArrowDirectionDown:
        {
            self.arrowImageView.transform = CGAffineTransformMakeRotation(M_PI);
            CGFloat offsetX = self.arrowPointTo.x - self.arrowAnchor * tipWidth;
            selfFrame = CGRectMake(offsetX, self.arrowPointTo.y - kArrowUpHeight - tipHeight, tipWidth, tipHeight + kArrowUpHeight);
            contentFrame = CGRectMake(0, 1, tipWidth, tipHeight);
            arrowFrame = CGRectMake(self.arrowAnchor * tipWidth - kArrowUpWidth * 0.5, tipHeight, kArrowUpWidth, kArrowUpHeight);
        }
            break;
        case HYTipsArrowDirectionRight:
        {
            self.arrowImageView.transform = CGAffineTransformMakeRotation(M_PI_2);
            CGFloat offsetY = self.arrowPointTo.y - self.arrowAnchor * tipHeight;
            selfFrame = CGRectMake(self.arrowPointTo.x - kArrowUpHeight - tipWidth, offsetY, tipWidth + kArrowUpHeight, tipHeight);
            contentFrame = CGRectMake(1, 0, tipWidth, tipHeight);
            arrowFrame = CGRectMake(tipWidth, self.arrowAnchor * tipHeight - kArrowUpWidth * 0.5, kArrowUpHeight, kArrowUpWidth);
        }
            break;
            
        default:
            break;
    }
    
    selfFrame.size.width += 10;
    selfFrame.size.height += 10;
    self.frame = selfFrame;
    self.bgView.frame = contentFrame;
    self.textLabel.frame = contentFrame;
    self.arrowImageView.frame = arrowFrame;
}

- (void)showInView:(UIView *)superView {
    [superView addSubview:self];
}
@end

