//
//  ViewController.m
//  HYUIKit
//
//  Created by ios on 2018/11/23.
//  Copyright © 2018年 ios. All rights reserved.
//

#import "ViewController.h"
#import "HyDemoView.h"


@interface ViewController ()
@property (nonatomic, strong) HyDemoView *demoView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor grayColor];
    _demoView = [[HyDemoView alloc] initWithFrame:CGRectMake(100, 200, 200, 200)];
    _demoView.backgroundColor = [UIColor redColor];
    [self.view addSubview:_demoView];
}


@end
