//
//  HYRecordSDK.m
//  HYThirdSDK
//
//  Created by Lilu on 2020/6/27.
//  Copyright © 2020 Oxh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HYThirdSDK.h"
#import "HYThirdView.h"

@implementation HYRecordSDK

- (instancetype)init {
    if (self = [super init]) {
        [self setupViews];
    }
    
    return self;
}

- (void)setupViews {
    HYThirdView *tView = [[HYThirdView alloc] init];
    
}
@end
