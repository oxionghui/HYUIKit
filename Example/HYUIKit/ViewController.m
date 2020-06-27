//
//  ViewController.m
//  HYUIKit
//
//  Created by ios on 2018/11/23.
//  Copyright © 2018年 ios. All rights reserved.
//

#import "ViewController.h"
//#import "HyDemoView.h"
#import <HYUIKit/HyDemoView.h>
#import <HYTipView/HYCustomeView.h>


@interface ViewController ()
@property (nonatomic, strong) HyDemoView *demoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupViews];
}

- (void)setupViews {
    /// HYUIKit 组件
    self.view.backgroundColor = [UIColor grayColor];
    _demoView = [[HyDemoView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    _demoView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:_demoView];

    /// HYTipView 组件
    HYCustomeView *customeView = [[HYCustomeView alloc] initWithFrame:CGRectMake(100, 300, 200, 200)];
    customeView.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
    [self.view addSubview:customeView];
}


@end
